#import "OAIQuotaOverride.h"

@implementation OAIQuotaOverride

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"features": @"features", @"maxConnectors": @"max_connectors", @"maxInvoicesPerMonth": @"max_invoices_per_month", @"maxUsers": @"max_users", @"metered": @"metered", @"plan": @"plan" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"features", @"maxConnectors", @"maxInvoicesPerMonth", @"maxUsers", @"metered", @"plan"];
  return [optionalProperties containsObject:propertyName];
}

@end
