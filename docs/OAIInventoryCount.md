# OAIInventoryCount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**countDate** | **NSDate*** |  | 
**countNumber** | **NSString*** |  | 
**lineItems** | [**OAIAnyType***](.md) | JSON array of &#x60;{product_id, name, sku, expected_quantity, counted_quantity, bin_location?, batch_number?, variance}&#x60;. | 
**notes** | **NSString*** |  | [optional] 
**status** | [**OAIInventoryCountStatus***](OAIInventoryCountStatus.md) | One of: draft | counting | reviewed | posted | 
**warehouseId** | **NSString*** | References the warehouse entity. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


