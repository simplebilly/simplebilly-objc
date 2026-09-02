#import "OAIAiConfigDto.h"

@implementation OAIAiConfigDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"autoReply": @"auto_reply", @"maxToolCalls": @"max_tool_calls", @"model": @"model", @"name": @"name", @"provider": @"provider", @"systemPrompt": @"system_prompt", @"triggerOn": @"trigger_on" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"autoReply", @"maxToolCalls", @"systemPrompt", @"triggerOn"];
  return [optionalProperties containsObject:propertyName];
}

@end
