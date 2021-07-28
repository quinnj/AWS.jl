# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: shield
using AWS.Compat
using AWS.UUIDs

"""
    associate_drtlog_bucket(log_bucket)
    associate_drtlog_bucket(log_bucket, params::Dict{String,<:Any})

Authorizes the Shield Response Team (SRT) to access the specified Amazon S3 bucket
containing log data such as Application Load Balancer access logs, CloudFront logs, or logs
from third party sources. You can associate up to 10 Amazon S3 buckets with your
subscription. To use the services of the SRT and make an AssociateDRTLogBucket request, you
must be subscribed to the Business Support plan or the Enterprise Support plan.

# Arguments
- `log_bucket`: The Amazon S3 bucket that contains the logs that you want to share.

"""
associate_drtlog_bucket(LogBucket; aws_config::AbstractAWSConfig=global_aws_config()) = shield("AssociateDRTLogBucket", Dict{String, Any}("LogBucket"=>LogBucket); aws_config=aws_config)
associate_drtlog_bucket(LogBucket, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("AssociateDRTLogBucket", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("LogBucket"=>LogBucket), params)); aws_config=aws_config)

"""
    associate_drtrole(role_arn)
    associate_drtrole(role_arn, params::Dict{String,<:Any})

Authorizes the Shield Response Team (SRT) using the specified role, to access your Amazon
Web Services account to assist with DDoS attack mitigation during potential attacks. This
enables the SRT to inspect your WAF configuration and create or update WAF rules and web
ACLs. You can associate only one RoleArn with your subscription. If you submit an
AssociateDRTRole request for an account that already has an associated role, the new
RoleArn will replace the existing RoleArn.  Prior to making the AssociateDRTRole request,
you must attach the AWSShieldDRTAccessPolicy managed policy to the role you will specify in
the request. For more information see Attaching and Detaching IAM Policies. The role must
also trust the service principal  drt.shield.amazonaws.com. For more information, see IAM
JSON Policy Elements: Principal. The SRT will have access only to your WAF and Shield
resources. By submitting this request, you authorize the SRT to inspect your WAF and Shield
configuration and create and update WAF rules and web ACLs on your behalf. The SRT takes
these actions only if explicitly authorized by you. You must have the iam:PassRole
permission to make an AssociateDRTRole request. For more information, see Granting a User
Permissions to Pass a Role to an Amazon Web Services Service.  To use the services of the
SRT and make an AssociateDRTRole request, you must be subscribed to the Business Support
plan or the Enterprise Support plan.

# Arguments
- `role_arn`: The Amazon Resource Name (ARN) of the role the SRT will use to access your
  Amazon Web Services account. Prior to making the AssociateDRTRole request, you must attach
  the AWSShieldDRTAccessPolicy managed policy to this role. For more information see
  Attaching and Detaching IAM Policies.

"""
associate_drtrole(RoleArn; aws_config::AbstractAWSConfig=global_aws_config()) = shield("AssociateDRTRole", Dict{String, Any}("RoleArn"=>RoleArn); aws_config=aws_config)
associate_drtrole(RoleArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("AssociateDRTRole", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("RoleArn"=>RoleArn), params)); aws_config=aws_config)

"""
    associate_health_check(health_check_arn, protection_id)
    associate_health_check(health_check_arn, protection_id, params::Dict{String,<:Any})

Adds health-based detection to the Shield Advanced protection for a resource. Shield
Advanced health-based detection uses the health of your Amazon Web Services resource to
improve responsiveness and accuracy in attack detection and mitigation.  You define the
health check in Route 53 and then associate it with your Shield Advanced protection. For
more information, see Shield Advanced Health-Based Detection in the WAF Developer Guide.

# Arguments
- `health_check_arn`: The Amazon Resource Name (ARN) of the health check to associate with
  the protection.
- `protection_id`: The unique identifier (ID) for the Protection object to add the health
  check association to.

"""
associate_health_check(HealthCheckArn, ProtectionId; aws_config::AbstractAWSConfig=global_aws_config()) = shield("AssociateHealthCheck", Dict{String, Any}("HealthCheckArn"=>HealthCheckArn, "ProtectionId"=>ProtectionId); aws_config=aws_config)
associate_health_check(HealthCheckArn, ProtectionId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("AssociateHealthCheck", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("HealthCheckArn"=>HealthCheckArn, "ProtectionId"=>ProtectionId), params)); aws_config=aws_config)

