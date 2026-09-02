#import "OAIYearlyPayrollSummary.h"

@implementation OAIYearlyPayrollSummary

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"avgEmployeeCount": @"avg_employee_count", @"months": @"months", @"year": @"year", @"yearlyEmployerCost": @"yearly_employer_cost", @"yearlyGross": @"yearly_gross", @"yearlyNet": @"yearly_net" }];
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
