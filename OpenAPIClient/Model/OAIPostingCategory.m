#import "OAIPostingCategory.h"

@implementation OAIPostingCategory

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accountNumber": @"account_number", @"accountNumberSkr03": @"account_number_skr03", @"accountNumberSkr04": @"account_number_skr04", @"accountNumberSkr49": @"account_number_skr49", @"categoryId": @"category_id", @"defaultVatRate": @"default_vat_rate", @"_description": @"description", @"eksCategory": @"eks_category", @"isActive": @"is_active", @"isSystem": @"is_system", @"name": @"name", @"skrVersion": @"skr_version", @"type": @"type" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountNumber", @"accountNumberSkr03", @"accountNumberSkr04", @"accountNumberSkr49", @"_description", @"eksCategory", ];
  return [optionalProperties containsObject:propertyName];
}

@end
