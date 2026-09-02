#import "OAITrainingAssignment.h"

@implementation OAITrainingAssignment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"assignedBy": @"assignedBy", @"createdAt": @"createdAt", @"deletedAt": @"deletedAt", @"dueDate": @"dueDate", @"employeeId": @"employeeId", @"_id": @"id", @"notes": @"notes", @"status": @"status", @"tenantId": @"tenantId", @"trainingId": @"trainingId", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"assignedBy", @"createdAt", @"deletedAt", @"dueDate", @"employeeId", @"_id", @"notes", @"status", @"tenantId", @"trainingId", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
