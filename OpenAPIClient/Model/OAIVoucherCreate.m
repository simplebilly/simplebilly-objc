#import "OAIVoucherCreate.h"

@implementation OAIVoucherCreate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"categoryId": @"categoryId", @"contactId": @"contactId", @"contactName": @"contactName", @"currency": @"currency", @"_description": @"description", @"fileAttachments": @"fileAttachments", @"lineItems": @"lineItems", @"metadata": @"metadata", @"notes": @"notes", @"openAmount": @"openAmount", @"paidDate": @"paidDate", @"paymentStatus": @"paymentStatus", @"taxAmounts": @"taxAmounts", @"taxCondition": @"taxCondition", @"totalGrossAmount": @"totalGrossAmount", @"totalNetAmount": @"totalNetAmount", @"voucherDate": @"voucherDate", @"voucherNumber": @"voucherNumber", @"voucherStatus": @"voucherStatus", @"voucherType": @"voucherType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"categoryId", @"contactId", @"contactName", @"_description", @"fileAttachments", @"lineItems", @"metadata", @"notes", @"openAmount", @"paidDate", @"paymentStatus", @"taxAmounts", @"taxCondition", @"totalGrossAmount", @"totalNetAmount", @"voucherNumber", ];
  return [optionalProperties containsObject:propertyName];
}

@end
