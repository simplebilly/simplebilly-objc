#import "OAIProductionOrder.h"

@implementation OAIProductionOrder

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bomId": @"bomId", @"components": @"components", @"endDate": @"endDate", @"notes": @"notes", @"orderNumber": @"orderNumber", @"productId": @"productId", @"quantity": @"quantity", @"sourceWarehouseId": @"sourceWarehouseId", @"startDate": @"startDate", @"status": @"status", @"targetWarehouseId": @"targetWarehouseId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bomId", @"components", @"endDate", @"notes", @"sourceWarehouseId", @"startDate", @"status", @"targetWarehouseId"];
  return [optionalProperties containsObject:propertyName];
}

@end
