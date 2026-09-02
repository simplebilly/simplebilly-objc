#import "OAIProformaInvoiceCreate.h"

@implementation OAIProformaInvoiceCreate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"convertedAt": @"convertedAt", @"convertedToInvoiceId": @"convertedToInvoiceId", @"currency": @"currency", @"customerId": @"customerId", @"customerSnapshot": @"customerSnapshot", @"issueDate": @"issueDate", @"lineItems": @"lineItems", @"notes": @"notes", @"orderNumber": @"orderNumber", @"paymentDueDate": @"paymentDueDate", @"quotationId": @"quotationId", @"status": @"status", @"subtotal": @"subtotal", @"totalAmount": @"totalAmount", @"totalTax": @"totalTax" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"convertedAt", @"convertedToInvoiceId", @"customerId", @"customerSnapshot", @"notes", @"orderNumber", @"paymentDueDate", @"quotationId", ];
  return [optionalProperties containsObject:propertyName];
}

@end
