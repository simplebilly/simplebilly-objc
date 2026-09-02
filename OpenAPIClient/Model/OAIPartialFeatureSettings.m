#import "OAIPartialFeatureSettings.h"

@implementation OAIPartialFeatureSettings

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"onlineshop": @"onlineshop", @"reportBilanz": @"reportBilanz", @"reportBwa": @"reportBwa", @"reportEuer": @"reportEuer", @"reportGewerbesteuer": @"reportGewerbesteuer", @"reportGuv": @"reportGuv", @"reportKst": @"reportKst", @"reportUstva": @"reportUstva" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"onlineshop", @"reportBilanz", @"reportBwa", @"reportEuer", @"reportGewerbesteuer", @"reportGuv", @"reportKst", @"reportUstva"];
  return [optionalProperties containsObject:propertyName];
}

@end
