#import "OAIMyTrainingItem.h"

@implementation OAIMyTrainingItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"assignmentId": @"assignmentId", @"certificateId": @"certificateId", @"code": @"code", @"_description": @"description", @"dueDate": @"dueDate", @"lastScore": @"lastScore", @"passScore": @"passScore", @"passed": @"passed", @"status": @"status", @"title": @"title", @"trainingId": @"trainingId", @"validUntil": @"validUntil" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"certificateId", @"_description", @"dueDate", @"lastScore", @"passed", @"validUntil"];
  return [optionalProperties containsObject:propertyName];
}

@end
