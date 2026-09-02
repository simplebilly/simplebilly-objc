# OAIPurchaseOrderUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **NSString*** |  | [optional] 
**deliveryAddress** | [**OAIAnyType***](.md) |  | [optional] 
**expectedDeliveryDate** | **NSDate*** |  | [optional] 
**lineItems** | [**OAIAnyType***](.md) | JSON array of &#x60;{product_id, name, quantity, unit_price_net, tax_rate, delivery_date}&#x60;. | [optional] 
**notes** | **NSString*** |  | [optional] 
**orderDate** | **NSDate*** |  | [optional] 
**poNumber** | **NSString*** |  | [optional] 
**status** | [**OAIPurchaseOrderStatus***](OAIPurchaseOrderStatus.md) | One of: draft | ordered | partially_received | received | cancelled | [optional] 
**supplierContactId** | **NSString*** | References the supplier entity. | [optional] 
**supplierName** | **NSString*** |  | [optional] 
**totalGrossAmount** | **NSString*** |  | [optional] 
**totalNetAmount** | **NSString*** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


