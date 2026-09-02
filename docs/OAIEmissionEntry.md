# OAIEmissionEntry

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activityValue** | **NSString*** | Activity amount in &#x60;unit&#x60; (kWh, l, km, t, tkm, EUR). | 
**categoryId** | **NSString*** | GHG-Protocol category key, e.g. \&quot;purchased_goods\&quot;, \&quot;business_travel\&quot;. | 
**_description** | **NSString*** |  | 
**efSource** | **NSString*** | Emission-factor source, e.g. \&quot;UBA-2024\&quot;, \&quot;DEFRA-2024\&quot;. | 
**efVersion** | **NSString*** |  | 
**method** | [**OAIEmissionMethod***](OAIEmissionMethod.md) | \&quot;activity\&quot; | \&quot;spend\&quot; | \&quot;supplier\&quot;. | 
**scope** | [**OAIGhgScope***](OAIGhgScope.md) | GHG scope: \&quot;1\&quot; | \&quot;2\&quot; | \&quot;3\&quot;. | 
**tco2e** | **NSString*** | Computed server-side: activity * factor / 1000, rounded to 4 dp. | 
**unit** | **NSString*** | Unit of the activity value. | 
**updatedAt** | **NSDate*** |  | [optional] 
**year** | **NSNumber*** | Reporting year. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


