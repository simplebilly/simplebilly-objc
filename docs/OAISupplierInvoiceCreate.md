# OAISupplierInvoiceCreate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **NSString*** |  | [optional] 
**goodsReceiptId** | **NSString*** | References the goods receipt entity. | [optional] 
**invoiceDate** | **NSDate*** |  | 
**invoiceNumber** | **NSString*** |  | 
**lineItems** | [**OAIAnyType***](.md) | JSON array of &#x60;{product_id, name, quantity, unitPriceNet, taxRate}&#x60;. | 
**notes** | **NSString*** |  | [optional] 
**purchaseOrderId** | **NSString*** | References the purchase order entity. | [optional] 
**status** | [**OAISupplierInvoiceStatus***](OAISupplierInvoiceStatus.md) | One of: draft | matched | has_variances | posted | cancelled | 
**supplierContactId** | **NSString*** | References the supplier entity. | [optional] 
**supplierName** | **NSString*** |  | [optional] 
**totalGrossAmount** | **NSString*** |  | [optional] 
**totalNetAmount** | **NSString*** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


