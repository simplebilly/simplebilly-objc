#import "OAIOrderCreate.h"

@implementation OAIOrderCreate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"auditLog": @"auditLog", @"currency": @"currency", @"customerId": @"customerId", @"externalReference": @"externalReference", @"invoiceAddress": @"invoiceAddress", @"items": @"items", @"language": @"language", @"orderStatus": @"orderStatus", @"paymentMethod": @"paymentMethod", @"shippingAddress": @"shippingAddress", @"shippingCost": @"shippingCost", @"shippingMethod": @"shippingMethod", @"shippingWeight": @"shippingWeight", @"tags": @"tags", @"totalCost": @"totalCost" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"auditLog", @"externalReference", @"invoiceAddress", @"items", @"language", @"shippingAddress", ];
  return [optionalProperties containsObject:propertyName];
}

@end
