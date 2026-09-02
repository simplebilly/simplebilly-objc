#import "OAICoupon.h"

@implementation OAICoupon

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"code": @"code", @"_description": @"description", @"discountType": @"discountType", @"discountValue": @"discountValue", @"expiresAt": @"expiresAt", @"isActive": @"isActive", @"isCombineable": @"isCombineable", @"maxDiscountAmount": @"maxDiscountAmount", @"maxUses": @"maxUses", @"maxUsesPerCustomer": @"maxUsesPerCustomer", @"minOrderAmount": @"minOrderAmount", @"productIds": @"productIds", @"startsAt": @"startsAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_description", @"expiresAt", @"isActive", @"isCombineable", @"maxDiscountAmount", @"maxUses", @"maxUsesPerCustomer", @"minOrderAmount", @"productIds", @"startsAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
