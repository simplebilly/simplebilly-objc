#import "OAIPayrollRunApi.h"

@implementation OAIPayrollRunApi

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"approvedAt": @"approved_at", @"approvedBy": @"approved_by", @"createdAt": @"created_at", @"entries": @"entries", @"month": @"month", @"paymentDate": @"payment_date", @"periodLabel": @"period_label", @"runId": @"run_id", @"status": @"status", @"tenantId": @"tenant_id", @"totalEmployeeCount": @"total_employee_count", @"totalEmployerCost": @"total_employer_cost", @"totalGross": @"total_gross", @"totalNet": @"total_net", @"totalSocialSecurity": @"total_social_security", @"totalTaxes": @"total_taxes", @"updatedAt": @"updated_at", @"year": @"year" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"approvedAt", @"approvedBy", @"paymentDate", @"updatedAt", ];
  return [optionalProperties containsObject:propertyName];
}

@end
