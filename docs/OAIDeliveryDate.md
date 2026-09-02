# OAIDeliveryDate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerId** | **NSString*** | References the customer entity. | [optional] 
**fulfilledDate** | **NSDate*** | Date actually delivered (set on fulfillment). | [optional] 
**note** | **NSString*** |  | [optional] 
**orderNumber** | **NSString*** | Sales order number (&#x60;order.order_number&#x60;). | 
**originalDate** | **NSDate*** | Original date promised before rescheduling. | [optional] 
**productId** | **NSString*** | Product line item this date applies to, if per-item. References the product entity. | [optional] 
**promisedDate** | **NSDate*** | Date promised to the customer. | 
**status** | [**OAIDeliveryDateStatus***](OAIDeliveryDateStatus.md) | One of: promised | confirmed | rescheduled | fulfilled | late | cancelled | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


