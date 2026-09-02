#import "OAIDownPaymentInvoice.h"

@implementation OAIDownPaymentInvoice

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"contactId": @"contact_id", @"contactName": @"contact_name", @"createdAt": @"created_at", @"currency": @"currency", @"_id": @"id", @"notes": @"notes", @"paidAmount": @"paid_amount", @"totalAmount": @"total_amount", @"voucherDate": @"voucher_date", @"voucherNumber": @"voucher_number", @"voucherStatus": @"voucher_status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"contactId", @"contactName", @"notes", @"voucherNumber", ];
  return [optionalProperties containsObject:propertyName];
}

@end
