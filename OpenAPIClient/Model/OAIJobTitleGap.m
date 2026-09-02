#import "OAIJobTitleGap.h"

@implementation OAIJobTitleGap

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"employeeCount": @"employee_count", @"femaleMeanHourly": @"female_mean_hourly", @"jobTitle": @"job_title", @"maleMeanHourly": @"male_mean_hourly", @"meanGapPct": @"mean_gap_pct", @"medianGapPct": @"median_gap_pct" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end
