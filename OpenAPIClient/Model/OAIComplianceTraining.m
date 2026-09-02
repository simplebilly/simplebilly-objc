#import "OAIComplianceTraining.h"

@implementation OAIComplianceTraining

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"assignable": @"assignable", @"code": @"code", @"createdAt": @"createdAt", @"deletedAt": @"deletedAt", @"_description": @"description", @"_id": @"id", @"passScore": @"passScore", @"pluginPlatform": @"pluginPlatform", @"source": @"source", @"tenantId": @"tenantId", @"title": @"title", @"updatedAt": @"updatedAt", @"validityMonths": @"validityMonths" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"assignable", @"code", @"createdAt", @"deletedAt", @"_description", @"_id", @"passScore", @"pluginPlatform", @"source", @"tenantId", @"title", @"updatedAt", @"validityMonths"];
  return [optionalProperties containsObject:propertyName];
}

@end
