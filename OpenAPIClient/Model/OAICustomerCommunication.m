#import "OAICustomerCommunication.h"

@implementation OAICustomerCommunication

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"body": @"body", @"channel": @"channel", @"contactId": @"contactId", @"counterparty": @"counterparty", @"direction": @"direction", @"occurredAt": @"occurredAt", @"subject": @"subject", @"tags": @"tags" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"body", @"counterparty", @"occurredAt", @"subject", @"tags"];
  return [optionalProperties containsObject:propertyName];
}

@end
