#import "OAIAutomationDto.h"

@implementation OAIAutomationDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"automationKey": @"automationKey", @"config": @"config", @"defaultDay": @"defaultDay", @"_description": @"description", @"enabled": @"enabled", @"kind": @"kind", @"lastRunAt": @"lastRunAt", @"nextRunAt": @"nextRunAt", @"scheduleKind": @"scheduleKind" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"defaultDay", @"lastRunAt", @"nextRunAt", ];
  return [optionalProperties containsObject:propertyName];
}

@end
