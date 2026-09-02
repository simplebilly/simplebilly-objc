#import "OAILiquidityPosition.h"

@implementation OAILiquidityPosition

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accountsPayable": @"accounts_payable", @"accountsReceivable": @"accounts_receivable", @"cashAndEquivalents": @"cash_and_equivalents", @"currentRatio": @"current_ratio", @"quickRatio": @"quick_ratio", @"workingCapital": @"working_capital" }];
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
