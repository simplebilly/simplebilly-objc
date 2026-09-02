#import "OAIReplenishmentSuggestionLine.h"

@implementation OAIReplenishmentSuggestionLine

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"currentStock": @"currentStock", @"maxStock": @"maxStock", @"minStock": @"minStock", @"productId": @"productId", @"productName": @"productName", @"sku": @"sku", @"sourceAvailable": @"sourceAvailable", @"sourceWarehouseId": @"sourceWarehouseId", @"suggestedQuantity": @"suggestedQuantity", @"targetWarehouseId": @"targetWarehouseId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"maxStock", @"minStock", ];
  return [optionalProperties containsObject:propertyName];
}

@end
