#import "OAIStockAdjustment.h"

@implementation OAIStockAdjustment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"batchNumber": @"batchNumber", @"binLocation": @"binLocation", @"expiryDate": @"expiryDate", @"productId": @"productId", @"quantity": @"quantity", @"serialNumbers": @"serialNumbers" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"batchNumber", @"binLocation", @"expiryDate", @"productId", @"serialNumbers"];
  return [optionalProperties containsObject:propertyName];
}

@end
