#import "OAICreateConnectionRequest.h"

@implementation OAICreateConnectionRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"apiKey": @"api_key", @"apiSecret": @"api_secret", @"config": @"config", @"label": @"label", @"platform": @"platform", @"shopDomain": @"shop_domain" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"apiKey", @"apiSecret", @"config", @"shopDomain"];
  return [optionalProperties containsObject:propertyName];
}

@end
