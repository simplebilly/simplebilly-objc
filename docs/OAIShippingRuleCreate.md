# OAIShippingRuleCreate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**carrier** | **NSString*** | Provider that auto-filled this rule (e.g. \&quot;ups\&quot;), if any. | [optional] 
**country** | [**OAICountryCode***](OAICountryCode.md) | None &#x3D; applies to all countries. | [optional] 
**deliveryTime** | **NSString*** | Delivery time text, e.g. \&quot;1-3\&quot;. | [optional] 
**isActive** | **NSNumber*** |  | [optional] 
**maxWeightKg** | **NSNumber*** |  | [optional] 
**minWeightKg** | **NSNumber*** |  | [optional] 
**name** | **NSString*** | Delivery-method label, e.g. \&quot;Standardversand\&quot;. | 
**notes** | **NSString*** |  | [optional] 
**price** | **NSString*** | Shipping cost in the shop&#39;s currency. | 
**priority** | **NSNumber*** | Lower wins when multiple rules match. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


