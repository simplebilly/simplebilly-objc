#import "OAIProposedAssignment.h"

@implementation OAIProposedAssignment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"amountPaid": @"amount_paid", @"confidence": @"confidence", @"customerId": @"customer_id", @"invoiceId": @"invoice_id", @"invoiceNumber": @"invoice_number", @"openAmount": @"open_amount", @"paymentDate": @"payment_date", @"paymentId": @"payment_id", @"reason": @"reason", @"reference": @"reference" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"customerId", @"reference"];
  return [optionalProperties containsObject:propertyName];
}

@end
