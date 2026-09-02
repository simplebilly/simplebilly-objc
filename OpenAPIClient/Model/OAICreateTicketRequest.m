#import "OAICreateTicketRequest.h"

@implementation OAICreateTicketRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"channelId": @"channel_id", @"channelType": @"channel_type", @"customerEmail": @"customer_email", @"customerId": @"customer_id", @"customerName": @"customer_name", @"externalId": @"external_id", @"messageBody": @"message_body", @"orderRef": @"order_ref", @"subject": @"subject" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"channelId", @"channelType", @"customerEmail", @"customerId", @"customerName", @"externalId", @"orderRef", ];
  return [optionalProperties containsObject:propertyName];
}

@end