"""
    associate_proactive_engagement_details(emergency_contact_list)
    associate_proactive_engagement_details(emergency_contact_list, params::Dict{String,<:Any})

Initializes proactive engagement and sets the list of contacts for the Shield Response Team
(SRT) to use. You must provide at least one phone number in the emergency contact list.
After you have initialized proactive engagement using this call, to disable or enable
proactive engagement, use the calls DisableProactiveEngagement and
EnableProactiveEngagement.   This call defines the list of email addresses and phone
numbers that the SRT can use to contact you for escalations to the SRT and to initiate
proactive customer support. The contacts that you provide in the request replace any
contacts that were already defined. If you already have contacts defined and want to use
them, retrieve the list using DescribeEmergencyContactSettings and then provide it to this
call.

# Arguments
- `emergency_contact_list`: A list of email addresses and phone numbers that the Shield
  Response Team (SRT) can use to contact you for escalations to the SRT and to initiate
  proactive customer support.  To enable proactive engagement, the contact list must include
  at least one phone number.  The contacts that you provide here replace any contacts that
  were already defined. If you already have contacts defined and want to use them, retrieve
  the list using DescribeEmergencyContactSettings and then provide it here.

"""
associate_proactive_engagement_details(EmergencyContactList; aws_config::AbstractAWSConfig=global_aws_config()) = shield("AssociateProactiveEngagementDetails", Dict{String, Any}("EmergencyContactList"=>EmergencyContactList); aws_config=aws_config)
associate_proactive_engagement_details(EmergencyContactList, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("AssociateProactiveEngagementDetails", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("EmergencyContactList"=>EmergencyContactList), params)); aws_config=aws_config)

"""
    create_protection(name, resource_arn)
    create_protection(name, resource_arn, params::Dict{String,<:Any})

Enables Shield Advanced for a specific Amazon Web Services resource. The resource can be an
Amazon CloudFront distribution, Elastic Load Balancing load balancer, Global Accelerator
accelerator, Elastic IP Address, or an Amazon Route 53 hosted zone. You can add protection
to only a single resource with each CreateProtection request. If you want to add protection
to multiple resources at once, use the WAF console. For more information see Getting
Started with Shield Advanced and Add Shield Advanced Protection to more Amazon Web Services
Resources.

# Arguments
- `name`: Friendly name for the Protection you are creating.
- `resource_arn`: The ARN (Amazon Resource Name) of the resource to be protected. The ARN
  should be in one of the following formats:   For an Application Load Balancer:
  arn:aws:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-bala
  ncer-id     For an Elastic Load Balancer (Classic Load Balancer):
  arn:aws:elasticloadbalancing:region:account-id:loadbalancer/load-balancer-name     For an
  Amazon CloudFront distribution: arn:aws:cloudfront::account-id:distribution/distribution-id
      For an Global Accelerator accelerator:
  arn:aws:globalaccelerator::account-id:accelerator/accelerator-id     For Amazon Route 53:
  arn:aws:route53:::hostedzone/hosted-zone-id     For an Elastic IP address:
  arn:aws:ec2:region:account-id:eip-allocation/allocation-id

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Tags"`: One or more tag key-value pairs for the Protection object that is created.
"""
create_protection(Name, ResourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = shield("CreateProtection", Dict{String, Any}("Name"=>Name, "ResourceArn"=>ResourceArn); aws_config=aws_config)
create_protection(Name, ResourceArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("CreateProtection", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "ResourceArn"=>ResourceArn), params)); aws_config=aws_config)

