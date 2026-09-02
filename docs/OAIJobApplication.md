# OAIJobApplication

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cvFile** | **NSString*** | Relative path of the stored CV file under the upload dir. | [optional] 
**cvText** | **NSString*** | Extracted CV text, used for match-scoring. | [optional] 
**email** | **NSString*** |  | [optional] 
**matchReason** | **NSString*** |  | [optional] 
**matchScore** | **NSNumber*** | 0-100 LLM match score against the posting&#39;s required profile. | [optional] 
**name** | **NSString*** |  | [optional] 
**phone** | **NSString*** |  | [optional] 
**postingId** | **NSString*** | References the job_posting entity. | [optional] 
**source** | **NSString*** | website | email | board | 
**status** | [**OAIApplicationStatus***](OAIApplicationStatus.md) | new | reviewing | interview | hired | rejected | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


