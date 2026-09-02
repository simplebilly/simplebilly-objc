#import "OAICustomerUpdate.h"

@implementation OAICustomerUpdate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"address": @"address", @"contactPerson": @"contactPerson", @"email": @"email", @"externalOrderNumber": @"externalOrderNumber", @"name": @"name", @"paymentGracePeriodDays": @"paymentGracePeriodDays", @"phone": @"phone", @"vatId": @"vatId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"address", @"contactPerson", @"email", @"externalOrderNumber", @"name", @"paymentGracePeriodDays", @"phone", @"vatId"];
  return [optionalProperties containsObject:propertyName];
}

@end
