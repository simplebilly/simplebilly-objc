#import "OAIDatevImportRow.h"

@implementation OAIDatevImportRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"account": @"account", @"amount": @"amount", @"baseAmount": @"base_amount", @"baseCurrency": @"base_currency", @"bookingText": @"booking_text", @"buKey": @"bu_key", @"costCenter1": @"cost_center1", @"costCenter2": @"cost_center2", @"currency": @"currency", @"debitCredit": @"debit_credit", @"discount": @"discount", @"documentDate": @"document_date", @"documentField2": @"document_field2", @"documentNumber": @"document_number", @"euCountryVatId": @"eu_country_vat_id", @"euTaxRate": @"eu_tax_rate", @"exchangeRate": @"exchange_rate", @"oppositeAccount": @"opposite_account" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end
