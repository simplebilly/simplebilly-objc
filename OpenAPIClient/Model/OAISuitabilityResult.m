#import "OAISuitabilityResult.h"

@implementation OAISuitabilityResult

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"methods": @"methods", @"recommendedBox": @"recommended_box", @"requiresInsurance": @"requires_insurance", @"totalValue": @"total_value", @"totalWeightKg": @"total_weight_kg" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"recommendedBox", ];
  return [optionalProperties containsObject:propertyName];
}

@end
