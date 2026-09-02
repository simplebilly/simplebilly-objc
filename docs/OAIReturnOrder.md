# OAIReturnOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerContactId** | **NSString*** | References the contact entity. | [optional] 
**customerName** | **NSString*** |  | [optional] 
**lineItems** | [**OAIAnyType***](.md) | JSON array of &#x60;{product_id, name, quantity, condition, restock, batch_number?}&#x60;. | [optional] 
**notes** | **NSString*** |  | [optional] 
**orderId** | **NSString*** | References the order entity. | [optional] 
**orderNumber** | **NSString*** |  | [optional] 
**returnNumber** | **NSString*** |  | 
**returnReason** | **NSString*** |  | [optional] 
**status** | [**OAIReturnOrderStatus***](OAIReturnOrderStatus.md) | One of: requested | received | inspected | restocked | closed | 
**warehouseId** | **NSString*** | Warehouse into which restockable items are returned. References the warehouse entity. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


