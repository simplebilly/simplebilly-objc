#import "OAIAiSuggestion.h"

@implementation OAIAiSuggestion

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"confidence": @"confidence", @"reasoning": @"reasoning", @"suggestedPriority": @"suggested_priority", @"suggestedReply": @"suggested_reply", @"suggestedStatus": @"suggested_status", @"toolCalls": @"tool_calls" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"suggestedPriority", @"suggestedStatus", ];
  return [optionalProperties containsObject:propertyName];
}

@end
