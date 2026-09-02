# OAISubmitResultDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**answers** | **NSArray&lt;NSNumber*&gt;*** | Selected answer indices (required for scored builtin trainings). | 
**assignmentId** | **NSString*** |  | [optional] 
**score** | **NSNumber*** | Score 0–100. Only trusted for plugin trainings without server-side scoring; builtin trainings are always re-scored from &#x60;answers&#x60;. | 
**trainingCode** | **NSString*** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


