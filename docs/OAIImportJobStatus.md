# OAIImportJobStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **NSString*** | Set only when the job failed. | [optional] 
**jobId** | **NSString*** |  | 
**processed** | **NSNumber*** |  | 
**progress** | **NSNumber*** | 0–100 | 
**provider** | **NSString*** | Which competitor the import came from (lexoffice | billbee); the frontend uses it to label the job. Absent for legacy jobs. | [optional] 
**stage** | **NSString*** | queued | fetching | downloading | importing | done | 
**status** | **NSString*** | pending | running | done | failed | 
**total** | **NSNumber*** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


