#import "OAIRecurringTemplate.h"

@implementation OAIRecurringTemplate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"created_at", @"deletedAt": @"deleted_at", @"endDate": @"end_date", @"executionInterval": @"execution_interval", @"executionStatus": @"execution_status", @"finalize": @"finalize", @"lastExecutedAt": @"last_executed_at", @"name": @"name", @"nextExecutionAt": @"next_execution_at", @"startDate": @"start_date", @"templateId": @"template_id", @"templateType": @"template_type", @"updatedAt": @"updated_at", @"voucherData": @"voucher_data" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"deletedAt", @"endDate", @"lastExecutedAt", @"nextExecutionAt", @"updatedAt", ];
  return [optionalProperties containsObject:propertyName];
}

@end
