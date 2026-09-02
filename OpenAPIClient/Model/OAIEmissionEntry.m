#import "OAIEmissionEntry.h"

@implementation OAIEmissionEntry

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"activityValue": @"activityValue", @"categoryId": @"categoryId", @"_description": @"description", @"efSource": @"efSource", @"efVersion": @"efVersion", @"method": @"method", @"scope": @"scope", @"tco2e": @"tco2e", @"unit": @"unit", @"updatedAt": @"updatedAt", @"year": @"year" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"updatedAt", ];
  return [optionalProperties containsObject:propertyName];
}

@end
