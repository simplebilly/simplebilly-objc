# OAIReturnLogisticsSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**byStatus** | [**OAIAnyType***](.md) | Number of return orders per status. | 
**byWarehouse** | [**NSArray&lt;OAIReturnWarehouseSummary&gt;***](OAIReturnWarehouseSummary.md) | Per-warehouse aggregation. | 
**itemsRestocked** | **NSNumber*** | Sum of &#x60;restock: true&#x60; line-item quantities. | 
**itemsScrapped** | **NSNumber*** | Sum of &#x60;restock: false&#x60; line-item quantities (scrapped/disposed). | 
**totalItems** | **NSNumber*** | Sum of all line-item quantities across returns. | 
**totalReturns** | **NSNumber*** | Total number of return orders (excluding soft-deleted). | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


