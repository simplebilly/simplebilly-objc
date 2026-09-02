# OAIWebhookEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attempts** | **NSNumber*** |  | [optional] 
**channel** | **NSString*** | source for inbound, target URL for outbound. | [optional] 
**direction** | [**OAIWebhookDirection***](OAIWebhookDirection.md) | inbound | outbound | 
**eventType** | **NSString*** |  | 
**lastError** | **NSString*** |  | [optional] 
**payload** | [**OAIAnyType***](.md) |  | [optional] 
**status** | [**OAIWebhookEventStatus***](OAIWebhookEventStatus.md) | accepted | delivered | failed | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


