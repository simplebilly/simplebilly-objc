#import "OAITicketMessage.h"

@implementation OAITicketMessage

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"authorEmail": @"authorEmail", @"authorName": @"authorName", @"body": @"body", @"bodyHtml": @"bodyHtml", @"channelId": @"channelId", @"createdAt": @"createdAt", @"direction": @"direction", @"externalId": @"externalId", @"isInternal": @"isInternal", @"messageType": @"messageType", @"metadata": @"metadata", @"tenantId": @"tenantId", @"ticketId": @"ticketId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"authorEmail", @"authorName", @"bodyHtml", @"channelId", @"externalId", ];
  return [optionalProperties containsObject:propertyName];
}

@end
