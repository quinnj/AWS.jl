# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: emr_containers
using AWS.Compat
using AWS.UUIDs

"""
    CancelJobRun()

Cancels a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or
SparkSQL query, that you submit to Amazon EMR on EKS.

# Required Parameters
- `jobRunId`: The ID of the job run to cancel.
- `virtualClusterId`: The ID of the virtual cluster for which the job run will be canceled.

"""
cancel_job_run(jobRunId, virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("DELETE", "/virtualclusters/$(virtualClusterId)/jobruns/$(jobRunId)"; aws_config=aws_config)
cancel_job_run(jobRunId, virtualClusterId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("DELETE", "/virtualclusters/$(virtualClusterId)/jobruns/$(jobRunId)", args; aws_config=aws_config)

"""
    CreateManagedEndpoint()

Creates a managed endpoint. A managed endpoint is a gateway that connects EMR Studio to
Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.

# Required Parameters
- `certificateArn`: The certificate ARN of the managed endpoint.
- `clientToken`: The client idempotency token for this create call.
- `executionRoleArn`: The ARN of the execution role.
- `name`: The name of the managed endpoint.
- `releaseLabel`: The Amazon EMR release version.
- `type`: The type of the managed endpoint.
- `virtualClusterId`: The ID of the virtual cluster for which a managed endpoint is created.

# Optional Parameters
- `configurationOverrides`: The configuration settings that will be used to override
  existing configurations.
- `tags`: The tags of the managed endpoint.
"""
create_managed_endpoint(certificateArn, clientToken, executionRoleArn, name, releaseLabel, type, virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("POST", "/virtualclusters/$(virtualClusterId)/endpoints", Dict{String, Any}("certificateArn"=>certificateArn, "clientToken"=>clientToken, "executionRoleArn"=>executionRoleArn, "name"=>name, "releaseLabel"=>releaseLabel, "type"=>type); aws_config=aws_config)
create_managed_endpoint(certificateArn, clientToken, executionRoleArn, name, releaseLabel, type, virtualClusterId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("POST", "/virtualclusters/$(virtualClusterId)/endpoints", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("certificateArn"=>certificateArn, "clientToken"=>clientToken, "executionRoleArn"=>executionRoleArn, "name"=>name, "releaseLabel"=>releaseLabel, "type"=>type), args)); aws_config=aws_config)

"""
    CreateVirtualCluster()

Creates a virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You
can create, describe, list and delete virtual clusters. They do not consume any additional
resource in your system. A single virtual cluster maps to a single Kubernetes namespace.
Given this relationship, you can model virtual clusters the same way you model Kubernetes
namespaces to meet your requirements.

# Required Parameters
- `clientToken`: The client token of the virtual cluster.
- `containerProvider`: The container provider of the virtual cluster.
- `name`: The specified name of the virtual cluster.

# Optional Parameters
- `tags`: The tags assigned to the virtual cluster.
"""
create_virtual_cluster(clientToken, containerProvider, name; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("POST", "/virtualclusters", Dict{String, Any}("clientToken"=>clientToken, "containerProvider"=>containerProvider, "name"=>name); aws_config=aws_config)
create_virtual_cluster(clientToken, containerProvider, name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("POST", "/virtualclusters", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("clientToken"=>clientToken, "containerProvider"=>containerProvider, "name"=>name), args)); aws_config=aws_config)

"""
    DeleteManagedEndpoint()

Deletes a managed endpoint. A managed endpoint is a gateway that connects EMR Studio to
Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.

# Required Parameters
- `endpointId`: The ID of the managed endpoint.
- `virtualClusterId`: The ID of the endpoint's virtual cluster.

"""
delete_managed_endpoint(endpointId, virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("DELETE", "/virtualclusters/$(virtualClusterId)/endpoints/$(endpointId)"; aws_config=aws_config)
delete_managed_endpoint(endpointId, virtualClusterId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("DELETE", "/virtualclusters/$(virtualClusterId)/endpoints/$(endpointId)", args; aws_config=aws_config)

"""
    DeleteVirtualCluster()

Deletes a virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You
can create, describe, list and delete virtual clusters. They do not consume any additional
resource in your system. A single virtual cluster maps to a single Kubernetes namespace.
Given this relationship, you can model virtual clusters the same way you model Kubernetes
namespaces to meet your requirements.

# Required Parameters
- `virtualClusterId`: The ID of the virtual cluster that will be deleted.

"""
delete_virtual_cluster(virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("DELETE", "/virtualclusters/$(virtualClusterId)"; aws_config=aws_config)
delete_virtual_cluster(virtualClusterId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("DELETE", "/virtualclusters/$(virtualClusterId)", args; aws_config=aws_config)

"""
    DescribeJobRun()

Displays detailed information about a job run. A job run is a unit of work, such as a Spark
jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.

# Required Parameters
- `jobRunId`: The ID of the job run request.
- `virtualClusterId`: The ID of the virtual cluster for which the job run is submitted.

"""
describe_job_run(jobRunId, virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("GET", "/virtualclusters/$(virtualClusterId)/jobruns/$(jobRunId)"; aws_config=aws_config)
describe_job_run(jobRunId, virtualClusterId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("GET", "/virtualclusters/$(virtualClusterId)/jobruns/$(jobRunId)", args; aws_config=aws_config)

"""
    DescribeManagedEndpoint()

Displays detailed information about a managed endpoint. A managed endpoint is a gateway
that connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your
virtual cluster.

# Required Parameters
- `endpointId`: This output displays ID of the managed endpoint.
- `virtualClusterId`: The ID of the endpoint's virtual cluster.

"""
describe_managed_endpoint(endpointId, virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("GET", "/virtualclusters/$(virtualClusterId)/endpoints/$(endpointId)"; aws_config=aws_config)
describe_managed_endpoint(endpointId, virtualClusterId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("GET", "/virtualclusters/$(virtualClusterId)/endpoints/$(endpointId)", args; aws_config=aws_config)

"""
    DescribeVirtualCluster()

Displays detailed information about a specified virtual cluster. Virtual cluster is a
managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual
clusters. They do not consume any additional resource in your system. A single virtual
cluster maps to a single Kubernetes namespace. Given this relationship, you can model
virtual clusters the same way you model Kubernetes namespaces to meet your requirements.

# Required Parameters
- `virtualClusterId`: The ID of the virtual cluster that will be described.

"""
describe_virtual_cluster(virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("GET", "/virtualclusters/$(virtualClusterId)"; aws_config=aws_config)
describe_virtual_cluster(virtualClusterId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("GET", "/virtualclusters/$(virtualClusterId)", args; aws_config=aws_config)

"""
    ListJobRuns()

Lists job runs based on a set of parameters. A job run is a unit of work, such as a Spark
jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.

# Required Parameters
- `virtualClusterId`: The ID of the virtual cluster for which to list the job run.

# Optional Parameters
- `createdAfter`: The date and time after which the job runs were submitted.
- `createdBefore`: The date and time before which the job runs were submitted.
- `maxResults`: The maximum number of job runs that can be listed.
- `name`: The name of the job run.
- `nextToken`: The token for the next set of job runs to return.
- `states`: The states of the job run.
"""
list_job_runs(virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("GET", "/virtualclusters/$(virtualClusterId)/jobruns"; aws_config=aws_config)
list_job_runs(virtualClusterId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("GET", "/virtualclusters/$(virtualClusterId)/jobruns", args; aws_config=aws_config)

"""
    ListManagedEndpoints()

Lists managed endpoints based on a set of parameters. A managed endpoint is a gateway that
connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your
virtual cluster.

# Required Parameters
- `virtualClusterId`: The ID of the virtual cluster.

# Optional Parameters
- `createdAfter`:  The date and time after which the endpoints are created.
- `createdBefore`: The date and time before which the endpoints are created.
- `maxResults`: The maximum number of managed endpoints that can be listed.
- `nextToken`:  The token for the next set of managed endpoints to return.
- `states`: The states of the managed endpoints.
- `types`: The types of the managed endpoints.
"""
list_managed_endpoints(virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("GET", "/virtualclusters/$(virtualClusterId)/endpoints"; aws_config=aws_config)
list_managed_endpoints(virtualClusterId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("GET", "/virtualclusters/$(virtualClusterId)/endpoints", args; aws_config=aws_config)

"""
    ListTagsForResource()

Lists the tags assigned to the resources.

# Required Parameters
- `resourceArn`: The ARN of tagged resources.

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("GET", "/tags/$(resourceArn)", args; aws_config=aws_config)

"""
    ListVirtualClusters()

Lists information about the specified virtual cluster. Virtual cluster is a managed entity
on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do
not consume any additional resource in your system. A single virtual cluster maps to a
single Kubernetes namespace. Given this relationship, you can model virtual clusters the
same way you model Kubernetes namespaces to meet your requirements.

# Optional Parameters
- `containerProviderId`: The container provider ID of the virtual cluster.
- `containerProviderType`: The container provider type of the virtual cluster. EKS is the
  only supported type as of now.
- `createdAfter`: The date and time after which the virtual clusters are created.
- `createdBefore`: The date and time before which the virtual clusters are created.
- `maxResults`: The maximum number of virtual clusters that can be listed.
- `nextToken`: The token for the next set of virtual clusters to return.
- `states`: The states of the requested virtual clusters.
"""
list_virtual_clusters(; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("GET", "/virtualclusters"; aws_config=aws_config)
list_virtual_clusters(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("GET", "/virtualclusters", args; aws_config=aws_config)

"""
    StartJobRun()

Starts a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or
SparkSQL query, that you submit to Amazon EMR on EKS.

# Required Parameters
- `clientToken`: The client idempotency token of the job run request.
- `executionRoleArn`: The execution role ARN for the job run.
- `jobDriver`: The job driver for the job run.
- `releaseLabel`: The Amazon EMR release version to use for the job run.
- `virtualClusterId`: The virtual cluster ID for which the job run request is submitted.

# Optional Parameters
- `configurationOverrides`: The configuration overrides for the job run.
- `name`: The name of the job run.
- `tags`: The tags assigned to job runs.
"""
start_job_run(clientToken, executionRoleArn, jobDriver, releaseLabel, virtualClusterId; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("POST", "/virtualclusters/$(virtualClusterId)/jobruns", Dict{String, Any}("clientToken"=>clientToken, "executionRoleArn"=>executionRoleArn, "jobDriver"=>jobDriver, "releaseLabel"=>releaseLabel); aws_config=aws_config)
start_job_run(clientToken, executionRoleArn, jobDriver, releaseLabel, virtualClusterId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("POST", "/virtualclusters/$(virtualClusterId)/jobruns", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("clientToken"=>clientToken, "executionRoleArn"=>executionRoleArn, "jobDriver"=>jobDriver, "releaseLabel"=>releaseLabel), args)); aws_config=aws_config)

"""
    TagResource()

Assigns tags to resources. A tag is a label that you assign to an AWS resource. Each tag
consists of a key and an optional value, both of which you define. Tags enable you to
categorize your AWS resources by attributes such as purpose, owner, or environment. When
you have many resources of the same type, you can quickly identify a specific resource
based on the tags you've assigned to it. For example, you can define a set of tags for your
Amazon EMR on EKS clusters to help you track each cluster's owner and stack level. We
recommend that you devise a consistent set of tag keys for each resource type. You can then
search and filter the resources based on the tags that you add.

# Required Parameters
- `resourceArn`: The ARN of resources.
- `tags`: The tags assigned to resources.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes tags from resources.

# Required Parameters
- `resourceArn`: The ARN of resources.
- `tagKeys`: The tag keys of the resources.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = emr_containers("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)
