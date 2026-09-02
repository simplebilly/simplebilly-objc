#import "OAIProductionOrderCosting.h"

@implementation OAIProductionOrderCosting

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"costPerUnit": @"costPerUnit", @"costSource": @"costSource", @"lines": @"lines", @"marginPerUnit": @"marginPerUnit", @"marginPercent": @"marginPercent", @"materialCostTotal": @"materialCostTotal", @"orderNumber": @"orderNumber", @"productionOrderId": @"productionOrderId", @"quantity": @"quantity", @"salePrice": @"salePrice", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"marginPerUnit", @"marginPercent", @"salePrice", ];
  return [optionalProperties containsObject:propertyName];
}

@end
