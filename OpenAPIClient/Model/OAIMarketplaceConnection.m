#import "OAIMarketplaceConnection.h"

@implementation OAIMarketplaceConnection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"config": @"config", @"connectionId": @"connection_id", @"connectorType": @"connector_type", @"createdAt": @"created_at", @"isActive": @"is_active", @"label": @"label", @"lastSyncAt": @"last_sync_at", @"platform": @"platform", @"platformUserId": @"platform_user_id", @"scopes": @"scopes", @"shopDomain": @"shop_domain", @"shopName": @"shop_name", @"syncStatus": @"sync_status", @"tenantId": @"tenant_id", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"lastSyncAt", @"platformUserId", @"scopes", @"shopDomain", @"shopName", @"syncStatus", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
