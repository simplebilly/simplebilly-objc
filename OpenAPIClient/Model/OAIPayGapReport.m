#import "OAIPayGapReport.h"

@implementation OAIPayGapReport

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"byJobTitle": @"by_job_title", @"diverseCount": @"diverse_count", @"employeeCount": @"employee_count", @"femaleCount": @"female_count", @"maleCount": @"male_count", @"meanGapPct": @"mean_gap_pct", @"medianGapPct": @"median_gap_pct", @"quartiles": @"quartiles" }];
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
