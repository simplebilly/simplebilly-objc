#import "OAIStockMovement.h"

@implementation OAIStockMovement

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"delta": @"delta", @"movementType": @"movementType", @"productId": @"productId", @"quantity": @"quantity", @"reason": @"reason", @"referenceId": @"referenceId", @"referenceType": @"referenceType", @"warehouseId": @"warehouseId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"reason", @"referenceId", @"referenceType", ];
  return [optionalProperties containsObject:propertyName];
}

@end
