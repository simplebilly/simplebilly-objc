#import "OAITimeEntryDto.h"

@implementation OAITimeEntryDto

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"clockIn": @"clock_in", @"clockOut": @"clock_out", @"createdAt": @"created_at", @"date": @"date", @"employeeId": @"employee_id", @"hours": @"hours", @"notes": @"notes", @"timeEntryId": @"time_entry_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"clockIn", @"clockOut", @"hours", @"notes", ];
  return [optionalProperties containsObject:propertyName];
}

@end
