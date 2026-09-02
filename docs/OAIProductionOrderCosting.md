# OAIProductionOrderCosting

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**costPerUnit** | **NSString*** | material_cost_total ÷ quantity. | 
**costSource** | **NSString*** | \&quot;actual\&quot; when costed from stock-movement consumption, else \&quot;planned\&quot;. | 
**lines** | [**NSArray&lt;OAICostingLine&gt;***](OAICostingLine.md) |  | 
**marginPerUnit** | **NSString*** | sale_price − cost_per_unit. | [optional] 
**marginPercent** | **NSString*** | margin_per_unit ÷ cost_per_unit as a percentage. | [optional] 
**materialCostTotal** | **NSString*** | Total material cost for the whole order. | 
**orderNumber** | **NSString*** |  | 
**productionOrderId** | **NSString*** |  | 
**quantity** | **NSNumber*** |  | 
**salePrice** | **NSString*** | Finished product&#39;s sale price per unit (used to compute margin). | [optional] 
**status** | **NSString*** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


