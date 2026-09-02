#import "OAIInvoiceCreate.h"

@implementation OAIInvoiceCreate

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"attachments": @"attachments", @"billingPeriodEnd": @"billingPeriodEnd", @"billingPeriodStart": @"billingPeriodStart", @"cancellationDate": @"cancellationDate", @"cancellationInvoiceId": @"cancellationInvoiceId", @"cancellationReason": @"cancellationReason", @"contractId": @"contractId", @"currency": @"currency", @"customerId": @"customerId", @"discountAmount": @"discountAmount", @"discountDays": @"discountDays", @"discountPercentage": @"discountPercentage", @"documentType": @"documentType", @"dunningLevel": @"dunningLevel", @"inputVatAmount": @"inputVatAmount", @"inputVatDeductible": @"inputVatDeductible", @"inputVatPercentage": @"inputVatPercentage", @"introductionText": @"introductionText", @"invoiceType": @"invoiceType", @"isCancelled": @"isCancelled", @"isDraft": @"isDraft", @"isEuAcquisition": @"isEuAcquisition", @"isEuDelivery": @"isEuDelivery", @"isIntraCommunityAcquisition": @"isIntraCommunityAcquisition", @"isReverseCharge": @"isReverseCharge", @"issueDate": @"issueDate", @"ledgerAccount": @"ledgerAccount", @"lineItems": @"lineItems", @"margin25a": @"margin25a", @"margin25aGross": @"margin25aGross", @"margin25aPurchasePrice": @"margin25aPurchasePrice", @"notes": @"notes", @"orderNumber": @"orderNumber", @"originalPdfPath": @"originalPdfPath", @"paidAmount": @"paidAmount", @"paymentDueDate": @"paymentDueDate", @"paymentStatus": @"paymentStatus", @"paymentTermsText": @"paymentTermsText", @"precedingSalesVoucherId": @"precedingSalesVoucherId", @"precedingSalesVoucherType": @"precedingSalesVoucherType", @"receiptConfirmationAvailable": @"receiptConfirmationAvailable", @"relatedInvoiceId": @"relatedInvoiceId", @"relationshipType": @"relationshipType", @"senderSnapshot": @"senderSnapshot", @"sentAt": @"sentAt", @"servicePeriodEnd": @"servicePeriodEnd", @"servicePeriodStart": @"servicePeriodStart", @"status": @"status", @"subtotal": @"subtotal", @"supplierId": @"supplierId", @"taxExemptionReason": @"taxExemptionReason", @"totalAmount": @"totalAmount", @"totalTax": @"totalTax", @"vatCountry": @"vatCountry", @"vatSpecialCase": @"vatSpecialCase" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"attachments", @"billingPeriodEnd", @"billingPeriodStart", @"cancellationDate", @"cancellationInvoiceId", @"cancellationReason", @"contractId", @"customerId", @"discountAmount", @"discountDays", @"discountPercentage", @"documentType", @"dunningLevel", @"inputVatAmount", @"inputVatDeductible", @"inputVatPercentage", @"introductionText", @"isCancelled", @"isDraft", @"isEuAcquisition", @"isEuDelivery", @"isIntraCommunityAcquisition", @"isReverseCharge", @"ledgerAccount", @"margin25a", @"margin25aGross", @"margin25aPurchasePrice", @"notes", @"orderNumber", @"originalPdfPath", @"paidAmount", @"paymentDueDate", @"paymentStatus", @"paymentTermsText", @"precedingSalesVoucherId", @"precedingSalesVoucherType", @"receiptConfirmationAvailable", @"relatedInvoiceId", @"relationshipType", @"senderSnapshot", @"sentAt", @"servicePeriodEnd", @"servicePeriodStart", @"supplierId", @"taxExemptionReason", @"vatCountry", @"vatSpecialCase"];
  return [optionalProperties containsObject:propertyName];
}

@end
