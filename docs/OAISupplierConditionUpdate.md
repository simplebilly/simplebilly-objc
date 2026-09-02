# OAISupplierConditionUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **NSString*** | Currency for the minimum order value. | [optional] 
**deliveryTerms** | **NSString*** | Incoterms, e.g. \&quot;EXW\&quot;, \&quot;DAP\&quot;. | [optional] 
**earlyPaymentDiscountPercent** | **NSString*** | Early-payment discount percentage (Skonto), e.g. 2.0. | [optional] 
**isDefault** | **NSNumber*** | Is this the default condition for the supplier? | [optional] 
**minimumOrderValue** | **NSString*** | Minimum order value required for this supplier. | [optional] 
**notes** | **NSString*** |  | [optional] 
**paymentDueDays** | **NSNumber*** | Number of days within which payment is due. | [optional] 
**paymentTerms** | **NSString*** | Payment terms, e.g. \&quot;14 Tage, 2% Skonto\&quot;. | [optional] 
**supplierContactId** | **NSString*** | The supplier this condition applies to (&#x60;contact_id&#x60;). References the supplier entity. | [optional] 
**supplierName** | **NSString*** | The name of the supplier, denormalized for easy listing. | [optional] 
**volumeDiscountTiers** | [**OAIAnyType***](.md) | Tiered discounts: JSON array of &#x60;{min_quantity, discount_percent}&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


