# OAISupplierInvoiceUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **NSString*** |  | [optional] 
**goodsReceiptId** | **NSString*** | References the goods receipt entity. | [optional] 
**invoiceDate** | **NSDate*** |  | [optional] 
**invoiceNumber** | **NSString*** |  | [optional] 
**lineItems** | [**OAIAnyType***](.md) | JSON array of &#x60;{product_id, name, quantity, unitPriceNet, taxRate}&#x60;. | [optional] 
**notes** | **NSString*** |  | [optional] 
**purchaseOrderId** | **NSString*** | References the purchase order entity. | [optional] 
**status** | [**OAISupplierInvoiceStatus***](OAISupplierInvoiceStatus.md) | One of: draft | matched | has_variances | posted | cancelled | [optional] 
**supplierContactId** | **NSString*** | References the supplier entity. | [optional] 
**supplierName** | **NSString*** |  | [optional] 
**totalGrossAmount** | **NSString*** |  | [optional] 
**totalNetAmount** | **NSString*** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


