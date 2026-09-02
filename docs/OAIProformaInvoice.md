# OAIProformaInvoice

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**convertedAt** | **NSDate*** |  | [optional] 
**convertedToInvoiceId** | **NSString*** | Set when the proforma was converted into a real invoice. References the invoice entity. | [optional] 
**currency** | [**OAICurrencyCode***](OAICurrencyCode.md) |  | 
**customerId** | **NSString*** | References the customer entity. | [optional] 
**customerSnapshot** | [**OAIAnyType***](.md) | Snapshot of the recipient at issue time (address, VAT id, …). | [optional] 
**issueDate** | **NSDate*** |  | 
**lineItems** | [**OAIAnyType***](.md) |  | 
**notes** | **NSString*** |  | [optional] 
**orderNumber** | **NSString*** | Reference to the order/quote this proforma belongs to. | [optional] 
**paymentDueDate** | **NSDate*** | Optional deadline the real invoice should carry after conversion. | [optional] 
**quotationId** | **NSString*** | References the quotation entity. | [optional] 
**status** | [**OAIProformaInvoiceStatus***](OAIProformaInvoiceStatus.md) | &#x60;draft&#x60; | &#x60;sent&#x60; | &#x60;converted&#x60;. | 
**subtotal** | **NSString*** |  | 
**totalAmount** | **NSString*** |  | 
**totalTax** | **NSString*** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


