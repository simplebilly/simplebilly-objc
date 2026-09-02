#import "OAIPaymentCreate.h"

@implementation OAIPaymentCreate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"amount": @"amount", @"attachment": @"attachment", @"currency": @"currency", @"customerId": @"customerId", @"_description": @"description", @"metadata": @"metadata", @"method": @"method", @"paymentDate": @"paymentDate", @"reference": @"reference" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"amount", @"attachment", @"currency", @"customerId", @"_description", @"metadata", @"method", @"paymentDate", @"reference"];
  return [optionalProperties containsObject:propertyName];
}

@end
