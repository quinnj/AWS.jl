# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: comprehendmedical
using AWS.Compat
using AWS.UUIDs

"""
    describe_entities_detection_v2_job(job_id)
    describe_entities_detection_v2_job(job_id, params::Dict{String,<:Any})

Gets the properties associated with a medical entities detection job. Use this operation to
get the status of a detection job.

# Arguments
- `job_id`: The identifier that Amazon Comprehend Medical generated for the job. The
  StartEntitiesDetectionV2Job operation returns this identifier in its response.

"""
describe_entities_detection_v2_job(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("DescribeEntitiesDetectionV2Job", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
describe_entities_detection_v2_job(JobId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("DescribeEntitiesDetectionV2Job", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), params)); aws_config=aws_config)

"""
    describe_icd10_cminference_job(job_id)
    describe_icd10_cminference_job(job_id, params::Dict{String,<:Any})

Gets the properties associated with an InferICD10CM job. Use this operation to get the
status of an inference job.

# Arguments
- `job_id`: The identifier that Amazon Comprehend Medical generated for the job. The
  StartICD10CMInferenceJob operation returns this identifier in its response.

"""
describe_icd10_cminference_job(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("DescribeICD10CMInferenceJob", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
describe_icd10_cminference_job(JobId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("DescribeICD10CMInferenceJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), params)); aws_config=aws_config)

"""
    describe_phidetection_job(job_id)
    describe_phidetection_job(job_id, params::Dict{String,<:Any})

Gets the properties associated with a protected health information (PHI) detection job. Use
this operation to get the status of a detection job.

# Arguments
- `job_id`: The identifier that Amazon Comprehend Medical generated for the job. The
  StartPHIDetectionJob operation returns this identifier in its response.

"""
describe_phidetection_job(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("DescribePHIDetectionJob", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
describe_phidetection_job(JobId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("DescribePHIDetectionJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), params)); aws_config=aws_config)

"""
    describe_rx_norm_inference_job(job_id)
    describe_rx_norm_inference_job(job_id, params::Dict{String,<:Any})

Gets the properties associated with an InferRxNorm job. Use this operation to get the
status of an inference job.

# Arguments
- `job_id`: The identifier that Amazon Comprehend Medical generated for the job. The
  StartRxNormInferenceJob operation returns this identifier in its response.

"""
describe_rx_norm_inference_job(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("DescribeRxNormInferenceJob", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
describe_rx_norm_inference_job(JobId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("DescribeRxNormInferenceJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), params)); aws_config=aws_config)

"""
    detect_entities(text)
    detect_entities(text, params::Dict{String,<:Any})

The DetectEntities operation is deprecated. You should use the DetectEntitiesV2 operation
instead.  Inspects the clinical text for a variety of medical entities and returns specific
information about them such as entity category, location, and confidence score on that
information .

# Arguments
- `text`:  A UTF-8 text string containing the clinical content being examined for entities.
  Each string must contain fewer than 20,000 bytes of characters.

"""
detect_entities(Text; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("DetectEntities", Dict{String, Any}("Text"=>Text); aws_config=aws_config)
detect_entities(Text, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("DetectEntities", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Text"=>Text), params)); aws_config=aws_config)

"""
    detect_entities_v2(text)
    detect_entities_v2(text, params::Dict{String,<:Any})

Inspects the clinical text for a variety of medical entities and returns specific
information about them such as entity category, location, and confidence score on that
information. Amazon Comprehend Medical only detects medical entities in English language
texts. The DetectEntitiesV2 operation replaces the DetectEntities operation. This new
action uses a different model for determining the entities in your medical text and changes
the way that some entities are returned in the output. You should use the DetectEntitiesV2
operation in all new applications. The DetectEntitiesV2 operation returns the Acuity and
Direction entities as attributes instead of types.

# Arguments
- `text`: A UTF-8 string containing the clinical content being examined for entities. Each
  string must contain fewer than 20,000 bytes of characters.

"""
detect_entities_v2(Text; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("DetectEntitiesV2", Dict{String, Any}("Text"=>Text); aws_config=aws_config)
detect_entities_v2(Text, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("DetectEntitiesV2", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Text"=>Text), params)); aws_config=aws_config)

"""
    detect_phi(text)
    detect_phi(text, params::Dict{String,<:Any})

 Inspects the clinical text for protected health information (PHI) entities and returns the
entity category, location, and confidence score for each entity. Amazon Comprehend Medical
only detects entities in English language texts.

# Arguments
- `text`:  A UTF-8 text string containing the clinical content being examined for PHI
  entities. Each string must contain fewer than 20,000 bytes of characters.

"""
detect_phi(Text; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("DetectPHI", Dict{String, Any}("Text"=>Text); aws_config=aws_config)
detect_phi(Text, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("DetectPHI", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Text"=>Text), params)); aws_config=aws_config)

"""
    infer_icd10_cm(text)
    infer_icd10_cm(text, params::Dict{String,<:Any})

InferICD10CM detects medical conditions as entities listed in a patient record and links
those entities to normalized concept identifiers in the ICD-10-CM knowledge base from the
Centers for Disease Control. Amazon Comprehend Medical only detects medical entities in
English language texts.

# Arguments
- `text`: The input text used for analysis. The input for InferICD10CM is a string from 1
  to 10000 characters.

"""
infer_icd10_cm(Text; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("InferICD10CM", Dict{String, Any}("Text"=>Text); aws_config=aws_config)
infer_icd10_cm(Text, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("InferICD10CM", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Text"=>Text), params)); aws_config=aws_config)

"""
    infer_rx_norm(text)
    infer_rx_norm(text, params::Dict{String,<:Any})

InferRxNorm detects medications as entities listed in a patient record and links to the
normalized concept identifiers in the RxNorm database from the National Library of
Medicine. Amazon Comprehend Medical only detects medical entities in English language texts.

# Arguments
- `text`: The input text used for analysis. The input for InferRxNorm is a string from 1 to
  10000 characters.

"""
infer_rx_norm(Text; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("InferRxNorm", Dict{String, Any}("Text"=>Text); aws_config=aws_config)
infer_rx_norm(Text, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("InferRxNorm", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Text"=>Text), params)); aws_config=aws_config)

"""
    list_entities_detection_v2_jobs()
    list_entities_detection_v2_jobs(params::Dict{String,<:Any})

Gets a list of medical entity detection jobs that you have submitted.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Filter"`: Filters the jobs that are returned. You can filter jobs based on their names,
  status, or the date and time that they were submitted. You can only set one filter at a
  time.
- `"MaxResults"`: The maximum number of results to return in each page. The default is 100.
- `"NextToken"`: Identifies the next page of results to return.
"""
list_entities_detection_v2_jobs(; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("ListEntitiesDetectionV2Jobs"; aws_config=aws_config)
list_entities_detection_v2_jobs(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("ListEntitiesDetectionV2Jobs", params; aws_config=aws_config)

"""
    list_icd10_cminference_jobs()
    list_icd10_cminference_jobs(params::Dict{String,<:Any})

Gets a list of InferICD10CM jobs that you have submitted.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Filter"`: Filters the jobs that are returned. You can filter jobs based on their names,
  status, or the date and time that they were submitted. You can only set one filter at a
  time.
- `"MaxResults"`: The maximum number of results to return in each page. The default is 100.
- `"NextToken"`: Identifies the next page of results to return.
"""
list_icd10_cminference_jobs(; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("ListICD10CMInferenceJobs"; aws_config=aws_config)
list_icd10_cminference_jobs(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("ListICD10CMInferenceJobs", params; aws_config=aws_config)

"""
    list_phidetection_jobs()
    list_phidetection_jobs(params::Dict{String,<:Any})

Gets a list of protected health information (PHI) detection jobs that you have submitted.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Filter"`: Filters the jobs that are returned. You can filter jobs based on their names,
  status, or the date and time that they were submitted. You can only set one filter at a
  time.
- `"MaxResults"`: The maximum number of results to return in each page. The default is 100.
- `"NextToken"`: Identifies the next page of results to return.
"""
list_phidetection_jobs(; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("ListPHIDetectionJobs"; aws_config=aws_config)
list_phidetection_jobs(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("ListPHIDetectionJobs", params; aws_config=aws_config)

"""
    list_rx_norm_inference_jobs()
    list_rx_norm_inference_jobs(params::Dict{String,<:Any})

Gets a list of InferRxNorm jobs that you have submitted.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Filter"`: Filters the jobs that are returned. You can filter jobs based on their names,
  status, or the date and time that they were submitted. You can only set one filter at a
  time.
- `"MaxResults"`: Identifies the next page of results to return.
- `"NextToken"`: Identifies the next page of results to return.
"""
list_rx_norm_inference_jobs(; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("ListRxNormInferenceJobs"; aws_config=aws_config)
list_rx_norm_inference_jobs(params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("ListRxNormInferenceJobs", params; aws_config=aws_config)

"""
    start_entities_detection_v2_job(data_access_role_arn, input_data_config, language_code, output_data_config)
    start_entities_detection_v2_job(data_access_role_arn, input_data_config, language_code, output_data_config, params::Dict{String,<:Any})

Starts an asynchronous medical entity detection job for a collection of documents. Use the
DescribeEntitiesDetectionV2Job operation to track the status of a job.

# Arguments
- `data_access_role_arn`: The Amazon Resource Name (ARN) of the AWS Identity and Access
  Management (IAM) role that grants Amazon Comprehend Medical read access to your input data.
  For more information, see  Role-Based Permissions Required for Asynchronous Operations.
- `input_data_config`: Specifies the format and location of the input data for the job.
- `language_code`: The language of the input documents. All documents must be in the same
  language.
- `output_data_config`: Specifies where to send the output files.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientRequestToken"`: A unique identifier for the request. If you don't set the client
  request token, Amazon Comprehend Medical generates one.
- `"JobName"`: The identifier of the job.
- `"KMSKey"`: An AWS Key Management Service key to encrypt your output files. If you do not
  specify a key, the files are written in plain text.
"""
start_entities_detection_v2_job(DataAccessRoleArn, InputDataConfig, LanguageCode, OutputDataConfig; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StartEntitiesDetectionV2Job", Dict{String, Any}("DataAccessRoleArn"=>DataAccessRoleArn, "InputDataConfig"=>InputDataConfig, "LanguageCode"=>LanguageCode, "OutputDataConfig"=>OutputDataConfig, "ClientRequestToken"=>string(uuid4())); aws_config=aws_config)
start_entities_detection_v2_job(DataAccessRoleArn, InputDataConfig, LanguageCode, OutputDataConfig, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StartEntitiesDetectionV2Job", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DataAccessRoleArn"=>DataAccessRoleArn, "InputDataConfig"=>InputDataConfig, "LanguageCode"=>LanguageCode, "OutputDataConfig"=>OutputDataConfig, "ClientRequestToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    start_icd10_cminference_job(data_access_role_arn, input_data_config, language_code, output_data_config)
    start_icd10_cminference_job(data_access_role_arn, input_data_config, language_code, output_data_config, params::Dict{String,<:Any})

Starts an asynchronous job to detect medical conditions and link them to the ICD-10-CM
ontology. Use the DescribeICD10CMInferenceJob operation to track the status of a job.

# Arguments
- `data_access_role_arn`: The Amazon Resource Name (ARN) of the AWS Identity and Access
  Management (IAM) role that grants Amazon Comprehend Medical read access to your input data.
  For more information, see  Role-Based Permissions Required for Asynchronous Operations.
- `input_data_config`: Specifies the format and location of the input data for the job.
- `language_code`: The language of the input documents. All documents must be in the same
  language.
- `output_data_config`: Specifies where to send the output files.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientRequestToken"`: A unique identifier for the request. If you don't set the client
  request token, Amazon Comprehend Medical generates one.
- `"JobName"`: The identifier of the job.
- `"KMSKey"`: An AWS Key Management Service key to encrypt your output files. If you do not
  specify a key, the files are written in plain text.
"""
start_icd10_cminference_job(DataAccessRoleArn, InputDataConfig, LanguageCode, OutputDataConfig; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StartICD10CMInferenceJob", Dict{String, Any}("DataAccessRoleArn"=>DataAccessRoleArn, "InputDataConfig"=>InputDataConfig, "LanguageCode"=>LanguageCode, "OutputDataConfig"=>OutputDataConfig, "ClientRequestToken"=>string(uuid4())); aws_config=aws_config)
start_icd10_cminference_job(DataAccessRoleArn, InputDataConfig, LanguageCode, OutputDataConfig, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StartICD10CMInferenceJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DataAccessRoleArn"=>DataAccessRoleArn, "InputDataConfig"=>InputDataConfig, "LanguageCode"=>LanguageCode, "OutputDataConfig"=>OutputDataConfig, "ClientRequestToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    start_phidetection_job(data_access_role_arn, input_data_config, language_code, output_data_config)
    start_phidetection_job(data_access_role_arn, input_data_config, language_code, output_data_config, params::Dict{String,<:Any})

Starts an asynchronous job to detect protected health information (PHI). Use the
DescribePHIDetectionJob operation to track the status of a job.

# Arguments
- `data_access_role_arn`: The Amazon Resource Name (ARN) of the AWS Identity and Access
  Management (IAM) role that grants Amazon Comprehend Medical read access to your input data.
  For more information, see  Role-Based Permissions Required for Asynchronous Operations.
- `input_data_config`: Specifies the format and location of the input data for the job.
- `language_code`: The language of the input documents. All documents must be in the same
  language.
- `output_data_config`: Specifies where to send the output files.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientRequestToken"`: A unique identifier for the request. If you don't set the client
  request token, Amazon Comprehend Medical generates one.
- `"JobName"`: The identifier of the job.
- `"KMSKey"`: An AWS Key Management Service key to encrypt your output files. If you do not
  specify a key, the files are written in plain text.
"""
start_phidetection_job(DataAccessRoleArn, InputDataConfig, LanguageCode, OutputDataConfig; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StartPHIDetectionJob", Dict{String, Any}("DataAccessRoleArn"=>DataAccessRoleArn, "InputDataConfig"=>InputDataConfig, "LanguageCode"=>LanguageCode, "OutputDataConfig"=>OutputDataConfig, "ClientRequestToken"=>string(uuid4())); aws_config=aws_config)
start_phidetection_job(DataAccessRoleArn, InputDataConfig, LanguageCode, OutputDataConfig, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StartPHIDetectionJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DataAccessRoleArn"=>DataAccessRoleArn, "InputDataConfig"=>InputDataConfig, "LanguageCode"=>LanguageCode, "OutputDataConfig"=>OutputDataConfig, "ClientRequestToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    start_rx_norm_inference_job(data_access_role_arn, input_data_config, language_code, output_data_config)
    start_rx_norm_inference_job(data_access_role_arn, input_data_config, language_code, output_data_config, params::Dict{String,<:Any})

Starts an asynchronous job to detect medication entities and link them to the RxNorm
ontology. Use the DescribeRxNormInferenceJob operation to track the status of a job.

# Arguments
- `data_access_role_arn`: The Amazon Resource Name (ARN) of the AWS Identity and Access
  Management (IAM) role that grants Amazon Comprehend Medical read access to your input data.
  For more information, see  Role-Based Permissions Required for Asynchronous Operations.
- `input_data_config`: Specifies the format and location of the input data for the job.
- `language_code`: The language of the input documents. All documents must be in the same
  language.
- `output_data_config`: Specifies where to send the output files.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientRequestToken"`: A unique identifier for the request. If you don't set the client
  request token, Amazon Comprehend Medical generates one.
- `"JobName"`: The identifier of the job.
- `"KMSKey"`: An AWS Key Management Service key to encrypt your output files. If you do not
  specify a key, the files are written in plain text.
"""
start_rx_norm_inference_job(DataAccessRoleArn, InputDataConfig, LanguageCode, OutputDataConfig; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StartRxNormInferenceJob", Dict{String, Any}("DataAccessRoleArn"=>DataAccessRoleArn, "InputDataConfig"=>InputDataConfig, "LanguageCode"=>LanguageCode, "OutputDataConfig"=>OutputDataConfig, "ClientRequestToken"=>string(uuid4())); aws_config=aws_config)
start_rx_norm_inference_job(DataAccessRoleArn, InputDataConfig, LanguageCode, OutputDataConfig, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StartRxNormInferenceJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DataAccessRoleArn"=>DataAccessRoleArn, "InputDataConfig"=>InputDataConfig, "LanguageCode"=>LanguageCode, "OutputDataConfig"=>OutputDataConfig, "ClientRequestToken"=>string(uuid4())), params)); aws_config=aws_config)

"""
    stop_entities_detection_v2_job(job_id)
    stop_entities_detection_v2_job(job_id, params::Dict{String,<:Any})

Stops a medical entities detection job in progress.

# Arguments
- `job_id`: The identifier of the medical entities job to stop.

"""
stop_entities_detection_v2_job(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StopEntitiesDetectionV2Job", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
stop_entities_detection_v2_job(JobId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StopEntitiesDetectionV2Job", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), params)); aws_config=aws_config)

"""
    stop_icd10_cminference_job(job_id)
    stop_icd10_cminference_job(job_id, params::Dict{String,<:Any})

Stops an InferICD10CM inference job in progress.

# Arguments
- `job_id`: The identifier of the job.

"""
stop_icd10_cminference_job(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StopICD10CMInferenceJob", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
stop_icd10_cminference_job(JobId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StopICD10CMInferenceJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), params)); aws_config=aws_config)

"""
    stop_phidetection_job(job_id)
    stop_phidetection_job(job_id, params::Dict{String,<:Any})

Stops a protected health information (PHI) detection job in progress.

# Arguments
- `job_id`: The identifier of the PHI detection job to stop.

"""
stop_phidetection_job(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StopPHIDetectionJob", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
stop_phidetection_job(JobId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StopPHIDetectionJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), params)); aws_config=aws_config)

"""
    stop_rx_norm_inference_job(job_id)
    stop_rx_norm_inference_job(job_id, params::Dict{String,<:Any})

Stops an InferRxNorm inference job in progress.

# Arguments
- `job_id`: The identifier of the job.

"""
stop_rx_norm_inference_job(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StopRxNormInferenceJob", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
stop_rx_norm_inference_job(JobId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = comprehendmedical("StopRxNormInferenceJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), params)); aws_config=aws_config)
