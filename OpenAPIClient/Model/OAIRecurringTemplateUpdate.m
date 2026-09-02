#import "OAIRecurringTemplateUpdate.h"

@implementation OAIRecurringTemplateUpdate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"endDate": @"endDate", @"executionInterval": @"executionInterval", @"executionStatus": @"executionStatus", @"finalize": @"finalize", @"lastExecutedAt": @"lastExecutedAt", @"name": @"name", @"nextExecutionAt": @"nextExecutionAt", @"startDate": @"startDate", @"templateType": @"templateType", @"voucherData": @"voucherData" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"endDate", @"executionInterval", @"executionStatus", @"finalize", @"lastExecutedAt", @"name", @"nextExecutionAt", @"startDate", @"templateType", @"voucherData"];
  return [optionalProperties containsObject:propertyName];
}

@end
