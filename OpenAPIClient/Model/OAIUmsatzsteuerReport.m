#import "OAIUmsatzsteuerReport.h"

@implementation OAIUmsatzsteuerReport

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"generatedAt": @"generated_at", @"inputTax": @"input_tax", @"outputTax": @"output_tax", @"period": @"period", @"totalInputTax": @"total_input_tax", @"totalOutputTax": @"total_output_tax", @"vatPayable": @"vat_payable", @"vatRefund": @"vat_refund" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end
