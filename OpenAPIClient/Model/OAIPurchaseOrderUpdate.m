#import "OAIPurchaseOrderUpdate.h"

@implementation OAIPurchaseOrderUpdate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"currency": @"currency", @"deliveryAddress": @"deliveryAddress", @"expectedDeliveryDate": @"expectedDeliveryDate", @"lineItems": @"lineItems", @"notes": @"notes", @"orderDate": @"orderDate", @"poNumber": @"poNumber", @"status": @"status", @"supplierContactId": @"supplierContactId", @"supplierName": @"supplierName", @"totalGrossAmount": @"totalGrossAmount", @"totalNetAmount": @"totalNetAmount" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"currency", @"deliveryAddress", @"expectedDeliveryDate", @"lineItems", @"notes", @"orderDate", @"poNumber", @"status", @"supplierContactId", @"supplierName", @"totalGrossAmount", @"totalNetAmount"];
  return [optionalProperties containsObject:propertyName];
}

@end
