#import "OAISupplierConditionCreate.h"

@implementation OAISupplierConditionCreate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"currency": @"currency", @"deliveryTerms": @"deliveryTerms", @"earlyPaymentDiscountPercent": @"earlyPaymentDiscountPercent", @"isDefault": @"isDefault", @"minimumOrderValue": @"minimumOrderValue", @"notes": @"notes", @"paymentDueDays": @"paymentDueDays", @"paymentTerms": @"paymentTerms", @"supplierContactId": @"supplierContactId", @"supplierName": @"supplierName", @"volumeDiscountTiers": @"volumeDiscountTiers" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"deliveryTerms", @"earlyPaymentDiscountPercent", @"isDefault", @"minimumOrderValue", @"notes", @"paymentDueDays", @"paymentTerms", @"supplierName", @"volumeDiscountTiers"];
  return [optionalProperties containsObject:propertyName];
}

@end
