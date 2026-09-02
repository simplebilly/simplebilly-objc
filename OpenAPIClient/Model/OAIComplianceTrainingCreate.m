#import "OAIComplianceTrainingCreate.h"

@implementation OAIComplianceTrainingCreate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"assignable": @"assignable", @"code": @"code", @"_description": @"description", @"passScore": @"passScore", @"pluginPlatform": @"pluginPlatform", @"source": @"source", @"title": @"title", @"validityMonths": @"validityMonths" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"assignable", @"code", @"_description", @"passScore", @"pluginPlatform", @"source", @"title", @"validityMonths"];
  return [optionalProperties containsObject:propertyName];
}

@end
