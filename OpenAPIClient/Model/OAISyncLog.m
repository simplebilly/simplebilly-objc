#import "OAISyncLog.h"

@implementation OAISyncLog

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"completedAt": @"completed_at", @"connectionId": @"connection_id", @"errorMessage": @"error_message", @"itemsFailed": @"items_failed", @"itemsSynced": @"items_synced", @"logId": @"log_id", @"platform": @"platform", @"startedAt": @"started_at", @"status": @"status", @"syncType": @"sync_type" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"completedAt", @"errorMessage", ];
  return [optionalProperties containsObject:propertyName];
}

@end
