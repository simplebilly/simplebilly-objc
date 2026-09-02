#import "OAIAiWorkerConfig.h"

@implementation OAIAiWorkerConfig

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"autoReply": @"auto_reply", @"createdAt": @"created_at", @"_id": @"id", @"isActive": @"is_active", @"maxToolCalls": @"max_tool_calls", @"model": @"model", @"name": @"name", @"provider": @"provider", @"systemPrompt": @"system_prompt", @"tenantId": @"tenant_id", @"triggerOn": @"trigger_on", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