"""
    create_protection_group(aggregation, pattern, protection_group_id)
    create_protection_group(aggregation, pattern, protection_group_id, params::Dict{String,<:Any})

Creates a grouping of protected resources so they can be handled as a collective. This
resource grouping improves the accuracy of detection and reduces false positives.

# Arguments
- `aggregation`: Defines how Shield combines resource data for the group in order to
  detect, mitigate, and report events.   Sum - Use the total traffic across the group. This
  is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances
  that scale manually or automatically.   Mean - Use the average of the traffic across the
  group. This is a good choice for resources that share traffic uniformly. Examples include
  accelerators and load balancers.   Max - Use the highest traffic from each resource. This
  is useful for resources that don't share traffic and for resources that share that traffic
  in a non-uniform way. Examples include Amazon CloudFront and origin resources for
  CloudFront distributions.
- `pattern`: The criteria to use to choose the protected resources for inclusion in the
  group. You can include all resources that have protections, provide a list of resource
  Amazon Resource Names (ARNs), or include all resources of a specified resource type.
- `protection_group_id`: The name of the protection group. You use this to identify the
  protection group in lists and to manage the protection group, for example to update,
  delete, or describe it.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Members"`: The Amazon Resource Names (ARNs) of the resources to include in the
  protection group. You must set this when you set Pattern to ARBITRARY and you must not set
  it for any other Pattern setting.
- `"ResourceType"`: The resource type to include in the protection group. All protected
  resources of this type are included in the protection group. Newly protected resources of
  this type are automatically added to the group. You must set this when you set Pattern to
  BY_RESOURCE_TYPE and you must not set it for any other Pattern setting.
- `"Tags"`: One or more tag key-value pairs for the protection group.
"""
create_protection_group(Aggregation, Pattern, ProtectionGroupId; aws_config::AbstractAWSConfig=global_aws_config()) = shield("CreateProtectionGroup", Dict{String, Any}("Aggregation"=>Aggregation, "Pattern"=>Pattern, "ProtectionGroupId"=>ProtectionGroupId); aws_config=aws_config)
create_protection_group(Aggregation, Pattern, ProtectionGroupId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("CreateProtectionGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Aggregation"=>Aggregation, "Pattern"=>Pattern, "ProtectionGroupId"=>ProtectionGroupId), params)); aws_config=aws_config)

"""
    create_subscription()
    create_subscription(params::Dict{String,<:Any})

Activates Shield Advanced for an account. When you initally create a subscription, your
subscription is set to be automatically renewed at the end of the existing subscription
period. You can change this by submitting an UpdateSubscription request.

"""
create_subscription(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("CreateSubscription"; aws_config=aws_config)
create_subscription(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("CreateSubscription", params; aws_config=aws_config)

"""
    delete_protection(protection_id)
    delete_protection(protection_id, params::Dict{String,<:Any})

Deletes an Shield Advanced Protection.

# Arguments
- `protection_id`: The unique identifier (ID) for the Protection object to be deleted.

"""
delete_protection(ProtectionId; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DeleteProtection", Dict{String, Any}("ProtectionId"=>ProtectionId); aws_config=aws_config)
delete_protection(ProtectionId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DeleteProtection", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ProtectionId"=>ProtectionId), params)); aws_config=aws_config)

