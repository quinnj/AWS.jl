using HTTP.MessageRequest: body_was_streamed

"""
    DownloadsBackend <: AWS.AbstractBackend

This backend uses the Downloads.jl stdlib to use libcurl
as an HTTP client to connect to the AWS REST API.

It has two fields,

- `downloader::Union{Nothing,Downloads.Downloader}`: if `nothing`, use a global Downloader object. Otherwise, uses the given Downloader.
- `create_new_downloader::Any`: a zero-argument function which returns a new Downloader object to use.
  Defaults to creating a new global downloader. This is called when a transient error occurs.

Downloads.jl tends to perform better under concurrent operation than HTTP.jl,
particularly with `@async` / `asyncmap`. As of March 2022, threading (e.g. `@spawn` or `@threads`) with Downloads.jl is broken on all releases of Julia ([Downloads.jl#110](https://github.com/JuliaLang/Downloads.jl/issues/110)), and there are still reported issues on the upcoming
1.7.3 and 1.8 releases ([Downloads.jl#182](https://github.com/JuliaLang/Downloads.jl/issues/182])).
"""
struct DownloadsBackend <: AWS.AbstractBackend
    downloader::Union{Nothing,Downloads.Downloader}
    create_new_downloader::Any
end

DownloadsBackend() = DownloadsBackend(nothing, () -> get_downloader(; fresh=true))
DownloadsBackend(D::Downloader) = DownloadsBackend(D, () -> get_downloader(; fresh=true))

const AWS_DOWNLOADER = Ref{Union{Nothing,Downloader}}(nothing)
const AWS_DOWNLOAD_LOCK = ReentrantLock()

# Here we mimic Download.jl's own setup for using a global downloader.
# We do this to have our own downloader (separate from Downloads.jl's global downloader)
# because we add a hook to avoid redirects in order to try to match the HTTPBackend's
# implementation, and we don't want to mutate the global downloader from Downloads.jl.
# https://github.com/JuliaLang/Downloads.jl/blob/84e948c02b8a0625552a764bf90f7d2ee97c949c/src/Downloads.jl#L293-L301
function get_downloader(; fresh=false)
    downloader = nothing
    lock(AWS_DOWNLOAD_LOCK) do
        yield() # let other downloads finish
        downloader isa Downloader && return nothing
        while true
            downloader = AWS_DOWNLOADER[]
            !fresh && downloader isa Downloader && return nothing
            D = Downloader()
            D.easy_hook =
                (easy, info) -> Curl.setopt(easy, Curl.CURLOPT_FOLLOWLOCATION, false)
            AWS_DOWNLOADER[] = D
        end
    end
    return downloader
end

# https://github.com/JuliaWeb/HTTP.jl/blob/2a03ca76376162ffc3423ba7f15bd6d966edff9b/src/MessageRequest.jl#L84-L85
body_length(x::AbstractVector{UInt8}) = length(x)
body_length(x::AbstractString) = sizeof(x)

read_body(x::IOBuffer) = take!(x)
function read_body(x::IO)
    close(x)
    return read(x)
end

function _http_request(backend::DownloadsBackend, request::Request, response_stream::IO; transient_retry=false)
    # HTTP.jl sets this header automatically.
    request.headers["Content-Length"] = string(body_length(request.content))

    # We pass an `input` only when we have content we wish to send.
    input = !isempty(request.content) ? IOBuffer(request.content) : nothing

    if transient_retry
        downloader = backend.create_new_downloader()
    else
        downloader = @something(backend.downloader, get_downloader())
    end

    # set the hook so that we don't follow redirects. Only
    # need to do this on per-request downloaders, because we
    # set our global one with this hook already.
    if backend.downloader !== nothing && downloader.easy_hook === nothing
        downloader.easy_hook =
            (easy, info) -> Curl.setopt(easy, Curl.CURLOPT_FOLLOWLOCATION, false)
    end

    local buffer
    local response

    get_response =
        () -> begin
            # Use a sacrificial I/O stream so that we only write the `response_stream` once
            # even with multiple attempts.
            buffer = Base.BufferStream()

            # Rewind the input on each attempt otherwise every subsequent attempt will send an
            # empty payload.
            input !== nothing && seekstart(input)

            r = @mock Downloads.request(
                request.url;
                input=input,
                # Compatibility with Downloads.jl versions below v1.5.2
                # See: https://github.com/JuliaLang/Downloads.jl/issues/131
                output=request.request_method != "HEAD" ? buffer : nothing,
                method=request.request_method,
                headers=request.headers,
                verbose=false,
                throw=true,
                downloader=downloader,
            )

            response = _http_response(request, r; throw=true)
            # We'll rely on lexical scoping; `buffer` and `response`
            # are bindings in the outer scope, so we don't need to return here.
            return nothing
        end

    check =
        (s, e) -> begin
            if is_transient_error(e)
                # We want a new one, ref https://github.com/JuliaCloud/AWS.jl/issues/552
                downloader = backend.create_new_downloader()
                return true
            end
            return (isa(e, HTTP.StatusError) && AWS._http_status(e) >= 500) ||
                   isa(e, Downloads.RequestError)
        end

    get_response_with_retry = retry(
        get_response; check=check, delays=AWSExponentialBackoff(; max_attempts=4)
    )
    try
        get_response_with_retry()
    finally
        close(buffer)

        # Transfer the contents of the `BufferStream` into `response_stream` variable.
        write(response_stream, buffer)
    end

    return AWS.Response(response, response_stream)
end

function _http_response(req::Request, res::Downloads.Response; throw::Bool=true)
    response = HTTP.Response(
        res.status, res.headers; body=body_was_streamed, request=nothing
    )

    if throw && HTTP.iserror(response)
        target = HTTP.resource(HTTP.URI(req.url))
        e = HTTP.StatusError(res.status, req.request_method, target, response)
        Base.throw(e)
    end

    return response
end
