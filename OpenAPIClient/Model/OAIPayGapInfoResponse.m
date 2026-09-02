#import "OAIPayGapInfoResponse.h"

@implementation OAIPayGapInfoResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"employeeId": @"employee_id", @"firstName": @"first_name", @"gender": @"gender", @"groupMedianHourly": @"group_median_hourly", @"groupMedianMonthly": @"group_median_monthly", @"groupSize": @"group_size", @"jobTitle": @"job_title", @"lastName": @"last_name", @"overallMedianHourly": @"overall_median_hourly", @"ownHourlyGross": @"own_hourly_gross", @"ownMonthlyGross": @"own_monthly_gross" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"gender", @"groupMedianHourly", @"groupMedianMonthly", @"overallMedianHourly", @"ownHourlyGross", @"ownMonthlyGross"];
  return [optionalProperties containsObject:propertyName];
}

@end
