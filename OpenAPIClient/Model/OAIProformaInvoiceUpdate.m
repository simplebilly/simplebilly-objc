#import "OAIProformaInvoiceUpdate.h"

@implementation OAIProformaInvoiceUpdate

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

  NSArray *optionalProperties = @[@"convertedAt", @"convertedToInvoiceId", @"currency", @"customerId", @"customerSnapshot", @"issueDate", @"lineItems", @"notes", @"orderNumber", @"paymentDueDate", @"quotationId", @"status", @"subtotal", @"totalAmount", @"totalTax"];
  return [optionalProperties containsObject:propertyName];
}

@end
