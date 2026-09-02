#import "OAIEmissionsReport.h"

@implementation OAIEmissionsReport

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"byCategory": @"by_category", @"byScope": @"by_scope", @"byYear": @"by_year", @"dataQuality": @"data_quality", @"intensityPerEmployee": @"intensity_per_employee", @"intensityPerRevenueMio": @"intensity_per_revenue_mio", @"netRevenue": @"net_revenue", @"spendBasedEstimateTco2e": @"spend_based_estimate_tco2e", @"targets": @"targets", @"totalTco2e": @"total_tco2e" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"intensityPerEmployee", @"intensityPerRevenueMio", @"netRevenue", @"spendBasedEstimateTco2e", ];
  return [optionalProperties containsObject:propertyName];
}

@end
