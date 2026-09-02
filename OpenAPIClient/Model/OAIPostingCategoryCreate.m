#import "OAIPostingCategoryCreate.h"

@implementation OAIPostingCategoryCreate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accountNumber": @"accountNumber", @"accountNumberSkr03": @"accountNumberSkr03", @"accountNumberSkr04": @"accountNumberSkr04", @"accountNumberSkr49": @"accountNumberSkr49", @"categoryType": @"categoryType", @"createdAt": @"createdAt", @"defaultVatRate": @"defaultVatRate", @"_description": @"description", @"eksCategory": @"eksCategory", @"euVatLine": @"euVatLine", @"inputVatPercentage": @"inputVatPercentage", @"isActive": @"isActive", @"isSystem": @"isSystem", @"name": @"name", @"skrVersion": @"skrVersion", @"updatedAt": @"updatedAt", @"userModifiedSkr03": @"userModifiedSkr03", @"userModifiedSkr04": @"userModifiedSkr04" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountNumber", @"accountNumberSkr03", @"accountNumberSkr04", @"accountNumberSkr49", @"_description", @"eksCategory", @"euVatLine", @"updatedAt", ];
  return [optionalProperties containsObject:propertyName];
}

@end
