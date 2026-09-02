#import "OAIGdprBillingInfo.h"

@implementation OAIGdprBillingInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"currentPeriodEnd": @"currentPeriodEnd", @"currentPeriodStart": @"currentPeriodStart", @"plan": @"plan", @"status": @"status", @"tenantId": @"tenantId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"currentPeriodEnd", @"currentPeriodStart", @"plan", @"status", ];
  return [optionalProperties containsObject:propertyName];
}

@end
