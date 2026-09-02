#import "OAIPayrollEntryApi.h"

@implementation OAIPayrollEntryApi

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"avEmployee": @"av_employee", @"avEmployer": @"av_employer", @"churchTaxAmount": @"church_tax_amount", @"employee": @"employee", @"employeeId": @"employee_id", @"entryId": @"entry_id", @"extraPaymentReason": @"extra_payment_reason", @"extraPayments": @"extra_payments", @"grossSalary": @"gross_salary", @"kvEmployee": @"kv_employee", @"kvEmployer": @"kv_employer", @"lohnsteuer": @"lohnsteuer", @"netSalary": @"net_salary", @"notes": @"notes", @"pvEmployee": @"pv_employee", @"pvEmployer": @"pv_employer", @"runId": @"run_id", @"rvEmployee": @"rv_employee", @"rvEmployer": @"rv_employer", @"sickDays": @"sick_days", @"soli": @"soli", @"status": @"status", @"totalDeductions": @"total_deductions", @"totalEmployerCost": @"total_employer_cost", @"vacationDaysUsed": @"vacation_days_used" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"employee", @"extraPaymentReason", @"notes", ];
  return [optionalProperties containsObject:propertyName];
}

@end
