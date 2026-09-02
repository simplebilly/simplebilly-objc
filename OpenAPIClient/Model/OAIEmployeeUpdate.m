#import "OAIEmployeeUpdate.h"

@implementation OAIEmployeeUpdate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"address": @"address", @"backupEmployeeId": @"backupEmployeeId", @"bic": @"bic", @"city": @"city", @"country": @"country", @"dateOfBirth": @"dateOfBirth", @"departmentId": @"departmentId", @"email": @"email", @"firstName": @"firstName", @"gender": @"gender", @"hireDate": @"hireDate", @"hourlyCost": @"hourlyCost", @"iban": @"iban", @"jobTitle": @"jobTitle", @"lastLogin": @"lastLogin", @"lastName": @"lastName", @"lastUpdated": @"lastUpdated", @"monthlySalary": @"monthlySalary", @"phone": @"phone", @"state": @"state", @"status": @"status", @"userId": @"userId", @"weeklyHours": @"weeklyHours", @"zip": @"zip" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"address", @"backupEmployeeId", @"bic", @"city", @"country", @"dateOfBirth", @"departmentId", @"email", @"firstName", @"gender", @"hireDate", @"hourlyCost", @"iban", @"jobTitle", @"lastLogin", @"lastName", @"lastUpdated", @"monthlySalary", @"phone", @"state", @"status", @"userId", @"weeklyHours", @"zip"];
  return [optionalProperties containsObject:propertyName];
}

@end
