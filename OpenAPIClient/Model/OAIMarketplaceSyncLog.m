#import "OAIMarketplaceSyncLog.h"

@implementation OAIMarketplaceSyncLog

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"completedAt": @"completedAt", @"connectionId": @"connectionId", @"errorMessage": @"errorMessage", @"itemsFailed": @"itemsFailed", @"itemsSynced": @"itemsSynced", @"platform": @"platform", @"startedAt": @"startedAt", @"status": @"status", @"syncType": @"syncType" }];
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
