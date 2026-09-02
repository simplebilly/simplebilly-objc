#import "OAIServiceJobUpdate.h"

@implementation OAIServiceJobUpdate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"address": @"address", @"customerEmail": @"customerEmail", @"customerId": @"customerId", @"customerName": @"customerName", @"customerPhone": @"customerPhone", @"_description": @"description", @"estimatedDurationMinutes": @"estimatedDurationMinutes", @"lat": @"lat", @"lng": @"lng", @"notes": @"notes", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"address", @"customerEmail", @"customerId", @"customerName", @"customerPhone", @"_description", @"estimatedDurationMinutes", @"lat", @"lng", @"notes", @"status"];
  return [optionalProperties containsObject:propertyName];
}

@end
