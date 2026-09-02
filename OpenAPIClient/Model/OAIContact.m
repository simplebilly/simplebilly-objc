#import "OAIContact.h"

@implementation OAIContact

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accountHolder": @"account_holder", @"acquisitionCost": @"acquisition_cost", @"addressSupplement": @"address_supplement", @"attention": @"attention", @"bankName": @"bank_name", @"bic": @"bic", @"buyerReference": @"buyer_reference", @"category": @"category", @"certificateAuthority": @"certificate_authority", @"certificateNumber": @"certificate_number", @"certificateParagraph": @"certificate_paragraph", @"certificateValidUntil": @"certificate_valid_until", @"city": @"city", @"companyName": @"company_name", @"contactId": @"contact_id", @"contactPersons": @"contact_persons", @"contactType": @"contact_type", @"country": @"country", @"createdAt": @"created_at", @"creditLimit": @"credit_limit", @"creditorAccountSkr03": @"creditor_account_skr03", @"creditorAccountSkr04": @"creditor_account_skr04", @"currency": @"currency", @"customerNumber": @"customer_number", @"debitorAccountSkr03": @"debitor_account_skr03", @"debitorAccountSkr04": @"debitor_account_skr04", @"defaultDebitorNumber": @"default_debitor_number", @"deliveryBlock": @"delivery_block", @"department": @"department", @"discountDays": @"discount_days", @"discountPercentage": @"discount_percentage", @"donationReceiptEligible": @"donation_receipt_eligible", @"email": @"email", @"externalId": @"external_id", @"fax": @"fax", @"iban": @"iban", @"industry": @"industry", @"isActive": @"is_active", @"isMember": @"is_member", @"isNonprofit": @"is_nonprofit", @"lastContactDate": @"last_contact_date", @"lastPurchaseDate": @"last_purchase_date", @"leitwegId": @"leitweg_id", @"lifetimeValue": @"lifetime_value", @"mandateDate": @"mandate_date", @"mandateReference": @"mandate_reference", @"marketingConsent": @"marketing_consent", @"marketingConsentAt": @"marketing_consent_at", @"marketingConsentSource": @"marketing_consent_source", @"mobile": @"mobile", @"name": @"name", @"nextContactDate": @"next_contact_date", @"notes": @"notes", @"openingBalance": @"opening_balance", @"openingBalanceDate": @"opening_balance_date", @"orderReference": @"order_reference", @"paymentBlock": @"payment_block", @"paymentGracePeriodDays": @"payment_grace_period_days", @"paymentMethods": @"payment_methods", @"paymentTerms": @"payment_terms", @"phone": @"phone", @"rating": @"rating", @"salesRepresentative": @"sales_representative", @"socialMedia": @"social_media", @"source": @"source", @"state": @"state", @"street": @"street", @"streetNumber": @"street_number", @"supplierNumber": @"supplier_number", @"tags": @"tags", @"taxCountry": @"tax_country", @"taxNumber": @"tax_number", @"taxOffice": @"tax_office", @"totalInvoices": @"total_invoices", @"totalRevenue": @"total_revenue", @"updatedAt": @"updated_at", @"vatId": @"vat_id", @"vatIdValidated": @"vat_id_validated", @"vatIdValidationDate": @"vat_id_validation_date", @"website": @"website", @"zip": @"zip" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountHolder", @"acquisitionCost", @"addressSupplement", @"attention", @"bankName", @"bic", @"buyerReference", @"category", @"certificateAuthority", @"certificateNumber", @"certificateParagraph", @"certificateValidUntil", @"city", @"companyName", @"country", @"creditLimit", @"creditorAccountSkr03", @"creditorAccountSkr04", @"currency", @"customerNumber", @"debitorAccountSkr03", @"debitorAccountSkr04", @"defaultDebitorNumber", @"deliveryBlock", @"department", @"discountDays", @"discountPercentage", @"donationReceiptEligible", @"email", @"externalId", @"fax", @"iban", @"industry", @"isActive", @"isMember", @"isNonprofit", @"lastContactDate", @"lastPurchaseDate", @"leitwegId", @"lifetimeValue", @"mandateDate", @"mandateReference", @"marketingConsent", @"marketingConsentAt", @"marketingConsentSource", @"mobile", @"nextContactDate", @"notes", @"openingBalance", @"openingBalanceDate", @"orderReference", @"paymentBlock", @"paymentGracePeriodDays", @"paymentMethods", @"paymentTerms", @"phone", @"rating", @"salesRepresentative", @"source", @"state", @"street", @"streetNumber", @"supplierNumber", @"tags", @"taxCountry", @"taxNumber", @"taxOffice", @"totalInvoices", @"totalRevenue", @"updatedAt", @"vatId", @"vatIdValidated", @"vatIdValidationDate", @"website", @"zip"];
  return [optionalProperties containsObject:propertyName];
}

@end
