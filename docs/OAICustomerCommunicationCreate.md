# OAICustomerCommunicationCreate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**body** | **NSString*** | The message body, call summary or note text. | [optional] 
**channel** | [**OAICommunicationChannel***](OAICommunicationChannel.md) |  | 
**contactId** | **NSString*** | The contact (customer/supplier) this communication belongs to. References the contact entity. | 
**counterparty** | **NSString*** | Email/phone of the counterparty, if applicable. | [optional] 
**direction** | [**OAICommunicationDirection***](OAICommunicationDirection.md) |  | 
**occurredAt** | **NSDate*** | When the communication happened (defaults to now on create). | [optional] 
**subject** | **NSString*** |  | [optional] 
**tags** | [**OAIAnyType***](.md) | Free-form tags, e.g. &#x60;[\&quot;follow-up-required\&quot;]&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


