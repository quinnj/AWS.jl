# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: batch
using AWS.Compat
using AWS.UUIDs

"""
    CancelJob()

Cancels a job in an AWS Batch job queue. Jobs that are in the SUBMITTED, PENDING, or
RUNNABLE state are canceled. Jobs that have progressed to STARTING or RUNNING are not
canceled (but the API operation still succeeds, even if no job is canceled); these jobs
must be terminated with the TerminateJob operation.

# Required Parameters
- `jobId`: The AWS Batch job ID of the job to cancel.
- `reason`: A message to attach to the job that explains the reason for canceling it. This
  message is returned by future DescribeJobs operations on the job. This message is also
  recorded in the AWS Batch activity logs.

"""
cancel_job(jobId, reason; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/canceljob", Dict{String, Any}("jobId"=>jobId, "reason"=>reason); aws_config=aws_config)
cancel_job(jobId, reason, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/canceljob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("jobId"=>jobId, "reason"=>reason), args)); aws_config=aws_config)

"""
    CreateComputeEnvironment()

Creates an AWS Batch compute environment. You can create MANAGED or UNMANAGED compute
environments. MANAGED compute environments can use Amazon EC2 or AWS Fargate resources.
UNMANAGED compute environments can only use EC2 resources. In a managed compute
environment, AWS Batch manages the capacity and instance types of the compute resources
within the environment. This is based on the compute resource specification that you define
or the launch template that you specify when you create the compute environment. You can
choose either to use EC2 On-Demand Instances and EC2 Spot Instances, or to use Fargate and
Fargate Spot capacity in your managed compute environment. You can optionally set a maximum
price so that Spot Instances only launch when the Spot Instance price is less than a
specified percentage of the On-Demand price.  Multi-node parallel jobs are not supported on
Spot Instances.  In an unmanaged compute environment, you can manage your own EC2 compute
resources and have a lot of flexibility with how you configure your compute resources. For
example, you can use custom AMI. However, you need to verify that your AMI meets the Amazon
ECS container instance AMI specification. For more information, see container instance AMIs
in the Amazon Elastic Container Service Developer Guide. After you have created your
unmanaged compute environment, you can use the DescribeComputeEnvironments operation to
find the Amazon ECS cluster that's associated with it. Then, manually launch your container
instances into that Amazon ECS cluster. For more information, see Launching an Amazon ECS
container instance in the Amazon Elastic Container Service Developer Guide.  AWS Batch
doesn't upgrade the AMIs in a compute environment after it's created. For example, it
doesn't update the AMIs when a newer version of the Amazon ECS-optimized AMI is available.
Therefore, you're responsible for the management of the guest operating system (including
updates and security patches) and any additional application software or utilities that you
install on the compute resources. To use a new AMI for your AWS Batch jobs, complete these
steps:   Create a new compute environment with the new AMI.   Add the compute environment
to an existing job queue.   Remove the earlier compute environment from your job queue.
Delete the earlier compute environment.

# Required Parameters
- `computeEnvironmentName`: The name for your compute environment. Up to 128 letters
  (uppercase and lowercase), numbers, hyphens, and underscores are allowed.
- `serviceRole`: The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch
  to make calls to other AWS services on your behalf. For more information, see AWS Batch
  service IAM role in the AWS Batch User Guide. If your specified role has a path other than
  /, then you must either specify the full role ARN (this is recommended) or prefix the role
  name with the path.  Depending on how you created your AWS Batch service role, its ARN
  might contain the service-role path prefix. When you only specify the name of the service
  role, AWS Batch assumes that your ARN doesn't use the service-role path prefix. Because of
  this, we recommend that you specify the full ARN of your service role when you create
  compute environments.
- `type`: The type of the compute environment: MANAGED or UNMANAGED. For more information,
  see Compute Environments in the AWS Batch User Guide.

# Optional Parameters
- `computeResources`: Details about the compute resources managed by the compute
  environment. This parameter is required for managed compute environments. For more
  information, see Compute Environments in the AWS Batch User Guide.
- `state`: The state of the compute environment. If the state is ENABLED, then the compute
  environment accepts jobs from a queue and can scale out automatically based on queues. If
  the state is ENABLED, then the AWS Batch scheduler can attempt to place jobs from an
  associated job queue on the compute resources within the environment. If the compute
  environment is managed, then it can scale its instances out or in automatically, based on
  the job queue demand. If the state is DISABLED, then the AWS Batch scheduler doesn't
  attempt to place jobs within the environment. Jobs in a STARTING or RUNNING state continue
  to progress normally. Managed compute environments in the DISABLED state don't scale out.
  However, they scale in to minvCpus value after instances become idle.
- `tags`: The tags that you apply to the compute environment to help you categorize and
  organize your resources. Each tag consists of a key and an optional value. For more
  information, see Tagging AWS Resources in AWS General Reference. These tags can be updated
  or removed using the TagResource and UntagResource API operations. These tags don't
  propagate to the underlying compute resources.
"""
create_compute_environment(computeEnvironmentName, serviceRole, type; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/createcomputeenvironment", Dict{String, Any}("computeEnvironmentName"=>computeEnvironmentName, "serviceRole"=>serviceRole, "type"=>type); aws_config=aws_config)
create_compute_environment(computeEnvironmentName, serviceRole, type, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/createcomputeenvironment", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("computeEnvironmentName"=>computeEnvironmentName, "serviceRole"=>serviceRole, "type"=>type), args)); aws_config=aws_config)

"""
    CreateJobQueue()

Creates an AWS Batch job queue. When you create a job queue, you associate one or more
compute environments to the queue and assign an order of preference for the compute
environments. You also set a priority to the job queue that determines the order in which
the AWS Batch scheduler places jobs onto its associated compute environments. For example,
if a compute environment is associated with more than one job queue, the job queue with a
higher priority is given preference for scheduling jobs to that compute environment.

# Required Parameters
- `computeEnvironmentOrder`: The set of compute environments mapped to a job queue and
  their order relative to each other. The job scheduler uses this parameter to determine
  which compute environment should run a specific job. Compute environments must be in the
  VALID state before you can associate them with a job queue. You can associate up to three
  compute environments with a job queue. All of the compute environments must be either EC2
  (EC2 or SPOT) or Fargate (FARGATE or FARGATE_SPOT); EC2 and Fargate compute environments
  can't be mixed.  All compute environments that are associated with a job queue must share
  the same architecture. AWS Batch doesn't support mixing compute environment architecture
  types in a single job queue.
- `jobQueueName`: The name of the job queue. Up to 128 letters (uppercase and lowercase),
  numbers, and underscores are allowed.
- `priority`: The priority of the job queue. Job queues with a higher priority (or a higher
  integer value for the priority parameter) are evaluated first when associated with the same
  compute environment. Priority is determined in descending order. For example, a job queue
  with a priority value of 10 is given scheduling preference over a job queue with a priority
  value of 1. All of the compute environments must be either EC2 (EC2 or SPOT) or Fargate
  (FARGATE or FARGATE_SPOT); EC2 and Fargate compute environments cannot be mixed.

# Optional Parameters
- `state`: The state of the job queue. If the job queue state is ENABLED, it is able to
  accept jobs. If the job queue state is DISABLED, new jobs can't be added to the queue, but
  jobs already in the queue can finish.
- `tags`: The tags that you apply to the job queue to help you categorize and organize your
  resources. Each tag consists of a key and an optional value. For more information, see
  Tagging your AWS Batch resources in AWS Batch User Guide.
"""
create_job_queue(computeEnvironmentOrder, jobQueueName, priority; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/createjobqueue", Dict{String, Any}("computeEnvironmentOrder"=>computeEnvironmentOrder, "jobQueueName"=>jobQueueName, "priority"=>priority); aws_config=aws_config)
create_job_queue(computeEnvironmentOrder, jobQueueName, priority, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/createjobqueue", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("computeEnvironmentOrder"=>computeEnvironmentOrder, "jobQueueName"=>jobQueueName, "priority"=>priority), args)); aws_config=aws_config)

"""
    DeleteComputeEnvironment()

Deletes an AWS Batch compute environment. Before you can delete a compute environment, you
must set its state to DISABLED with the UpdateComputeEnvironment API operation and
disassociate it from any job queues with the UpdateJobQueue API operation. Compute
environments that use AWS Fargate resources must terminate all active jobs on that compute
environment before deleting the compute environment. If this isn't done, the compute
environment will end up in an invalid state.

# Required Parameters
- `computeEnvironment`: The name or Amazon Resource Name (ARN) of the compute environment
  to delete.

"""
delete_compute_environment(computeEnvironment; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/deletecomputeenvironment", Dict{String, Any}("computeEnvironment"=>computeEnvironment); aws_config=aws_config)
delete_compute_environment(computeEnvironment, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/deletecomputeenvironment", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("computeEnvironment"=>computeEnvironment), args)); aws_config=aws_config)

"""
    DeleteJobQueue()

Deletes the specified job queue. You must first disable submissions for a queue with the
UpdateJobQueue operation. All jobs in the queue are eventually terminated when you delete a
job queue. The jobs are terminated at a rate of about 16 jobs each second. It's not
necessary to disassociate compute environments from a queue before submitting a
DeleteJobQueue request.

# Required Parameters
- `jobQueue`: The short name or full Amazon Resource Name (ARN) of the queue to delete.

"""
delete_job_queue(jobQueue; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/deletejobqueue", Dict{String, Any}("jobQueue"=>jobQueue); aws_config=aws_config)
delete_job_queue(jobQueue, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/deletejobqueue", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("jobQueue"=>jobQueue), args)); aws_config=aws_config)

"""
    DeregisterJobDefinition()

Deregisters an AWS Batch job definition. Job definitions are permanently deleted after 180
days.

# Required Parameters
- `jobDefinition`: The name and revision (name:revision) or full Amazon Resource Name (ARN)
  of the job definition to deregister.

"""
deregister_job_definition(jobDefinition; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/deregisterjobdefinition", Dict{String, Any}("jobDefinition"=>jobDefinition); aws_config=aws_config)
deregister_job_definition(jobDefinition, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/deregisterjobdefinition", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("jobDefinition"=>jobDefinition), args)); aws_config=aws_config)

"""
    DescribeComputeEnvironments()

Describes one or more of your compute environments. If you're using an unmanaged compute
environment, you can use the DescribeComputeEnvironment operation to determine the
ecsClusterArn that you should launch your Amazon ECS container instances into.

# Optional Parameters
- `computeEnvironments`: A list of up to 100 compute environment names or full Amazon
  Resource Name (ARN) entries.
- `maxResults`: The maximum number of cluster results returned by
  DescribeComputeEnvironments in paginated output. When this parameter is used,
  DescribeComputeEnvironments only returns maxResults results in a single page along with a
  nextToken response element. The remaining results of the initial request can be seen by
  sending another DescribeComputeEnvironments request with the returned nextToken value. This
  value can be between 1 and 100. If this parameter isn't used, then
  DescribeComputeEnvironments returns up to 100 results and a nextToken value if applicable.
- `nextToken`: The nextToken value returned from a previous paginated
  DescribeComputeEnvironments request where maxResults was used and the results exceeded the
  value of that parameter. Pagination continues from the end of the previous results that
  returned the nextToken value. This value is null when there are no more results to return.
  This token should be treated as an opaque identifier that's only used to retrieve the next
  items in a list and not for other programmatic purposes.
"""
describe_compute_environments(; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/describecomputeenvironments"; aws_config=aws_config)
describe_compute_environments(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/describecomputeenvironments", args; aws_config=aws_config)

"""
    DescribeJobDefinitions()

Describes a list of job definitions. You can specify a status (such as ACTIVE) to only
return job definitions that match that status.

# Optional Parameters
- `jobDefinitionName`: The name of the job definition to describe.
- `jobDefinitions`: A list of up to 100 job definition names or full Amazon Resource Name
  (ARN) entries.
- `maxResults`: The maximum number of results returned by DescribeJobDefinitions in
  paginated output. When this parameter is used, DescribeJobDefinitions only returns
  maxResults results in a single page along with a nextToken response element. The remaining
  results of the initial request can be seen by sending another DescribeJobDefinitions
  request with the returned nextToken value. This value can be between 1 and 100. If this
  parameter isn't used, then DescribeJobDefinitions returns up to 100 results and a nextToken
  value if applicable.
- `nextToken`: The nextToken value returned from a previous paginated
  DescribeJobDefinitions request where maxResults was used and the results exceeded the value
  of that parameter. Pagination continues from the end of the previous results that returned
  the nextToken value. This value is null when there are no more results to return.  This
  token should be treated as an opaque identifier that's only used to retrieve the next items
  in a list and not for other programmatic purposes.
- `status`: The status used to filter job definitions.
"""
describe_job_definitions(; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/describejobdefinitions"; aws_config=aws_config)
describe_job_definitions(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/describejobdefinitions", args; aws_config=aws_config)

"""
    DescribeJobQueues()

Describes one or more of your job queues.

# Optional Parameters
- `jobQueues`: A list of up to 100 queue names or full queue Amazon Resource Name (ARN)
  entries.
- `maxResults`: The maximum number of results returned by DescribeJobQueues in paginated
  output. When this parameter is used, DescribeJobQueues only returns maxResults results in a
  single page along with a nextToken response element. The remaining results of the initial
  request can be seen by sending another DescribeJobQueues request with the returned
  nextToken value. This value can be between 1 and 100. If this parameter isn't used, then
  DescribeJobQueues returns up to 100 results and a nextToken value if applicable.
- `nextToken`: The nextToken value returned from a previous paginated DescribeJobQueues
  request where maxResults was used and the results exceeded the value of that parameter.
  Pagination continues from the end of the previous results that returned the nextToken
  value. This value is null when there are no more results to return.  This token should be
  treated as an opaque identifier that's only used to retrieve the next items in a list and
  not for other programmatic purposes.
"""
describe_job_queues(; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/describejobqueues"; aws_config=aws_config)
describe_job_queues(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/describejobqueues", args; aws_config=aws_config)

"""
    DescribeJobs()

Describes a list of AWS Batch jobs.

# Required Parameters
- `jobs`: A list of up to 100 job IDs.

"""
describe_jobs(jobs; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/describejobs", Dict{String, Any}("jobs"=>jobs); aws_config=aws_config)
describe_jobs(jobs, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/describejobs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("jobs"=>jobs), args)); aws_config=aws_config)

"""
    ListJobs()

Returns a list of AWS Batch jobs. You must specify only one of the following items:   A job
queue ID to return a list of jobs in that job queue   A multi-node parallel job ID to
return a list of that job's nodes   An array job ID to return a list of that job's children
  You can filter the results by job status with the jobStatus parameter. If you don't
specify a status, only RUNNING jobs are returned.

# Optional Parameters
- `arrayJobId`: The job ID for an array job. Specifying an array job ID with this parameter
  lists all child jobs from within the specified array.
- `jobQueue`: The name or full Amazon Resource Name (ARN) of the job queue used to list
  jobs.
- `jobStatus`: The job status used to filter jobs in the specified queue. If you don't
  specify a status, only RUNNING jobs are returned.
- `maxResults`: The maximum number of results returned by ListJobs in paginated output.
  When this parameter is used, ListJobs only returns maxResults results in a single page
  along with a nextToken response element. The remaining results of the initial request can
  be seen by sending another ListJobs request with the returned nextToken value. This value
  can be between 1 and 100. If this parameter isn't used, then ListJobs returns up to 100
  results and a nextToken value if applicable.
- `multiNodeJobId`: The job ID for a multi-node parallel job. Specifying a multi-node
  parallel job ID with this parameter lists all nodes that are associated with the specified
  job.
- `nextToken`: The nextToken value returned from a previous paginated ListJobs request
  where maxResults was used and the results exceeded the value of that parameter. Pagination
  continues from the end of the previous results that returned the nextToken value. This
  value is null when there are no more results to return.  This token should be treated as an
  opaque identifier that's only used to retrieve the next items in a list and not for other
  programmatic purposes.
"""
list_jobs(; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/listjobs"; aws_config=aws_config)
list_jobs(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/listjobs", args; aws_config=aws_config)

"""
    ListTagsForResource()

Lists the tags for an AWS Batch resource. AWS Batch resources that support tags are compute
environments, jobs, job definitions, and job queues. ARNs for child jobs of array and
multi-node parallel (MNP) jobs are not supported.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) that identifies the resource that tags are
  listed for. AWS Batch resources that support tags are compute environments, jobs, job
  definitions, and job queues. ARNs for child jobs of array and multi-node parallel (MNP)
  jobs are not supported.

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = batch("GET", "/v1/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("GET", "/v1/tags/$(resourceArn)", args; aws_config=aws_config)

"""
    RegisterJobDefinition()

Registers an AWS Batch job definition.

# Required Parameters
- `jobDefinitionName`: The name of the job definition to register. Up to 128 letters
  (uppercase and lowercase), numbers, hyphens, and underscores are allowed.
- `type`: The type of job definition. For more information about multi-node parallel jobs,
  see Creating a multi-node parallel job definition in the AWS Batch User Guide.  If the job
  is run on Fargate resources, then multinode isn't supported.

# Optional Parameters
- `containerProperties`: An object with various properties specific to single-node
  container-based jobs. If the job definition's type parameter is container, then you must
  specify either containerProperties or nodeProperties.  If the job runs on Fargate
  resources, then you must not specify nodeProperties; use only containerProperties.
- `nodeProperties`: An object with various properties specific to multi-node parallel jobs.
  If you specify node properties for a job, it becomes a multi-node parallel job. For more
  information, see Multi-node Parallel Jobs in the AWS Batch User Guide. If the job
  definition's type parameter is container, then you must specify either containerProperties
  or nodeProperties.  If the job runs on Fargate resources, then you must not specify
  nodeProperties; use containerProperties instead.
- `parameters`: Default parameter substitution placeholders to set in the job definition.
  Parameters are specified as a key-value pair mapping. Parameters in a SubmitJob request
  override any corresponding parameter defaults from the job definition.
- `platformCapabilities`: The platform capabilities required by the job definition. If no
  value is specified, it defaults to EC2. To run the job on Fargate resources, specify
  FARGATE.
- `propagateTags`: Specifies whether to propagate the tags from the job or job definition
  to the corresponding Amazon ECS task. If no value is specified, the tags are not
  propagated. Tags can only be propagated to the tasks during task creation. For tags with
  the same name, job tags are given priority over job definitions tags. If the total number
  of combined tags from the job and job definition is over 50, the job is moved to the FAILED
  state.
- `retryStrategy`: The retry strategy to use for failed jobs that are submitted with this
  job definition. Any retry strategy that's specified during a SubmitJob operation overrides
  the retry strategy defined here. If a job is terminated due to a timeout, it isn't retried.
- `tags`: The tags that you apply to the job definition to help you categorize and organize
  your resources. Each tag consists of a key and an optional value. For more information, see
  Tagging AWS Resources in AWS Batch User Guide.
- `timeout`: The timeout configuration for jobs that are submitted with this job
  definition, after which AWS Batch terminates your jobs if they have not finished. If a job
  is terminated due to a timeout, it isn't retried. The minimum value for the timeout is 60
  seconds. Any timeout configuration that's specified during a SubmitJob operation overrides
  the timeout configuration defined here. For more information, see Job Timeouts in the AWS
  Batch User Guide.
"""
register_job_definition(jobDefinitionName, type; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/registerjobdefinition", Dict{String, Any}("jobDefinitionName"=>jobDefinitionName, "type"=>type); aws_config=aws_config)
register_job_definition(jobDefinitionName, type, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/registerjobdefinition", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("jobDefinitionName"=>jobDefinitionName, "type"=>type), args)); aws_config=aws_config)

"""
    SubmitJob()

Submits an AWS Batch job from a job definition. Parameters specified during SubmitJob
override parameters defined in the job definition.  Jobs run on Fargate resources don't run
for more than 14 days. After 14 days, the Fargate resources might no longer be available
and the job is terminated.

# Required Parameters
- `jobDefinition`: The job definition used by this job. This value can be one of name,
  name:revision, or the Amazon Resource Name (ARN) for the job definition. If name is
  specified without a revision then the latest active revision is used.
- `jobName`: The name of the job. The first character must be alphanumeric, and up to 128
  letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.
- `jobQueue`: The job queue into which the job is submitted. You can specify either the
  name or the Amazon Resource Name (ARN) of the queue.

# Optional Parameters
- `arrayProperties`: The array properties for the submitted job, such as the size of the
  array. The array size can be between 2 and 10,000. If you specify array properties for a
  job, it becomes an array job. For more information, see Array Jobs in the AWS Batch User
  Guide.
- `containerOverrides`: A list of container overrides in JSON format that specify the name
  of a container in the specified job definition and the overrides it should receive. You can
  override the default command for a container (that's specified in the job definition or the
  Docker image) with a command override. You can also override existing environment variables
  (that are specified in the job definition or Docker image) on a container or add new
  environment variables to it with an environment override.
- `dependsOn`: A list of dependencies for the job. A job can depend upon a maximum of 20
  jobs. You can specify a SEQUENTIAL type dependency without specifying a job ID for array
  jobs so that each child array job completes sequentially, starting at index 0. You can also
  specify an N_TO_N type dependency with a job ID for array jobs. In that case, each index
  child of this job must wait for the corresponding index child of each dependency to
  complete before it can begin.
- `nodeOverrides`: A list of node overrides in JSON format that specify the node range to
  target and the container overrides for that node range.  This parameter isn't applicable to
  jobs running on Fargate resources; use containerOverrides instead.
- `parameters`: Additional parameters passed to the job that replace parameter substitution
  placeholders that are set in the job definition. Parameters are specified as a key and
  value pair mapping. Parameters in a SubmitJob request override any corresponding parameter
  defaults from the job definition.
- `propagateTags`: Specifies whether to propagate the tags from the job or job definition
  to the corresponding Amazon ECS task. If no value is specified, the tags aren't propagated.
  Tags can only be propagated to the tasks during task creation. For tags with the same name,
  job tags are given priority over job definitions tags. If the total number of combined tags
  from the job and job definition is over 50, the job is moved to the FAILED state. When
  specified, this overrides the tag propagation setting in the job definition.
- `retryStrategy`: The retry strategy to use for failed jobs from this SubmitJob operation.
  When a retry strategy is specified here, it overrides the retry strategy defined in the job
  definition.
- `tags`: The tags that you apply to the job request to help you categorize and organize
  your resources. Each tag consists of a key and an optional value. For more information, see
  Tagging AWS Resources in AWS General Reference.
- `timeout`: The timeout configuration for this SubmitJob operation. You can specify a
  timeout duration after which AWS Batch terminates your jobs if they haven't finished. If a
  job is terminated due to a timeout, it isn't retried. The minimum value for the timeout is
  60 seconds. This configuration overrides any timeout configuration specified in the job
  definition. For array jobs, child jobs have the same timeout configuration as the parent
  job. For more information, see Job Timeouts in the Amazon Elastic Container Service
  Developer Guide.
"""
submit_job(jobDefinition, jobName, jobQueue; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/submitjob", Dict{String, Any}("jobDefinition"=>jobDefinition, "jobName"=>jobName, "jobQueue"=>jobQueue); aws_config=aws_config)
submit_job(jobDefinition, jobName, jobQueue, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/submitjob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("jobDefinition"=>jobDefinition, "jobName"=>jobName, "jobQueue"=>jobQueue), args)); aws_config=aws_config)

"""
    TagResource()

Associates the specified tags to a resource with the specified resourceArn. If existing
tags on a resource aren't specified in the request parameters, they aren't changed. When a
resource is deleted, the tags associated with that resource are deleted as well. AWS Batch
resources that support tags are compute environments, jobs, job definitions, and job
queues. ARNs for child jobs of array and multi-node parallel (MNP) jobs are not supported.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the resource that tags are added to. AWS
  Batch resources that support tags are compute environments, jobs, job definitions, and job
  queues. ARNs for child jobs of array and multi-node parallel (MNP) jobs are not supported.
- `tags`: The tags that you apply to the resource to help you categorize and organize your
  resources. Each tag consists of a key and an optional value. For more information, see
  Tagging AWS Resources in AWS General Reference.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)

"""
    TerminateJob()

Terminates a job in a job queue. Jobs that are in the STARTING or RUNNING state are
terminated, which causes them to transition to FAILED. Jobs that have not progressed to the
STARTING state are cancelled.

# Required Parameters
- `jobId`: The AWS Batch job ID of the job to terminate.
- `reason`: A message to attach to the job that explains the reason for canceling it. This
  message is returned by future DescribeJobs operations on the job. This message is also
  recorded in the AWS Batch activity logs.

"""
terminate_job(jobId, reason; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/terminatejob", Dict{String, Any}("jobId"=>jobId, "reason"=>reason); aws_config=aws_config)
terminate_job(jobId, reason, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/terminatejob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("jobId"=>jobId, "reason"=>reason), args)); aws_config=aws_config)

"""
    UntagResource()

Deletes specified tags from an AWS Batch resource.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the resource from which to delete tags.
  AWS Batch resources that support tags are compute environments, jobs, job definitions, and
  job queues. ARNs for child jobs of array and multi-node parallel (MNP) jobs are not
  supported.
- `tagKeys`: The keys of the tags to be removed.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = batch("DELETE", "/v1/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("DELETE", "/v1/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateComputeEnvironment()

Updates an AWS Batch compute environment.

# Required Parameters
- `computeEnvironment`: The name or full Amazon Resource Name (ARN) of the compute
  environment to update.

# Optional Parameters
- `computeResources`: Details of the compute resources managed by the compute environment.
  Required for a managed compute environment. For more information, see Compute Environments
  in the AWS Batch User Guide.
- `serviceRole`: The full Amazon Resource Name (ARN) of the IAM role that allows AWS Batch
  to make calls to other AWS services on your behalf. For more information, see AWS Batch
  service IAM role in the AWS Batch User Guide. If your specified role has a path other than
  /, then you must either specify the full role ARN (this is recommended) or prefix the role
  name with the path.  Depending on how you created your AWS Batch service role, its ARN
  might contain the service-role path prefix. When you only specify the name of the service
  role, AWS Batch assumes that your ARN does not use the service-role path prefix. Because of
  this, we recommend that you specify the full ARN of your service role when you create
  compute environments.
- `state`: The state of the compute environment. Compute environments in the ENABLED state
  can accept jobs from a queue and scale in or out automatically based on the workload demand
  of its associated queues. If the state is ENABLED, then the AWS Batch scheduler can attempt
  to place jobs from an associated job queue on the compute resources within the environment.
  If the compute environment is managed, then it can scale its instances out or in
  automatically, based on the job queue demand. If the state is DISABLED, then the AWS Batch
  scheduler doesn't attempt to place jobs within the environment. Jobs in a STARTING or
  RUNNING state continue to progress normally. Managed compute environments in the DISABLED
  state don't scale out. However, they scale in to minvCpus value after instances become idle.
"""
update_compute_environment(computeEnvironment; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/updatecomputeenvironment", Dict{String, Any}("computeEnvironment"=>computeEnvironment); aws_config=aws_config)
update_compute_environment(computeEnvironment, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/updatecomputeenvironment", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("computeEnvironment"=>computeEnvironment), args)); aws_config=aws_config)

"""
    UpdateJobQueue()

Updates a job queue.

# Required Parameters
- `jobQueue`: The name or the Amazon Resource Name (ARN) of the job queue.

# Optional Parameters
- `computeEnvironmentOrder`: Details the set of compute environments mapped to a job queue
  and their order relative to each other. This is one of the parameters used by the job
  scheduler to determine which compute environment should run a given job. Compute
  environments must be in the VALID state before you can associate them with a job queue. All
  of the compute environments must be either EC2 (EC2 or SPOT) or Fargate (FARGATE or
  FARGATE_SPOT); EC2 and Fargate compute environments can't be mixed.  All compute
  environments that are associated with a job queue must share the same architecture. AWS
  Batch doesn't support mixing compute environment architecture types in a single job queue.
- `priority`: The priority of the job queue. Job queues with a higher priority (or a higher
  integer value for the priority parameter) are evaluated first when associated with the same
  compute environment. Priority is determined in descending order, for example, a job queue
  with a priority value of 10 is given scheduling preference over a job queue with a priority
  value of 1. All of the compute environments must be either EC2 (EC2 or SPOT) or Fargate
  (FARGATE or FARGATE_SPOT); EC2 and Fargate compute environments cannot be mixed.
- `state`: Describes the queue's ability to accept new jobs. If the job queue state is
  ENABLED, it is able to accept jobs. If the job queue state is DISABLED, new jobs cannot be
  added to the queue, but jobs already in the queue can finish.
"""
update_job_queue(jobQueue; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/updatejobqueue", Dict{String, Any}("jobQueue"=>jobQueue); aws_config=aws_config)
update_job_queue(jobQueue, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = batch("POST", "/v1/updatejobqueue", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("jobQueue"=>jobQueue), args)); aws_config=aws_config)
