#import "OAIStockTransfer.h"

@implementation OAIStockTransfer

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"lineItems": @"lineItems", @"notes": @"notes", @"sourceWarehouseId": @"sourceWarehouseId", @"status": @"status", @"targetWarehouseId": @"targetWarehouseId", @"transferDate": @"transferDate", @"transferNumber": @"transferNumber" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"notes", ];
  return [optionalProperties containsObject:propertyName];
}

@end
