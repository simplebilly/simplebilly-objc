#import "OAIElsterStatus.h"

@implementation OAIElsterStatus

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"certConfigured": @"cert_configured", @"ericAvailable": @"eric_available", @"ericVersion": @"eric_version", @"featureEnabled": @"feature_enabled", @"hint": @"hint", @"mode": @"mode", @"vendorIdConfigured": @"vendor_id_configured" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ericVersion", ];
  return [optionalProperties containsObject:propertyName];
}

@end
