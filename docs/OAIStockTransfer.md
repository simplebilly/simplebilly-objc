# OAIStockTransfer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lineItems** | [**OAIAnyType***](.md) | JSON array of &#x60;{product_id, name, quantity, batch_number?}&#x60;. | 
**notes** | **NSString*** |  | [optional] 
**sourceWarehouseId** | **NSString*** | References the warehouse entity. | 
**status** | [**OAIStockTransferStatus***](OAIStockTransferStatus.md) | One of: draft | completed | cancelled | 
**targetWarehouseId** | **NSString*** | References the warehouse entity. | 
**transferDate** | **NSDate*** |  | 
**transferNumber** | **NSString*** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


