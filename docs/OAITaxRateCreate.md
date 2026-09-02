# OAITaxRateCreate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**countryCode** | **NSString*** | ISO 3166-1 alpha-2 country code. | 
**effectiveFrom** | **NSDate*** | Date this rate took effect; &#x60;None&#x60; &#x3D; not date-bound. | [optional] 
**isDefault** | **NSNumber*** | Default rate for the country (one per country); fallback for lookups when no dated rate applies. | 
**name** | **NSString*** | Human name, e.g. \&quot;VAT\&quot;. | 
**ratePercent** | **NSNumber*** | Rate in hundredths of a percent: 1900 &#x3D; 19.00%. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


