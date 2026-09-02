# OAIJob

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attempts** | **NSNumber*** |  | [optional] 
**jobType** | **NSString*** | Discriminator the worker dispatches on (e.g. \&quot;webhook.deliver\&quot;). | 
**maxAttempts** | **NSNumber*** |  | 
**payload** | [**OAIAnyType***](.md) |  | [optional] 
**runAt** | **NSDate*** | Earliest execution time; None &#x3D; run now. | [optional] 
**status** | [**OAIJobStatus***](OAIJobStatus.md) | pending | running | done | failed | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


