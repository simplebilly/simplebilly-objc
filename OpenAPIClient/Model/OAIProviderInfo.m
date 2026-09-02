#import "OAIProviderInfo.h"

@implementation OAIProviderInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"displayName": @"display_name", @"name": @"name", @"requiresApiKey": @"requires_api_key", @"services": @"services", @"supportsLabelCreation": @"supports_label_creation", @"supportsRateEstimation": @"supports_rate_estimation", @"supportsTracking": @"supports_tracking" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end
