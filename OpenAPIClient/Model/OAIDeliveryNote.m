#import "OAIDeliveryNote.h"

@implementation OAIDeliveryNote

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"address": @"address", @"contactId": @"contactId", @"contactName": @"contactName", @"currency": @"currency", @"deliveryDate": @"deliveryDate", @"deliveryNoteNumber": @"deliveryNoteNumber", @"files": @"files", @"introduction": @"introduction", @"lineItems": @"lineItems", @"precedingSalesVoucherId": @"precedingSalesVoucherId", @"precedingSalesVoucherType": @"precedingSalesVoucherType", @"remark": @"remark", @"shippingDate": @"shippingDate", @"shippingMethod": @"shippingMethod", @"subtotal": @"subtotal", @"title": @"title", @"totalAmount": @"totalAmount", @"voucherDate": @"voucherDate", @"voucherStatus": @"voucherStatus" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"address", @"contactId", @"contactName", @"deliveryDate", @"deliveryNoteNumber", @"files", @"introduction", @"lineItems", @"precedingSalesVoucherId", @"precedingSalesVoucherType", @"remark", @"shippingDate", @"shippingMethod", @"subtotal", @"title", @"totalAmount", ];
  return [optionalProperties containsObject:propertyName];
}

@end
