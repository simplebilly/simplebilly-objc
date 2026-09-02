#import "OAIUpdateSubscriptionRequest.h"

@implementation OAIUpdateSubscriptionRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"eventType": @"event_type", @"isActive": @"is_active", @"name": @"name", @"secret": @"secret", @"url": @"url" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"eventType", @"isActive", @"name", @"secret", @"url"];
  return [optionalProperties containsObject:propertyName];
}

@end
