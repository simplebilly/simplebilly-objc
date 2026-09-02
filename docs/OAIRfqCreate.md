# OAIRfqCreate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **NSString*** |  | [optional] 
**lineItems** | [**OAIAnyType***](.md) | JSON array of &#x60;{product_id, name, sku, quantity, requested_unit_price?, quoted_unit_price?}&#x60;. | 
**notes** | **NSString*** |  | [optional] 
**requestedDate** | **NSDate*** |  | 
**responseDate** | **NSDate*** |  | [optional] 
**rfqNumber** | **NSString*** |  | 
**status** | [**OAIRfqStatus***](OAIRfqStatus.md) | One of: draft | sent | offer_received | rejected | converted | 
**supplierContactId** | **NSString*** | References the supplier entity. | [optional] 
**supplierName** | **NSString*** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


