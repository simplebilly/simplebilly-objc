#import "OAIAbsence.h"

@implementation OAIAbsence

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"absenceType": @"absenceType", @"approvedAt": @"approvedAt", @"approvedBy": @"approvedBy", @"createdAt": @"createdAt", @"deletedAt": @"deletedAt", @"employeeId": @"employeeId", @"endDate": @"endDate", @"_id": @"id", @"notes": @"notes", @"startDate": @"startDate", @"status": @"status", @"tenantId": @"tenantId", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"absenceType", @"approvedAt", @"approvedBy", @"createdAt", @"deletedAt", @"employeeId", @"endDate", @"_id", @"notes", @"startDate", @"status", @"tenantId", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
