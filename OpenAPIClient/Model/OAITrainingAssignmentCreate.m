#import "OAITrainingAssignmentCreate.h"

@implementation OAITrainingAssignmentCreate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"assignedBy": @"assignedBy", @"dueDate": @"dueDate", @"employeeId": @"employeeId", @"notes": @"notes", @"status": @"status", @"trainingId": @"trainingId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"assignedBy", @"dueDate", @"employeeId", @"notes", @"status", @"trainingId"];
  return [optionalProperties containsObject:propertyName];
}

@end
