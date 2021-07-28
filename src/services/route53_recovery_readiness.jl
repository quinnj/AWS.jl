# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: route53_recovery_readiness
using AWS.Compat
using AWS.UUIDs

"""
    create_cell(cell_name)
    create_cell(cell_name, params::Dict{String,<:Any})

Creates a new Cell.

# Arguments
- `cell_name`: The name of the Cell to create

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"cells"`: A list of Cell arns contained within this Cell (for use in nested Cells, e.g.
  regions within which AZs)
- `"tags"`:
"""
create_cell(cellName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("POST", "/cells", Dict{String, Any}("cellName"=>cellName); aws_config=aws_config)
create_cell(cellName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("POST", "/cells", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("cellName"=>cellName), params)); aws_config=aws_config)

"""
    create_cross_account_authorization(cross_account_authorization)
    create_cross_account_authorization(cross_account_authorization, params::Dict{String,<:Any})

Create a new cross account readiness authorization.

# Arguments
- `cross_account_authorization`: The cross account authorization

"""
create_cross_account_authorization(crossAccountAuthorization; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("POST", "/crossaccountauthorizations", Dict{String, Any}("crossAccountAuthorization"=>crossAccountAuthorization); aws_config=aws_config)
create_cross_account_authorization(crossAccountAuthorization, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("POST", "/crossaccountauthorizations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("crossAccountAuthorization"=>crossAccountAuthorization), params)); aws_config=aws_config)

"""
    create_readiness_check(readiness_check_name, resource_set_name)
    create_readiness_check(readiness_check_name, resource_set_name, params::Dict{String,<:Any})

Creates a new Readiness Check.

# Arguments
- `readiness_check_name`: The name of the ReadinessCheck to create
- `resource_set_name`: The name of the ResourceSet to check

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"tags"`:
"""
create_readiness_check(readinessCheckName, resourceSetName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("POST", "/readinesschecks", Dict{String, Any}("readinessCheckName"=>readinessCheckName, "resourceSetName"=>resourceSetName); aws_config=aws_config)
create_readiness_check(readinessCheckName, resourceSetName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("POST", "/readinesschecks", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("readinessCheckName"=>readinessCheckName, "resourceSetName"=>resourceSetName), params)); aws_config=aws_config)

"""
    create_recovery_group(recovery_group_name)
    create_recovery_group(recovery_group_name, params::Dict{String,<:Any})

Creates a new Recovery Group.

# Arguments
- `recovery_group_name`: The name of the RecoveryGroup to create

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"cells"`: A list of Cell arns
- `"tags"`:
"""
create_recovery_group(recoveryGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("POST", "/recoverygroups", Dict{String, Any}("recoveryGroupName"=>recoveryGroupName); aws_config=aws_config)
create_recovery_group(recoveryGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("POST", "/recoverygroups", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("recoveryGroupName"=>recoveryGroupName), params)); aws_config=aws_config)

"""
    create_resource_set(resource_set_name, resource_set_type, resources)
    create_resource_set(resource_set_name, resource_set_type, resources, params::Dict{String,<:Any})

Creates a new Resource Set.

# Arguments
- `resource_set_name`: The name of the ResourceSet to create
- `resource_set_type`: AWS Resource type of the resources in the ResourceSet
- `resources`: A list of Resource objects

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"tags"`:
"""
create_resource_set(resourceSetName, resourceSetType, resources; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("POST", "/resourcesets", Dict{String, Any}("resourceSetName"=>resourceSetName, "resourceSetType"=>resourceSetType, "resources"=>resources); aws_config=aws_config)
create_resource_set(resourceSetName, resourceSetType, resources, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("POST", "/resourcesets", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceSetName"=>resourceSetName, "resourceSetType"=>resourceSetType, "resources"=>resources), params)); aws_config=aws_config)

"""
    delete_cell(cell_name)
    delete_cell(cell_name, params::Dict{String,<:Any})

Deletes an existing Cell.

# Arguments
- `cell_name`: The Cell to delete

"""
delete_cell(cellName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("DELETE", "/cells/$(cellName)"; aws_config=aws_config)
delete_cell(cellName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("DELETE", "/cells/$(cellName)", params; aws_config=aws_config)

"""
    delete_cross_account_authorization(cross_account_authorization)
    delete_cross_account_authorization(cross_account_authorization, params::Dict{String,<:Any})

Delete cross account readiness authorization

# Arguments
- `cross_account_authorization`: The cross account authorization

"""
delete_cross_account_authorization(crossAccountAuthorization; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("DELETE", "/crossaccountauthorizations/$(crossAccountAuthorization)"; aws_config=aws_config)
delete_cross_account_authorization(crossAccountAuthorization, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("DELETE", "/crossaccountauthorizations/$(crossAccountAuthorization)", params; aws_config=aws_config)

"""
    delete_readiness_check(readiness_check_name)
    delete_readiness_check(readiness_check_name, params::Dict{String,<:Any})

Deletes an existing Readiness Check.

# Arguments
- `readiness_check_name`: The ReadinessCheck to delete

"""
delete_readiness_check(readinessCheckName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("DELETE", "/readinesschecks/$(readinessCheckName)"; aws_config=aws_config)
delete_readiness_check(readinessCheckName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("DELETE", "/readinesschecks/$(readinessCheckName)", params; aws_config=aws_config)

"""
    delete_recovery_group(recovery_group_name)
    delete_recovery_group(recovery_group_name, params::Dict{String,<:Any})

Deletes an existing Recovery Group.

# Arguments
- `recovery_group_name`: The RecoveryGroup to delete

"""
delete_recovery_group(recoveryGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("DELETE", "/recoverygroups/$(recoveryGroupName)"; aws_config=aws_config)
delete_recovery_group(recoveryGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("DELETE", "/recoverygroups/$(recoveryGroupName)", params; aws_config=aws_config)

"""
    delete_resource_set(resource_set_name)
    delete_resource_set(resource_set_name, params::Dict{String,<:Any})

Deletes an existing Resource Set.

# Arguments
- `resource_set_name`: The ResourceSet to delete

"""
delete_resource_set(resourceSetName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("DELETE", "/resourcesets/$(resourceSetName)"; aws_config=aws_config)
delete_resource_set(resourceSetName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("DELETE", "/resourcesets/$(resourceSetName)", params; aws_config=aws_config)

"""
    get_architecture_recommendations(recovery_group_name)
    get_architecture_recommendations(recovery_group_name, params::Dict{String,<:Any})

Returns a collection of recommendations to improve resilliance and readiness check quality
for a Recovery Group.

# Arguments
- `recovery_group_name`: Name of RecoveryGroup (top level resource) to be analyzed.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token that can be used to resume pagination from the end of the
  collection.
"""
get_architecture_recommendations(recoveryGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/recoverygroups/$(recoveryGroupName)/architectureRecommendations"; aws_config=aws_config)
get_architecture_recommendations(recoveryGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/recoverygroups/$(recoveryGroupName)/architectureRecommendations", params; aws_config=aws_config)

"""
    get_cell(cell_name)
    get_cell(cell_name, params::Dict{String,<:Any})

Returns information about a Cell.

# Arguments
- `cell_name`: The Cell to get

"""
get_cell(cellName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/cells/$(cellName)"; aws_config=aws_config)
get_cell(cellName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/cells/$(cellName)", params; aws_config=aws_config)

"""
    get_cell_readiness_summary(cell_name)
    get_cell_readiness_summary(cell_name, params::Dict{String,<:Any})

Returns information about readiness of a Cell.

# Arguments
- `cell_name`: The name of the Cell

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
"""
get_cell_readiness_summary(cellName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/cellreadiness/$(cellName)"; aws_config=aws_config)
get_cell_readiness_summary(cellName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/cellreadiness/$(cellName)", params; aws_config=aws_config)

"""
    get_readiness_check(readiness_check_name)
    get_readiness_check(readiness_check_name, params::Dict{String,<:Any})

Returns information about a ReadinessCheck.

# Arguments
- `readiness_check_name`: The ReadinessCheck to get

"""
get_readiness_check(readinessCheckName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/readinesschecks/$(readinessCheckName)"; aws_config=aws_config)
get_readiness_check(readinessCheckName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/readinesschecks/$(readinessCheckName)", params; aws_config=aws_config)

"""
    get_readiness_check_resource_status(readiness_check_name, resource_identifier)
    get_readiness_check_resource_status(readiness_check_name, resource_identifier, params::Dict{String,<:Any})

Returns detailed information about the status of an individual resource within a Readiness
Check's Resource Set.

# Arguments
- `readiness_check_name`: The ReadinessCheck to get
- `resource_identifier`: The resource ARN or component Id to get

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
"""
get_readiness_check_resource_status(readinessCheckName, resourceIdentifier; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/readinesschecks/$(readinessCheckName)/resource/$(resourceIdentifier)/status"; aws_config=aws_config)
get_readiness_check_resource_status(readinessCheckName, resourceIdentifier, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/readinesschecks/$(readinessCheckName)/resource/$(resourceIdentifier)/status", params; aws_config=aws_config)

"""
    get_readiness_check_status(readiness_check_name)
    get_readiness_check_status(readiness_check_name, params::Dict{String,<:Any})

Returns information about the status of a Readiness Check.

# Arguments
- `readiness_check_name`: The ReadinessCheck to get

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
"""
get_readiness_check_status(readinessCheckName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/readinesschecks/$(readinessCheckName)/status"; aws_config=aws_config)
get_readiness_check_status(readinessCheckName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/readinesschecks/$(readinessCheckName)/status", params; aws_config=aws_config)

"""
    get_recovery_group(recovery_group_name)
    get_recovery_group(recovery_group_name, params::Dict{String,<:Any})

Returns information about a Recovery Group.

# Arguments
- `recovery_group_name`: The RecoveryGroup to get

"""
get_recovery_group(recoveryGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/recoverygroups/$(recoveryGroupName)"; aws_config=aws_config)
get_recovery_group(recoveryGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/recoverygroups/$(recoveryGroupName)", params; aws_config=aws_config)

"""
    get_recovery_group_readiness_summary(recovery_group_name)
    get_recovery_group_readiness_summary(recovery_group_name, params::Dict{String,<:Any})

Returns information about a Recovery Group.

# Arguments
- `recovery_group_name`: The name of the RecoveryGroup

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
"""
get_recovery_group_readiness_summary(recoveryGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/recoverygroupreadiness/$(recoveryGroupName)"; aws_config=aws_config)
get_recovery_group_readiness_summary(recoveryGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/recoverygroupreadiness/$(recoveryGroupName)", params; aws_config=aws_config)

"""
    get_resource_set(resource_set_name)
    get_resource_set(resource_set_name, params::Dict{String,<:Any})

Returns information about a Resource Set.

# Arguments
- `resource_set_name`: The ResourceSet to get

"""
get_resource_set(resourceSetName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/resourcesets/$(resourceSetName)"; aws_config=aws_config)
get_resource_set(resourceSetName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/resourcesets/$(resourceSetName)", params; aws_config=aws_config)

"""
    list_cells()
    list_cells(params::Dict{String,<:Any})

Returns a collection of Cells.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
"""
list_cells(; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/cells"; aws_config=aws_config)
list_cells(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/cells", params; aws_config=aws_config)

"""
    list_cross_account_authorizations()
    list_cross_account_authorizations(params::Dict{String,<:Any})

Returns a collection of cross account readiness authorizations.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
"""
list_cross_account_authorizations(; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/crossaccountauthorizations"; aws_config=aws_config)
list_cross_account_authorizations(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/crossaccountauthorizations", params; aws_config=aws_config)

"""
    list_readiness_checks()
    list_readiness_checks(params::Dict{String,<:Any})

Returns a collection of Readiness Checks.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
"""
list_readiness_checks(; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/readinesschecks"; aws_config=aws_config)
list_readiness_checks(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/readinesschecks", params; aws_config=aws_config)

"""
    list_recovery_groups()
    list_recovery_groups(params::Dict{String,<:Any})

Returns a collection of Recovery Groups.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
"""
list_recovery_groups(; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/recoverygroups"; aws_config=aws_config)
list_recovery_groups(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/recoverygroups", params; aws_config=aws_config)

"""
    list_resource_sets()
    list_resource_sets(params::Dict{String,<:Any})

Returns a collection of Resource Sets.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
"""
list_resource_sets(; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/resourcesets"; aws_config=aws_config)
list_resource_sets(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/resourcesets", params; aws_config=aws_config)

"""
    list_rules()
    list_rules(params::Dict{String,<:Any})

Returns a collection of rules that are applied as part of Readiness Checks.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
- `"resourceType"`: Filter parameter which specifies the rules to return given a resource
  type.
"""
list_rules(; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/rules"; aws_config=aws_config)
list_rules(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/rules", params; aws_config=aws_config)

"""
    list_tags_for_resources(resource-arn)
    list_tags_for_resources(resource-arn, params::Dict{String,<:Any})

Returns a list of the tags assigned to the specified resource.

# Arguments
- `resource-arn`: The Amazon Resource Name (ARN) for the resource. You can get this from
  the response to any request to the resource.

"""
list_tags_for_resources(resource_arn; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/tags/$(resource-arn)"; aws_config=aws_config)
list_tags_for_resources(resource_arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("GET", "/tags/$(resource-arn)", params; aws_config=aws_config)

"""
    tag_resource(resource-arn, tags)
    tag_resource(resource-arn, tags, params::Dict{String,<:Any})

Adds tags to the specified resource. You can specify one or more tags to add.

# Arguments
- `resource-arn`: The Amazon Resource Name (ARN) for the resource. You can get this from
  the response to any request to the resource.
- `tags`:

"""
tag_resource(resource_arn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("POST", "/tags/$(resource-arn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resource_arn, tags, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("POST", "/tags/$(resource-arn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), params)); aws_config=aws_config)

"""
    untag_resource(resource-arn, tag_keys)
    untag_resource(resource-arn, tag_keys, params::Dict{String,<:Any})

Removes tags from the specified resource. You can specify one or more tags to remove.

# Arguments
- `resource-arn`: The Amazon Resource Name (ARN) for the resource. You can get this from
  the response to any request to the resource.
- `tag_keys`: A comma-separated list of the tag keys to remove from the resource.

"""
untag_resource(resource_arn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("DELETE", "/tags/$(resource-arn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resource_arn, tagKeys, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("DELETE", "/tags/$(resource-arn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), params)); aws_config=aws_config)

"""
    update_cell(cell_name, cells)
    update_cell(cell_name, cells, params::Dict{String,<:Any})

Updates an existing Cell.

# Arguments
- `cell_name`: The Cell to update
- `cells`: A list of Cell arns, completely replaces previous list

"""
update_cell(cellName, cells; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("PUT", "/cells/$(cellName)", Dict{String, Any}("cells"=>cells); aws_config=aws_config)
update_cell(cellName, cells, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("PUT", "/cells/$(cellName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("cells"=>cells), params)); aws_config=aws_config)

"""
    update_readiness_check(readiness_check_name, resource_set_name)
    update_readiness_check(readiness_check_name, resource_set_name, params::Dict{String,<:Any})

Updates an exisiting Readiness Check.

# Arguments
- `readiness_check_name`: The ReadinessCheck to update
- `resource_set_name`: The name of the ResourceSet to check

"""
update_readiness_check(readinessCheckName, resourceSetName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("PUT", "/readinesschecks/$(readinessCheckName)", Dict{String, Any}("resourceSetName"=>resourceSetName); aws_config=aws_config)
update_readiness_check(readinessCheckName, resourceSetName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("PUT", "/readinesschecks/$(readinessCheckName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceSetName"=>resourceSetName), params)); aws_config=aws_config)

"""
    update_recovery_group(cells, recovery_group_name)
    update_recovery_group(cells, recovery_group_name, params::Dict{String,<:Any})

Updates an existing Recovery Group.

# Arguments
- `cells`: A list of Cell arns, completely replaces previous list
- `recovery_group_name`: The RecoveryGroup to update

"""
update_recovery_group(cells, recoveryGroupName; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("PUT", "/recoverygroups/$(recoveryGroupName)", Dict{String, Any}("cells"=>cells); aws_config=aws_config)
update_recovery_group(cells, recoveryGroupName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("PUT", "/recoverygroups/$(recoveryGroupName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("cells"=>cells), params)); aws_config=aws_config)

"""
    update_resource_set(resource_set_name, resource_set_type, resources)
    update_resource_set(resource_set_name, resource_set_type, resources, params::Dict{String,<:Any})

Updates an existing Resource Set.

# Arguments
- `resource_set_name`: The ResourceSet to update
- `resource_set_type`: AWS Resource Type of the resources in the ResourceSet
- `resources`: A list of Resource objects

"""
update_resource_set(resourceSetName, resourceSetType, resources; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("PUT", "/resourcesets/$(resourceSetName)", Dict{String, Any}("resourceSetType"=>resourceSetType, "resources"=>resources); aws_config=aws_config)
update_resource_set(resourceSetName, resourceSetType, resources, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = route53_recovery_readiness("PUT", "/resourcesets/$(resourceSetName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceSetType"=>resourceSetType, "resources"=>resources), params)); aws_config=aws_config)
