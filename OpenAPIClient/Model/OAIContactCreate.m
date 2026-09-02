#import "OAIContactCreate.h"

@implementation OAIContactCreate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accountHolder": @"accountHolder", @"acquisitionCost": @"acquisitionCost", @"addressSupplement": @"addressSupplement", @"attention": @"attention", @"bankName": @"bankName", @"bic": @"bic", @"buyerReference": @"buyerReference", @"category": @"category", @"certificateAuthority": @"certificateAuthority", @"certificateNumber": @"certificateNumber", @"certificateParagraph": @"certificateParagraph", @"certificateValidUntil": @"certificateValidUntil", @"city": @"city", @"companyName": @"companyName", @"contactPersons": @"contactPersons", @"contactType": @"contactType", @"country": @"country", @"creditLimit": @"creditLimit", @"creditorAccountSkr03": @"creditorAccountSkr03", @"creditorAccountSkr04": @"creditorAccountSkr04", @"currency": @"currency", @"customFields": @"customFields", @"customerNumber": @"customerNumber", @"debitorAccountSkr03": @"debitorAccountSkr03", @"debitorAccountSkr04": @"debitorAccountSkr04", @"defaultDebitorNumber": @"defaultDebitorNumber", @"deliveryBlock": @"deliveryBlock", @"department": @"department", @"discountDays": @"discountDays", @"discountPercentage": @"discountPercentage", @"donationReceiptEligible": @"donationReceiptEligible", @"email": @"email", @"externalId": @"externalId", @"fax": @"fax", @"iban": @"iban", @"industry": @"industry", @"isActive": @"isActive", @"isMember": @"isMember", @"isNonprofit": @"isNonprofit", @"lastContactDate": @"lastContactDate", @"lastPurchaseDate": @"lastPurchaseDate", @"leitwegId": @"leitwegId", @"lifetimeValue": @"lifetimeValue", @"mandateDate": @"mandateDate", @"mandateReference": @"mandateReference", @"marketingConsent": @"marketingConsent", @"marketingConsentAt": @"marketingConsentAt", @"marketingConsentSource": @"marketingConsentSource", @"mobile": @"mobile", @"name": @"name", @"nextContactDate": @"nextContactDate", @"notes": @"notes", @"openingBalance": @"openingBalance", @"openingBalanceDate": @"openingBalanceDate", @"orderReference": @"orderReference", @"paymentBlock": @"paymentBlock", @"paymentGracePeriodDays": @"paymentGracePeriodDays", @"paymentMethods": @"paymentMethods", @"paymentTerms": @"paymentTerms", @"phone": @"phone", @"rating": @"rating", @"salesRepresentative": @"salesRepresentative", @"sepaBatchBooking": @"sepaBatchBooking", @"sepaSequenceType": @"sepaSequenceType", @"socialMedia": @"socialMedia", @"source": @"source", @"state": @"state", @"street": @"street", @"streetNumber": @"streetNumber", @"supplierNumber": @"supplierNumber", @"tags": @"tags", @"taxCountry": @"taxCountry", @"taxNumber": @"taxNumber", @"taxOffice": @"taxOffice", @"totalInvoices": @"totalInvoices", @"totalRevenue": @"totalRevenue", @"vatId": @"vatId", @"vatIdValidated": @"vatIdValidated", @"vatIdValidationDate": @"vatIdValidationDate", @"website": @"website", @"zip": @"zip" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountHolder", @"acquisitionCost", @"addressSupplement", @"attention", @"bankName", @"bic", @"buyerReference", @"category", @"certificateAuthority", @"certificateNumber", @"certificateParagraph", @"certificateValidUntil", @"city", @"companyName", @"contactPersons", @"country", @"creditLimit", @"creditorAccountSkr03", @"creditorAccountSkr04", @"currency", @"customFields", @"customerNumber", @"debitorAccountSkr03", @"debitorAccountSkr04", @"defaultDebitorNumber", @"deliveryBlock", @"department", @"discountDays", @"discountPercentage", @"donationReceiptEligible", @"email", @"externalId", @"fax", @"iban", @"industry", @"isActive", @"isMember", @"isNonprofit", @"lastContactDate", @"lastPurchaseDate", @"leitwegId", @"lifetimeValue", @"mandateDate", @"mandateReference", @"marketingConsent", @"marketingConsentAt", @"marketingConsentSource", @"mobile", @"nextContactDate", @"notes", @"openingBalance", @"openingBalanceDate", @"orderReference", @"paymentBlock", @"paymentGracePeriodDays", @"paymentMethods", @"paymentTerms", @"phone", @"rating", @"salesRepresentative", @"sepaBatchBooking", @"sepaSequenceType", @"socialMedia", @"source", @"state", @"street", @"streetNumber", @"supplierNumber", @"tags", @"taxCountry", @"taxNumber", @"taxOffice", @"totalInvoices", @"totalRevenue", @"vatId", @"vatIdValidated", @"vatIdValidationDate", @"website", @"zip"];
  return [optionalProperties containsObject:propertyName];
}

@end
