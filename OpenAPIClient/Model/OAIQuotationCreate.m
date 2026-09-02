#import "OAIQuotationCreate.h"

@implementation OAIQuotationCreate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"address": @"address", @"contactId": @"contactId", @"contactName": @"contactName", @"currency": @"currency", @"expirationDate": @"expirationDate", @"files": @"files", @"introduction": @"introduction", @"lineItems": @"lineItems", @"precedingSalesVoucherId": @"precedingSalesVoucherId", @"precedingSalesVoucherType": @"precedingSalesVoucherType", @"quotationNumber": @"quotationNumber", @"remark": @"remark", @"taxCondition": @"taxCondition", @"title": @"title", @"voucherDate": @"voucherDate", @"voucherStatus": @"voucherStatus" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"address", @"contactId", @"contactName", @"expirationDate", @"files", @"introduction", @"lineItems", @"precedingSalesVoucherId", @"precedingSalesVoucherType", @"quotationNumber", @"remark", @"taxCondition", @"title", ];
  return [optionalProperties containsObject:propertyName];
}

@end
