#import "OAIDeliveryDateCreate.h"

@implementation OAIDeliveryDateCreate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"customerId": @"customerId", @"fulfilledDate": @"fulfilledDate", @"note": @"note", @"orderNumber": @"orderNumber", @"originalDate": @"originalDate", @"productId": @"productId", @"promisedDate": @"promisedDate", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"customerId", @"fulfilledDate", @"note", @"originalDate", @"productId", ];
  return [optionalProperties containsObject:propertyName];
}

@end
