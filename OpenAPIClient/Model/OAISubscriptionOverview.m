#import "OAISubscriptionOverview.h"

@implementation OAISubscriptionOverview

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"currentPeriodEnd": @"currentPeriodEnd", @"features": @"features", @"isTrialing": @"isTrialing", @"limits": @"limits", @"manageUrl": @"manageUrl", @"plan": @"plan", @"planName": @"planName", @"priceEur": @"priceEur", @"quantity": @"quantity", @"status": @"status", @"subscriptionId": @"subscriptionId", @"trialEndsAt": @"trialEndsAt", @"usage": @"usage" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"currentPeriodEnd", @"manageUrl", @"quantity", @"status", @"subscriptionId", @"trialEndsAt", ];
  return [optionalProperties containsObject:propertyName];
}

@end