"""
    delete_protection_group(protection_group_id)
    delete_protection_group(protection_group_id, params::Dict{String,<:Any})

Removes the specified protection group.

# Arguments
- `protection_group_id`: The name of the protection group. You use this to identify the
  protection group in lists and to manage the protection group, for example to update,
  delete, or describe it.

"""
delete_protection_group(ProtectionGroupId; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DeleteProtectionGroup", Dict{String, Any}("ProtectionGroupId"=>ProtectionGroupId); aws_config=aws_config)
delete_protection_group(ProtectionGroupId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DeleteProtectionGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ProtectionGroupId"=>ProtectionGroupId), params)); aws_config=aws_config)

"""
    delete_subscription()
    delete_subscription(params::Dict{String,<:Any})

Removes Shield Advanced from an account. Shield Advanced requires a 1-year subscription
commitment. You cannot delete a subscription prior to the completion of that commitment.

"""
delete_subscription(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DeleteSubscription"; aws_config=aws_config)
delete_subscription(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DeleteSubscription", params; aws_config=aws_config)

"""
    describe_attack(attack_id)
    describe_attack(attack_id, params::Dict{String,<:Any})

Describes the details of a DDoS attack.

# Arguments
- `attack_id`: The unique identifier (ID) for the attack that to be described.

"""
describe_attack(AttackId; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DescribeAttack", Dict{String, Any}("AttackId"=>AttackId); aws_config=aws_config)
describe_attack(AttackId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DescribeAttack", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AttackId"=>AttackId), params)); aws_config=aws_config)

"""
    describe_attack_statistics()
    describe_attack_statistics(params::Dict{String,<:Any})

Provides information about the number and type of attacks Shield has detected in the last
year for all resources that belong to your account, regardless of whether you've defined
Shield protections for them. This operation is available to Shield customers as well as to
Shield Advanced customers. The operation returns data for the time range of midnight UTC,
one year ago, to midnight UTC, today. For example, if the current time is 2020-10-26
15:39:32 PDT, equal to 2020-10-26 22:39:32 UTC, then the time range for the attack data
returned is from 2019-10-26 00:00:00 UTC to 2020-10-26 00:00:00 UTC.  The time range
indicates the period covered by the attack statistics data items.

"""
describe_attack_statistics(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DescribeAttackStatistics"; aws_config=aws_config)
describe_attack_statistics(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DescribeAttackStatistics", params; aws_config=aws_config)

"""
    describe_drtaccess()
    describe_drtaccess(params::Dict{String,<:Any})

Returns the current role and list of Amazon S3 log buckets used by the Shield Response Team
(SRT) to access your Amazon Web Services account while assisting with attack mitigation.

"""
describe_drtaccess(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DescribeDRTAccess"; aws_config=aws_config)
describe_drtaccess(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DescribeDRTAccess", params; aws_config=aws_config)

"""
    describe_emergency_contact_settings()
    describe_emergency_contact_settings(params::Dict{String,<:Any})

A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to
contact you if you have proactive engagement enabled, for escalations to the SRT and to
initiate proactive customer support.

"""
describe_emergency_contact_settings(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DescribeEmergencyContactSettings"; aws_config=aws_config)
describe_emergency_contact_settings(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DescribeEmergencyContactSettings", params; aws_config=aws_config)

"""
    describe_protection()
    describe_protection(params::Dict{String,<:Any})

Lists the details of a Protection object.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ProtectionId"`: The unique identifier (ID) for the Protection object that is described.
  When submitting the DescribeProtection request you must provide either the ResourceArn or
  the ProtectionID, but not both.
- `"ResourceArn"`: The ARN (Amazon Resource Name) of the Amazon Web Services resource for
  the Protection object that is described. When submitting the DescribeProtection request you
  must provide either the ResourceArn or the ProtectionID, but not both.
"""
describe_protection(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DescribeProtection"; aws_config=aws_config)
describe_protection(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DescribeProtection", params; aws_config=aws_config)

"""
    describe_protection_group(protection_group_id)
    describe_protection_group(protection_group_id, params::Dict{String,<:Any})

Returns the specification for the specified protection group.

# Arguments
- `protection_group_id`: The name of the protection group. You use this to identify the
  protection group in lists and to manage the protection group, for example to update,
  delete, or describe it.

"""
describe_protection_group(ProtectionGroupId; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DescribeProtectionGroup", Dict{String, Any}("ProtectionGroupId"=>ProtectionGroupId); aws_config=aws_config)
describe_protection_group(ProtectionGroupId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DescribeProtectionGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ProtectionGroupId"=>ProtectionGroupId), params)); aws_config=aws_config)

"""
    describe_subscription()
    describe_subscription(params::Dict{String,<:Any})

Provides details about the Shield Advanced subscription for an account.

"""
describe_subscription(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DescribeSubscription"; aws_config=aws_config)
describe_subscription(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DescribeSubscription", params; aws_config=aws_config)

"""
    disable_proactive_engagement()
    disable_proactive_engagement(params::Dict{String,<:Any})

Removes authorization from the Shield Response Team (SRT) to notify contacts about
escalations to the SRT and to initiate proactive customer support.

"""
disable_proactive_engagement(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DisableProactiveEngagement"; aws_config=aws_config)
disable_proactive_engagement(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DisableProactiveEngagement", params; aws_config=aws_config)

"""
    disassociate_drtlog_bucket(log_bucket)
    disassociate_drtlog_bucket(log_bucket, params::Dict{String,<:Any})

Removes the Shield Response Team's (SRT) access to the specified Amazon S3 bucket
containing the logs that you shared previously. To make a DisassociateDRTLogBucket request,
you must be subscribed to the Business Support plan or the Enterprise Support plan.
However, if you are not subscribed to one of these support plans, but had been previously
and had granted the SRT access to your account, you can submit a DisassociateDRTLogBucket
request to remove this access.

# Arguments
- `log_bucket`: The Amazon S3 bucket that contains the logs that you want to share.

"""
disassociate_drtlog_bucket(LogBucket; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DisassociateDRTLogBucket", Dict{String, Any}("LogBucket"=>LogBucket); aws_config=aws_config)
disassociate_drtlog_bucket(LogBucket, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DisassociateDRTLogBucket", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("LogBucket"=>LogBucket), params)); aws_config=aws_config)

"""
    disassociate_drtrole()
    disassociate_drtrole(params::Dict{String,<:Any})

Removes the Shield Response Team's (SRT) access to your Amazon Web Services account. To
make a DisassociateDRTRole request, you must be subscribed to the Business Support plan or
the Enterprise Support plan. However, if you are not subscribed to one of these support
plans, but had been previously and had granted the SRT access to your account, you can
submit a DisassociateDRTRole request to remove this access.

"""
disassociate_drtrole(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DisassociateDRTRole"; aws_config=aws_config)
disassociate_drtrole(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DisassociateDRTRole", params; aws_config=aws_config)

"""
    disassociate_health_check(health_check_arn, protection_id)
    disassociate_health_check(health_check_arn, protection_id, params::Dict{String,<:Any})

Removes health-based detection from the Shield Advanced protection for a resource. Shield
Advanced health-based detection uses the health of your Amazon Web Services resource to
improve responsiveness and accuracy in attack detection and mitigation.  You define the
health check in Route 53 and then associate or disassociate it with your Shield Advanced
protection. For more information, see Shield Advanced Health-Based Detection in the WAF
Developer Guide.

# Arguments
- `health_check_arn`: The Amazon Resource Name (ARN) of the health check that is associated
  with the protection.
- `protection_id`: The unique identifier (ID) for the Protection object to remove the
  health check association from.

"""
disassociate_health_check(HealthCheckArn, ProtectionId; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DisassociateHealthCheck", Dict{String, Any}("HealthCheckArn"=>HealthCheckArn, "ProtectionId"=>ProtectionId); aws_config=aws_config)
disassociate_health_check(HealthCheckArn, ProtectionId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("DisassociateHealthCheck", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("HealthCheckArn"=>HealthCheckArn, "ProtectionId"=>ProtectionId), params)); aws_config=aws_config)

"""
    enable_proactive_engagement()
    enable_proactive_engagement(params::Dict{String,<:Any})

Authorizes the Shield Response Team (SRT) to use email and phone to notify contacts about
escalations to the SRT and to initiate proactive customer support.

"""
enable_proactive_engagement(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("EnableProactiveEngagement"; aws_config=aws_config)
enable_proactive_engagement(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("EnableProactiveEngagement", params; aws_config=aws_config)

"""
    get_subscription_state()
    get_subscription_state(params::Dict{String,<:Any})

Returns the SubscriptionState, either Active or Inactive.

"""
get_subscription_state(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("GetSubscriptionState"; aws_config=aws_config)
get_subscription_state(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("GetSubscriptionState", params; aws_config=aws_config)

"""
    list_attacks()
    list_attacks(params::Dict{String,<:Any})

Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"EndTime"`: The end of the time period for the attacks. This is a timestamp type. The
  sample request above indicates a number type because the default used by WAF is Unix time
  in seconds. However any valid timestamp format is allowed.
- `"MaxResults"`: The maximum number of AttackSummary objects to return. If you leave this
  blank, Shield Advanced returns the first 20 results. This is a maximum value. Shield
  Advanced might return the results in smaller batches. That is, the number of objects
  returned could be less than MaxResults, even if there are still more objects yet to return.
  If there are more objects to return, Shield Advanced returns a value in NextToken that you
  can use in your next request, to get the next batch of objects.
- `"NextToken"`: The ListAttacksRequest.NextMarker value from a previous call to
  ListAttacksRequest. Pass null if this is the first call.
- `"ResourceArns"`: The ARN (Amazon Resource Name) of the resource that was attacked. If
  this is left blank, all applicable resources for this account will be included.
- `"StartTime"`: The start of the time period for the attacks. This is a timestamp type.
  The sample request above indicates a number type because the default used by WAF is Unix
  time in seconds. However any valid timestamp format is allowed.
"""
list_attacks(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("ListAttacks"; aws_config=aws_config)
list_attacks(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("ListAttacks", params; aws_config=aws_config)

"""
    list_protection_groups()
    list_protection_groups(params::Dict{String,<:Any})

Retrieves the ProtectionGroup objects for the account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of ProtectionGroup objects to return. If you leave
  this blank, Shield Advanced returns the first 20 results. This is a maximum value. Shield
  Advanced might return the results in smaller batches. That is, the number of objects
  returned could be less than MaxResults, even if there are still more objects yet to return.
  If there are more objects to return, Shield Advanced returns a value in NextToken that you
  can use in your next request, to get the next batch of objects.
- `"NextToken"`: The next token value from a previous call to ListProtectionGroups. Pass
  null if this is the first call.
"""
list_protection_groups(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("ListProtectionGroups"; aws_config=aws_config)
list_protection_groups(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("ListProtectionGroups", params; aws_config=aws_config)

"""
    list_protections()
    list_protections(params::Dict{String,<:Any})

Lists all Protection objects for the account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of Protection objects to return. If you leave this
  blank, Shield Advanced returns the first 20 results. This is a maximum value. Shield
  Advanced might return the results in smaller batches. That is, the number of objects
  returned could be less than MaxResults, even if there are still more objects yet to return.
  If there are more objects to return, Shield Advanced returns a value in NextToken that you
  can use in your next request, to get the next batch of objects.
- `"NextToken"`: The ListProtectionsRequest.NextToken value from a previous call to
  ListProtections. Pass null if this is the first call.
"""
list_protections(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("ListProtections"; aws_config=aws_config)
list_protections(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("ListProtections", params; aws_config=aws_config)

"""
    list_resources_in_protection_group(protection_group_id)
    list_resources_in_protection_group(protection_group_id, params::Dict{String,<:Any})

Retrieves the resources that are included in the protection group.

# Arguments
- `protection_group_id`: The name of the protection group. You use this to identify the
  protection group in lists and to manage the protection group, for example to update,
  delete, or describe it.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of resource ARN objects to return. If you leave this
  blank, Shield Advanced returns the first 20 results. This is a maximum value. Shield
  Advanced might return the results in smaller batches. That is, the number of objects
  returned could be less than MaxResults, even if there are still more objects yet to return.
  If there are more objects to return, Shield Advanced returns a value in NextToken that you
  can use in your next request, to get the next batch of objects.
- `"NextToken"`: The next token value from a previous call to
  ListResourcesInProtectionGroup. Pass null if this is the first call.
"""
list_resources_in_protection_group(ProtectionGroupId; aws_config::AbstractAWSConfig=global_aws_config()) = shield("ListResourcesInProtectionGroup", Dict{String, Any}("ProtectionGroupId"=>ProtectionGroupId); aws_config=aws_config)
list_resources_in_protection_group(ProtectionGroupId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("ListResourcesInProtectionGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ProtectionGroupId"=>ProtectionGroupId), params)); aws_config=aws_config)

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Gets information about Amazon Web Services tags for a specified Amazon Resource Name (ARN)
in Shield.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource to get tags for.

"""
list_tags_for_resource(ResourceARN; aws_config::AbstractAWSConfig=global_aws_config()) = shield("ListTagsForResource", Dict{String, Any}("ResourceARN"=>ResourceARN); aws_config=aws_config)
list_tags_for_resource(ResourceARN, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN), params)); aws_config=aws_config)

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Adds or updates tags for a resource in Shield.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource that you want to add or
  update tags for.
- `tags`: The tags that you want to modify or add to the resource.

"""
tag_resource(ResourceARN, Tags; aws_config::AbstractAWSConfig=global_aws_config()) = shield("TagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags); aws_config=aws_config)
tag_resource(ResourceARN, Tags, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags), params)); aws_config=aws_config)

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes tags from a resource in Shield.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource that you want to remove
  tags from.
- `tag_keys`: The tag key for each tag that you want to remove from the resource.

"""
untag_resource(ResourceARN, TagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = shield("UntagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys); aws_config=aws_config)
untag_resource(ResourceARN, TagKeys, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys), params)); aws_config=aws_config)

"""
    update_emergency_contact_settings()
    update_emergency_contact_settings(params::Dict{String,<:Any})

Updates the details of the list of email addresses and phone numbers that the Shield
Response Team (SRT) can use to contact you if you have proactive engagement enabled, for
escalations to the SRT and to initiate proactive customer support.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"EmergencyContactList"`: A list of email addresses and phone numbers that the Shield
  Response Team (SRT) can use to contact you if you have proactive engagement enabled, for
  escalations to the SRT and to initiate proactive customer support. If you have proactive
  engagement enabled, the contact list must include at least one phone number.
"""
update_emergency_contact_settings(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("UpdateEmergencyContactSettings"; aws_config=aws_config)
update_emergency_contact_settings(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("UpdateEmergencyContactSettings", params; aws_config=aws_config)

"""
    update_protection_group(aggregation, pattern, protection_group_id)
    update_protection_group(aggregation, pattern, protection_group_id, params::Dict{String,<:Any})

Updates an existing protection group. A protection group is a grouping of protected
resources so they can be handled as a collective. This resource grouping improves the
accuracy of detection and reduces false positives.

# Arguments
- `aggregation`: Defines how Shield combines resource data for the group in order to
  detect, mitigate, and report events.   Sum - Use the total traffic across the group. This
  is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances
  that scale manually or automatically.   Mean - Use the average of the traffic across the
  group. This is a good choice for resources that share traffic uniformly. Examples include
  accelerators and load balancers.   Max - Use the highest traffic from each resource. This
  is useful for resources that don't share traffic and for resources that share that traffic
  in a non-uniform way. Examples include Amazon CloudFront distributions and origin resources
  for CloudFront distributions.
- `pattern`: The criteria to use to choose the protected resources for inclusion in the
  group. You can include all resources that have protections, provide a list of resource
  Amazon Resource Names (ARNs), or include all resources of a specified resource type.
- `protection_group_id`: The name of the protection group. You use this to identify the
  protection group in lists and to manage the protection group, for example to update,
  delete, or describe it.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Members"`: The Amazon Resource Names (ARNs) of the resources to include in the
  protection group. You must set this when you set Pattern to ARBITRARY and you must not set
  it for any other Pattern setting.
- `"ResourceType"`: The resource type to include in the protection group. All protected
  resources of this type are included in the protection group. You must set this when you set
  Pattern to BY_RESOURCE_TYPE and you must not set it for any other Pattern setting.
"""
update_protection_group(Aggregation, Pattern, ProtectionGroupId; aws_config::AbstractAWSConfig=global_aws_config()) = shield("UpdateProtectionGroup", Dict{String, Any}("Aggregation"=>Aggregation, "Pattern"=>Pattern, "ProtectionGroupId"=>ProtectionGroupId); aws_config=aws_config)
update_protection_group(Aggregation, Pattern, ProtectionGroupId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("UpdateProtectionGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Aggregation"=>Aggregation, "Pattern"=>Pattern, "ProtectionGroupId"=>ProtectionGroupId), params)); aws_config=aws_config)

"""
    update_subscription()
    update_subscription(params::Dict{String,<:Any})

Updates the details of an existing subscription. Only enter values for parameters you want
to change. Empty parameters are not updated.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AutoRenew"`: When you initally create a subscription, AutoRenew is set to ENABLED. If
  ENABLED, the subscription will be automatically renewed at the end of the existing
  subscription period. You can change this by submitting an UpdateSubscription request. If
  the UpdateSubscription request does not included a value for AutoRenew, the existing value
  for AutoRenew remains unchanged.
"""
update_subscription(; aws_config::AbstractAWSConfig=global_aws_config()) = shield("UpdateSubscription"; aws_config=aws_config)
update_subscription(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = shield("UpdateSubscription", params; aws_config=aws_config)
