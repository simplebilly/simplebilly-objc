#import "OAIOrderConfirmation.h"

@implementation OAIOrderConfirmation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"address": @"address", @"confirmationNumber": @"confirmationNumber", @"contactId": @"contactId", @"contactName": @"contactName", @"currency": @"currency", @"files": @"files", @"introduction": @"introduction", @"lineItems": @"lineItems", @"precedingSalesVoucherId": @"precedingSalesVoucherId", @"precedingSalesVoucherType": @"precedingSalesVoucherType", @"remark": @"remark", @"subtotal": @"subtotal", @"taxCondition": @"taxCondition", @"title": @"title", @"totalAmount": @"totalAmount", @"totalTax": @"totalTax", @"voucherDate": @"voucherDate", @"voucherStatus": @"voucherStatus" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"address", @"confirmationNumber", @"contactId", @"contactName", @"files", @"introduction", @"lineItems", @"precedingSalesVoucherId", @"precedingSalesVoucherType", @"remark", @"subtotal", @"taxCondition", @"title", @"totalAmount", @"totalTax", ];
  return [optionalProperties containsObject:propertyName];
}

@end
