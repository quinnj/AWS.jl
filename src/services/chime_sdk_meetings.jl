# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: chime_sdk_meetings
using AWS.Compat
using AWS.UUIDs

"""
    batch_create_attendee(attendees, meeting_id)
    batch_create_attendee(attendees, meeting_id, params::Dict{String,<:Any})

Creates up to 100 attendees for an active Amazon Chime SDK meeting. For more information
about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer
Guide.

# Arguments
- `attendees`: The attendee information, including attendees' IDs and join tokens.
- `meeting_id`: The Amazon Chime SDK ID of the meeting to which you're adding attendees.

"""
function batch_create_attendee(
    Attendees, MeetingId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return chime_sdk_meetings(
        "POST",
        "/meetings/$(MeetingId)/attendees?operation=batch-create",
        Dict{String,Any}("Attendees" => Attendees);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function batch_create_attendee(
    Attendees,
    MeetingId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return chime_sdk_meetings(
        "POST",
        "/meetings/$(MeetingId)/attendees?operation=batch-create",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("Attendees" => Attendees), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_attendee(external_user_id, meeting_id)
    create_attendee(external_user_id, meeting_id, params::Dict{String,<:Any})

 Creates a new attendee for an active Amazon Chime SDK meeting. For more information about
the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

# Arguments
- `external_user_id`: The Amazon Chime SDK external user ID. An idempotency token. Links
  the attendee to an identity managed by a builder application.
- `meeting_id`: The unique ID of the meeting.

"""
function create_attendee(
    ExternalUserId, MeetingId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return chime_sdk_meetings(
        "POST",
        "/meetings/$(MeetingId)/attendees",
        Dict{String,Any}("ExternalUserId" => ExternalUserId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_attendee(
    ExternalUserId,
    MeetingId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return chime_sdk_meetings(
        "POST",
        "/meetings/$(MeetingId)/attendees",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("ExternalUserId" => ExternalUserId), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_meeting(client_request_token, external_meeting_id, media_region)
    create_meeting(client_request_token, external_meeting_id, media_region, params::Dict{String,<:Any})

Creates a new Amazon Chime SDK meeting in the specified media Region with no initial
attendees. For more information about specifying media Regions, see Amazon Chime SDK Media
Regions in the Amazon Chime Developer Guide. For more information about the Amazon Chime
SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

# Arguments
- `client_request_token`: The unique identifier for the client request. Use a different
  token for different meetings.
- `external_meeting_id`: The external meeting ID.
- `media_region`: The Region in which to create the meeting.  Available values: af-south-1,
  ap-northeast-1, ap-northeast-2, ap-south-1, ap-southeast-1, ap-southeast-2, ca-central-1,
  eu-central-1, eu-north-1, eu-south-1, eu-west-1, eu-west-2, eu-west-3, sa-east-1,
  us-east-1, us-east-2, us-west-1, us-west-2.  Available values in AWS GovCloud (US) Regions:
  us-gov-east-1, us-gov-west-1.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MeetingFeatures"`: Lists the audio and video features enabled for a meeting, such as
  echo reduction.
- `"MeetingHostId"`: Reserved.
- `"NotificationsConfiguration"`: The configuration for resource targets to receive
  notifications when meeting and attendee events occur.
- `"PrimaryMeetingId"`: When specified, replicates the media from the primary meeting to
  the new meeting.
"""
function create_meeting(
    ClientRequestToken,
    ExternalMeetingId,
    MediaRegion;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return chime_sdk_meetings(
        "POST",
        "/meetings",
        Dict{String,Any}(
            "ClientRequestToken" => ClientRequestToken,
            "ExternalMeetingId" => ExternalMeetingId,
            "MediaRegion" => MediaRegion,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_meeting(
    ClientRequestToken,
    ExternalMeetingId,
    MediaRegion,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return chime_sdk_meetings(
        "POST",
        "/meetings",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ClientRequestToken" => ClientRequestToken,
                    "ExternalMeetingId" => ExternalMeetingId,
                    "MediaRegion" => MediaRegion,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_meeting_with_attendees(attendees, client_request_token, external_meeting_id, media_region)
    create_meeting_with_attendees(attendees, client_request_token, external_meeting_id, media_region, params::Dict{String,<:Any})

 Creates a new Amazon Chime SDK meeting in the specified media Region, with attendees. For
more information about specifying media Regions, see Amazon Chime SDK Media Regions in the
Amazon Chime Developer Guide. For more information about the Amazon Chime SDK, see Using
the Amazon Chime SDK in the Amazon Chime Developer Guide.

# Arguments
- `attendees`: The attendee information, including attendees' IDs and join tokens.
- `client_request_token`: The unique identifier for the client request. Use a different
  token for different meetings.
- `external_meeting_id`: The external meeting ID.
- `media_region`: The Region in which to create the meeting.  Available values: af-south-1,
  ap-northeast-1, ap-northeast-2, ap-south-1, ap-southeast-1, ap-southeast-2, ca-central-1,
  eu-central-1, eu-north-1, eu-south-1, eu-west-1, eu-west-2, eu-west-3, sa-east-1,
  us-east-1, us-east-2, us-west-1, us-west-2.  Available values in AWS GovCloud (US) Regions:
  us-gov-east-1, us-gov-west-1.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MeetingFeatures"`: Lists the audio and video features enabled for a meeting, such as
  echo reduction.
- `"MeetingHostId"`: Reserved.
- `"NotificationsConfiguration"`: The configuration for resource targets to receive
  notifications when meeting and attendee events occur.
- `"PrimaryMeetingId"`: When specified, replicates the media from the primary meeting to
  the new meeting.
"""
function create_meeting_with_attendees(
    Attendees,
    ClientRequestToken,
    ExternalMeetingId,
    MediaRegion;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return chime_sdk_meetings(
        "POST",
        "/meetings?operation=create-attendees",
        Dict{String,Any}(
            "Attendees" => Attendees,
            "ClientRequestToken" => ClientRequestToken,
            "ExternalMeetingId" => ExternalMeetingId,
            "MediaRegion" => MediaRegion,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_meeting_with_attendees(
    Attendees,
    ClientRequestToken,
    ExternalMeetingId,
    MediaRegion,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return chime_sdk_meetings(
        "POST",
        "/meetings?operation=create-attendees",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Attendees" => Attendees,
                    "ClientRequestToken" => ClientRequestToken,
                    "ExternalMeetingId" => ExternalMeetingId,
                    "MediaRegion" => MediaRegion,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_attendee(attendee_id, meeting_id)
    delete_attendee(attendee_id, meeting_id, params::Dict{String,<:Any})

Deletes an attendee from the specified Amazon Chime SDK meeting and deletes their
JoinToken. Attendees are automatically deleted when a Amazon Chime SDK meeting is deleted.
For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the
Amazon Chime Developer Guide.

# Arguments
- `attendee_id`: The Amazon Chime SDK attendee ID.
- `meeting_id`: The Amazon Chime SDK meeting ID.

"""
function delete_attendee(
    AttendeeId, MeetingId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return chime_sdk_meetings(
        "DELETE",
        "/meetings/$(MeetingId)/attendees/$(AttendeeId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_attendee(
    AttendeeId,
    MeetingId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return chime_sdk_meetings(
        "DELETE",
        "/meetings/$(MeetingId)/attendees/$(AttendeeId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_meeting(meeting_id)
    delete_meeting(meeting_id, params::Dict{String,<:Any})

Deletes the specified Amazon Chime SDK meeting. The operation deletes all attendees,
disconnects all clients, and prevents new clients from joining the meeting. For more
information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime
Developer Guide.

# Arguments
- `meeting_id`: The Amazon Chime SDK meeting ID.

"""
function delete_meeting(MeetingId; aws_config::AbstractAWSConfig=global_aws_config())
    return chime_sdk_meetings(
        "DELETE",
        "/meetings/$(MeetingId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_meeting(
    MeetingId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return chime_sdk_meetings(
        "DELETE",
        "/meetings/$(MeetingId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_attendee(attendee_id, meeting_id)
    get_attendee(attendee_id, meeting_id, params::Dict{String,<:Any})

 Gets the Amazon Chime SDK attendee details for a specified meeting ID and attendee ID. For
more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon
Chime Developer Guide.

# Arguments
- `attendee_id`: The Amazon Chime SDK attendee ID.
- `meeting_id`: The Amazon Chime SDK meeting ID.

"""
function get_attendee(
    AttendeeId, MeetingId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return chime_sdk_meetings(
        "GET",
        "/meetings/$(MeetingId)/attendees/$(AttendeeId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_attendee(
    AttendeeId,
    MeetingId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return chime_sdk_meetings(
        "GET",
        "/meetings/$(MeetingId)/attendees/$(AttendeeId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_meeting(meeting_id)
    get_meeting(meeting_id, params::Dict{String,<:Any})

Gets the Amazon Chime SDK meeting details for the specified meeting ID. For more
information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime
Developer Guide.

# Arguments
- `meeting_id`: The Amazon Chime SDK meeting ID.

"""
function get_meeting(MeetingId; aws_config::AbstractAWSConfig=global_aws_config())
    return chime_sdk_meetings(
        "GET",
        "/meetings/$(MeetingId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_meeting(
    MeetingId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return chime_sdk_meetings(
        "GET",
        "/meetings/$(MeetingId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_attendees(meeting_id)
    list_attendees(meeting_id, params::Dict{String,<:Any})

 Lists the attendees for the specified Amazon Chime SDK meeting. For more information about
the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.

# Arguments
- `meeting_id`: The Amazon Chime SDK meeting ID.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"max-results"`: The maximum number of results to return in a single call.
- `"next-token"`: The token to use to retrieve the next page of results.
"""
function list_attendees(MeetingId; aws_config::AbstractAWSConfig=global_aws_config())
    return chime_sdk_meetings(
        "GET",
        "/meetings/$(MeetingId)/attendees";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_attendees(
    MeetingId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return chime_sdk_meetings(
        "GET",
        "/meetings/$(MeetingId)/attendees",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    start_meeting_transcription(meeting_id, transcription_configuration)
    start_meeting_transcription(meeting_id, transcription_configuration, params::Dict{String,<:Any})

Starts transcription for the specified meetingId.

# Arguments
- `meeting_id`: The unique ID of the meeting being transcribed.
- `transcription_configuration`: The configuration for the current transcription operation.
  Must contain EngineTranscribeSettings or EngineTranscribeMedicalSettings.

"""
function start_meeting_transcription(
    MeetingId, TranscriptionConfiguration; aws_config::AbstractAWSConfig=global_aws_config()
)
    return chime_sdk_meetings(
        "POST",
        "/meetings/$(MeetingId)/transcription?operation=start",
        Dict{String,Any}("TranscriptionConfiguration" => TranscriptionConfiguration);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function start_meeting_transcription(
    MeetingId,
    TranscriptionConfiguration,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return chime_sdk_meetings(
        "POST",
        "/meetings/$(MeetingId)/transcription?operation=start",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "TranscriptionConfiguration" => TranscriptionConfiguration
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    stop_meeting_transcription(meeting_id)
    stop_meeting_transcription(meeting_id, params::Dict{String,<:Any})

Stops transcription for the specified meetingId.

# Arguments
- `meeting_id`: The unique ID of the meeting for which you stop transcription.

"""
function stop_meeting_transcription(
    MeetingId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return chime_sdk_meetings(
        "POST",
        "/meetings/$(MeetingId)/transcription?operation=stop";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function stop_meeting_transcription(
    MeetingId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return chime_sdk_meetings(
        "POST",
        "/meetings/$(MeetingId)/transcription?operation=stop",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
