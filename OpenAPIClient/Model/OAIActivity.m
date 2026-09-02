#import "OAIActivity.h"

@implementation OAIActivity

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"activityType": @"activityType", @"assignedTo": @"assignedTo", @"contactId": @"contactId", @"_description": @"description", @"dueDate": @"dueDate", @"reminderDate": @"reminderDate", @"status": @"status", @"subject": @"subject" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"assignedTo", @"contactId", @"_description", @"dueDate", @"reminderDate", ];
  return [optionalProperties containsObject:propertyName];
}

@end
