#import "OAIShipment.h"

@implementation OAIShipment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"deliveredAt": @"deliveredAt", @"labelUrl": @"labelUrl", @"lineItemsShipment": @"lineItemsShipment", @"orderId": @"orderId", @"recipientAddress": @"recipientAddress", @"shipmentDate": @"shipmentDate", @"shippingCarrier": @"shippingCarrier", @"shippingCost": @"shippingCost", @"shippingMethod": @"shippingMethod", @"signedBy": @"signedBy", @"status": @"status", @"trackingEvents": @"trackingEvents", @"trackingNumber": @"trackingNumber", @"trackingUrl": @"trackingUrl", @"weightKg": @"weightKg" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"deliveredAt", @"labelUrl", @"lineItemsShipment", @"recipientAddress", @"shippingCost", @"shippingMethod", @"signedBy", @"trackingEvents", @"trackingNumber", @"trackingUrl", @"weightKg"];
  return [optionalProperties containsObject:propertyName];
}

@end
