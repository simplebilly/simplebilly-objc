# OAIInvoiceCreate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | [**OAIAnyType***](.md) |  | [optional] 
**billingPeriodEnd** | **NSDate*** |  | [optional] 
**billingPeriodStart** | **NSDate*** |  | [optional] 
**cancellationDate** | **NSDate*** |  | [optional] 
**cancellationInvoiceId** | **NSString*** | References the invoice entity. | [optional] 
**cancellationReason** | **NSString*** |  | [optional] 
**contractId** | **NSString*** | References the contract entity. | [optional] 
**currency** | [**OAICurrencyCode***](OAICurrencyCode.md) |  | 
**customerId** | **NSString*** | References the customer entity. | [optional] 
**discountAmount** | **NSString*** |  | [optional] 
**discountDays** | **NSNumber*** |  | [optional] 
**discountPercentage** | **NSString*** |  | [optional] 
**documentType** | [**OAIDocumentType***](OAIDocumentType.md) |  | [optional] 
**dunningLevel** | **NSNumber*** |  | [optional] 
**inputVatAmount** | **NSString*** |  | [optional] 
**inputVatDeductible** | **NSNumber*** |  | [optional] 
**inputVatPercentage** | **NSString*** |  | [optional] 
**introductionText** | **NSString*** |  | [optional] 
**invoiceType** | [**OAIInvoiceType***](OAIInvoiceType.md) |  | 
**isCancelled** | **NSNumber*** |  | [optional] 
**isDraft** | **NSNumber*** |  | [optional] 
**isEuAcquisition** | **NSNumber*** |  | [optional] 
**isEuDelivery** | **NSNumber*** |  | [optional] 
**isIntraCommunityAcquisition** | **NSNumber*** |  | [optional] 
**isReverseCharge** | **NSNumber*** |  | [optional] 
**issueDate** | **NSDate*** |  | 
**ledgerAccount** | **NSString*** |  | [optional] 
**lineItems** | [**OAIAnyType***](.md) |  | 
**margin25a** | **NSNumber*** |  | [optional] 
**margin25aGross** | **NSString*** |  | [optional] 
**margin25aPurchasePrice** | **NSString*** |  | [optional] 
**notes** | **NSString*** |  | [optional] 
**orderNumber** | **NSString*** |  | [optional] 
**originalPdfPath** | **NSString*** |  | [optional] 
**paidAmount** | **NSString*** |  | [optional] 
**paymentDueDate** | **NSDate*** |  | [optional] 
**paymentStatus** | [**OAIPaymentStatus***](OAIPaymentStatus.md) |  | [optional] 
**paymentTermsText** | **NSString*** |  | [optional] 
**precedingSalesVoucherId** | **NSString*** | References the preceding sales voucher entity. | [optional] 
**precedingSalesVoucherType** | [**OAIPrecedingSalesVoucherType***](OAIPrecedingSalesVoucherType.md) |  | [optional] 
**receiptConfirmationAvailable** | **NSNumber*** |  | [optional] 
**relatedInvoiceId** | **NSString*** | References the invoice entity. | [optional] 
**relationshipType** | **NSString*** |  | [optional] 
**senderSnapshot** | [**OAIAnyType***](.md) |  | [optional] 
**sentAt** | **NSDate*** |  | [optional] 
**servicePeriodEnd** | **NSDate*** |  | [optional] 
**servicePeriodStart** | **NSDate*** |  | [optional] 
**status** | [**OAIInvoiceStatus***](OAIInvoiceStatus.md) |  | 
**subtotal** | **NSString*** |  | 
**supplierId** | **NSString*** | References the supplier entity. | [optional] 
**taxExemptionReason** | **NSString*** |  | [optional] 
**totalAmount** | **NSString*** |  | 
**totalTax** | **NSString*** |  | 
**vatCountry** | [**OAICountryCode***](OAICountryCode.md) |  | [optional] 
**vatSpecialCase** | **NSString*** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


