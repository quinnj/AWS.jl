# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: amplifyuibuilder
using AWS.Compat
using AWS.UUIDs

"""
    create_component(app_id, component_to_create, environment_name)
    create_component(app_id, component_to_create, environment_name, params::Dict{String,<:Any})

Creates a new component for an Amplify app.

# Arguments
- `app_id`: The unique ID of the Amplify app to associate with the component.
- `component_to_create`: Represents the configuration of the component to create.
- `environment_name`: The name of the backend environment that is a part of the Amplify app.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: The unique client token.
"""
function create_component(
    appId,
    componentToCreate,
    environmentName;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "POST",
        "/app/$(appId)/environment/$(environmentName)/components",
        Dict{String,Any}(
            "componentToCreate" => componentToCreate, "clientToken" => string(uuid4())
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_component(
    appId,
    componentToCreate,
    environmentName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "POST",
        "/app/$(appId)/environment/$(environmentName)/components",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "componentToCreate" => componentToCreate,
                    "clientToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_theme(app_id, environment_name, theme_to_create)
    create_theme(app_id, environment_name, theme_to_create, params::Dict{String,<:Any})

Creates a theme to apply to the components in an Amplify app.

# Arguments
- `app_id`: The unique ID of the Amplify app associated with the theme.
- `environment_name`: The name of the backend environment that is a part of the Amplify app.
- `theme_to_create`: Represents the configuration of the theme to create.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: The unique client token.
"""
function create_theme(
    appId, environmentName, themeToCreate; aws_config::AbstractAWSConfig=global_aws_config()
)
    return amplifyuibuilder(
        "POST",
        "/app/$(appId)/environment/$(environmentName)/themes",
        Dict{String,Any}(
            "themeToCreate" => themeToCreate, "clientToken" => string(uuid4())
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_theme(
    appId,
    environmentName,
    themeToCreate,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "POST",
        "/app/$(appId)/environment/$(environmentName)/themes",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "themeToCreate" => themeToCreate, "clientToken" => string(uuid4())
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_component(app_id, environment_name, id)
    delete_component(app_id, environment_name, id, params::Dict{String,<:Any})

Deletes a component from an Amplify app.

# Arguments
- `app_id`: The unique ID of the Amplify app associated with the component to delete.
- `environment_name`: The name of the backend environment that is a part of the Amplify app.
- `id`: The unique ID of the component to delete.

"""
function delete_component(
    appId, environmentName, id; aws_config::AbstractAWSConfig=global_aws_config()
)
    return amplifyuibuilder(
        "DELETE",
        "/app/$(appId)/environment/$(environmentName)/components/$(id)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_component(
    appId,
    environmentName,
    id,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "DELETE",
        "/app/$(appId)/environment/$(environmentName)/components/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_theme(app_id, environment_name, id)
    delete_theme(app_id, environment_name, id, params::Dict{String,<:Any})

Deletes a theme from an Amplify app.

# Arguments
- `app_id`: The unique ID of the Amplify app associated with the theme to delete.
- `environment_name`: The name of the backend environment that is a part of the Amplify app.
- `id`: The unique ID of the theme to delete.

"""
function delete_theme(
    appId, environmentName, id; aws_config::AbstractAWSConfig=global_aws_config()
)
    return amplifyuibuilder(
        "DELETE",
        "/app/$(appId)/environment/$(environmentName)/themes/$(id)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_theme(
    appId,
    environmentName,
    id,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "DELETE",
        "/app/$(appId)/environment/$(environmentName)/themes/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    exchange_code_for_token(provider, request)
    exchange_code_for_token(provider, request, params::Dict{String,<:Any})

Exchanges an access code for a token.

# Arguments
- `provider`: The third-party provider for the token. The only valid value is figma.
- `request`: Describes the configuration of the request.

"""
function exchange_code_for_token(
    provider, request; aws_config::AbstractAWSConfig=global_aws_config()
)
    return amplifyuibuilder(
        "POST",
        "/tokens/$(provider)",
        Dict{String,Any}("request" => request);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function exchange_code_for_token(
    provider,
    request,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "POST",
        "/tokens/$(provider)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("request" => request), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    export_components(app_id, environment_name)
    export_components(app_id, environment_name, params::Dict{String,<:Any})

Exports component configurations to code that is ready to integrate into an Amplify app.

# Arguments
- `app_id`: The unique ID of the Amplify app to export components to.
- `environment_name`: The name of the backend environment that is a part of the Amplify app.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"nextToken"`: The token to request the next page of results.
"""
function export_components(
    appId, environmentName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return amplifyuibuilder(
        "GET",
        "/export/app/$(appId)/environment/$(environmentName)/components";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function export_components(
    appId,
    environmentName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "GET",
        "/export/app/$(appId)/environment/$(environmentName)/components",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    export_themes(app_id, environment_name)
    export_themes(app_id, environment_name, params::Dict{String,<:Any})

Exports theme configurations to code that is ready to integrate into an Amplify app.

# Arguments
- `app_id`: The unique ID of the Amplify app to export the themes to.
- `environment_name`: The name of the backend environment that is part of the Amplify app.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"nextToken"`: The token to request the next page of results.
"""
function export_themes(
    appId, environmentName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return amplifyuibuilder(
        "GET",
        "/export/app/$(appId)/environment/$(environmentName)/themes";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function export_themes(
    appId,
    environmentName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "GET",
        "/export/app/$(appId)/environment/$(environmentName)/themes",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_component(app_id, environment_name, id)
    get_component(app_id, environment_name, id, params::Dict{String,<:Any})

Returns an existing component for an Amplify app.

# Arguments
- `app_id`: The unique ID of the Amplify app.
- `environment_name`: The name of the backend environment that is part of the Amplify app.
- `id`: The unique ID of the component.

"""
function get_component(
    appId, environmentName, id; aws_config::AbstractAWSConfig=global_aws_config()
)
    return amplifyuibuilder(
        "GET",
        "/app/$(appId)/environment/$(environmentName)/components/$(id)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_component(
    appId,
    environmentName,
    id,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "GET",
        "/app/$(appId)/environment/$(environmentName)/components/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_theme(app_id, environment_name, id)
    get_theme(app_id, environment_name, id, params::Dict{String,<:Any})

Returns an existing theme for an Amplify app.

# Arguments
- `app_id`: The unique ID of the Amplify app.
- `environment_name`: The name of the backend environment that is part of the Amplify app.
- `id`: The unique ID for the theme.

"""
function get_theme(
    appId, environmentName, id; aws_config::AbstractAWSConfig=global_aws_config()
)
    return amplifyuibuilder(
        "GET",
        "/app/$(appId)/environment/$(environmentName)/themes/$(id)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_theme(
    appId,
    environmentName,
    id,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "GET",
        "/app/$(appId)/environment/$(environmentName)/themes/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_components(app_id, environment_name)
    list_components(app_id, environment_name, params::Dict{String,<:Any})

Retrieves a list of components for a specified Amplify app and backend environment.

# Arguments
- `app_id`: The unique ID for the Amplify app.
- `environment_name`: The name of the backend environment that is a part of the Amplify app.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of components to retrieve.
- `"nextToken"`: The token to request the next page of results.
"""
function list_components(
    appId, environmentName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return amplifyuibuilder(
        "GET",
        "/app/$(appId)/environment/$(environmentName)/components";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_components(
    appId,
    environmentName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "GET",
        "/app/$(appId)/environment/$(environmentName)/components",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_themes(app_id, environment_name)
    list_themes(app_id, environment_name, params::Dict{String,<:Any})

Retrieves a list of themes for a specified Amplify app and backend environment.

# Arguments
- `app_id`: The unique ID for the Amplify app.
- `environment_name`: The name of the backend environment that is a part of the Amplify app.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of theme results to return in the response.
- `"nextToken"`: The token to request the next page of results.
"""
function list_themes(
    appId, environmentName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return amplifyuibuilder(
        "GET",
        "/app/$(appId)/environment/$(environmentName)/themes";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_themes(
    appId,
    environmentName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "GET",
        "/app/$(appId)/environment/$(environmentName)/themes",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    refresh_token(provider, refresh_token_body)
    refresh_token(provider, refresh_token_body, params::Dict{String,<:Any})

Refreshes a previously issued access token that might have expired.

# Arguments
- `provider`: The third-party provider for the token. The only valid value is figma.
- `refresh_token_body`: Information about the refresh token request.

"""
function refresh_token(
    provider, refreshTokenBody; aws_config::AbstractAWSConfig=global_aws_config()
)
    return amplifyuibuilder(
        "POST",
        "/tokens/$(provider)/refresh",
        Dict{String,Any}("refreshTokenBody" => refreshTokenBody);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function refresh_token(
    provider,
    refreshTokenBody,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "POST",
        "/tokens/$(provider)/refresh",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("refreshTokenBody" => refreshTokenBody), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_component(app_id, environment_name, id, updated_component)
    update_component(app_id, environment_name, id, updated_component, params::Dict{String,<:Any})

Updates an existing component.

# Arguments
- `app_id`: The unique ID for the Amplify app.
- `environment_name`: The name of the backend environment that is part of the Amplify app.
- `id`: The unique ID for the component.
- `updated_component`: The configuration of the updated component.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: The unique client token.
"""
function update_component(
    appId,
    environmentName,
    id,
    updatedComponent;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "PATCH",
        "/app/$(appId)/environment/$(environmentName)/components/$(id)",
        Dict{String,Any}(
            "updatedComponent" => updatedComponent, "clientToken" => string(uuid4())
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_component(
    appId,
    environmentName,
    id,
    updatedComponent,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "PATCH",
        "/app/$(appId)/environment/$(environmentName)/components/$(id)",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "updatedComponent" => updatedComponent, "clientToken" => string(uuid4())
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_theme(app_id, environment_name, id, updated_theme)
    update_theme(app_id, environment_name, id, updated_theme, params::Dict{String,<:Any})

Updates an existing theme.

# Arguments
- `app_id`: The unique ID for the Amplify app.
- `environment_name`: The name of the backend environment that is part of the Amplify app.
- `id`: The unique ID for the theme.
- `updated_theme`: The configuration of the updated theme.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: The unique client token.
"""
function update_theme(
    appId,
    environmentName,
    id,
    updatedTheme;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "PATCH",
        "/app/$(appId)/environment/$(environmentName)/themes/$(id)",
        Dict{String,Any}("updatedTheme" => updatedTheme, "clientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_theme(
    appId,
    environmentName,
    id,
    updatedTheme,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return amplifyuibuilder(
        "PATCH",
        "/app/$(appId)/environment/$(environmentName)/themes/$(id)",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "updatedTheme" => updatedTheme, "clientToken" => string(uuid4())
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
