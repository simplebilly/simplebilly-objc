#import "OAISupportTicketUpdate.h"

@implementation OAISupportTicketUpdate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"assignedTo": @"assignedTo", @"channelId": @"channelId", @"channelType": @"channelType", @"closedAt": @"closedAt", @"createdAt": @"createdAt", @"customerEmail": @"customerEmail", @"customerId": @"customerId", @"customerName": @"customerName", @"externalId": @"externalId", @"firstMessageAt": @"firstMessageAt", @"lastMessageAt": @"lastMessageAt", @"leadId": @"leadId", @"messageCount": @"messageCount", @"orderRef": @"orderRef", @"priority": @"priority", @"resolution": @"resolution", @"status": @"status", @"subject": @"subject", @"tags": @"tags", @"tenantId": @"tenantId", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"assignedTo", @"channelId", @"channelType", @"closedAt", @"createdAt", @"customerEmail", @"customerId", @"customerName", @"externalId", @"firstMessageAt", @"lastMessageAt", @"leadId", @"messageCount", @"orderRef", @"priority", @"resolution", @"status", @"subject", @"tags", @"tenantId", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
