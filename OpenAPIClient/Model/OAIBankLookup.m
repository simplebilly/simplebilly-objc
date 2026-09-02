#import "OAIBankLookup.h"

@implementation OAIBankLookup

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bankName": @"bank_name", @"bic": @"bic", @"iban": @"iban", @"nextgenpsd2Url": @"nextgenpsd2_url", @"psd2Supported": @"psd2_supported" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bankName", @"bic", @"nextgenpsd2Url", ];
  return [optionalProperties containsObject:propertyName];
}

@end
