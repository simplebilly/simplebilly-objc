# OAIProductionOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bomId** | **NSString*** | References the BOM entity. | [optional] 
**components** | [**OAIAnyType***](.md) | JSON snapshot of the BOM components at creation time. | [optional] 
**endDate** | **NSDate*** |  | [optional] 
**notes** | **NSString*** |  | [optional] 
**orderNumber** | **NSString*** |  | 
**productId** | **NSString*** | The finished product to manufacture. References the product entity. | 
**quantity** | **NSNumber*** | Quantity of finished product to produce. | 
**sourceWarehouseId** | **NSString*** | Warehouse components are consumed from. References the warehouse entity. | [optional] 
**startDate** | **NSDate*** |  | [optional] 
**status** | [**OAIProductionOrderStatus***](OAIProductionOrderStatus.md) | One of: planned | in_production | completed | cancelled | [optional] 
**targetWarehouseId** | **NSString*** | Warehouse the finished product is added to. References the warehouse entity. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


