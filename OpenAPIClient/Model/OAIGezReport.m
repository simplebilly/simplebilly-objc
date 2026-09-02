#import "OAIGezReport.h"

@implementation OAIGezReport

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"beitragsfreieKfz": @"beitragsfreie_kfz", @"beitragspflichtigeKfz": @"beitragspflichtige_kfz", @"betriebsstaetten": @"betriebsstaetten", @"hinweis": @"hinweis", @"hotelzimmerBeitrag": @"hotelzimmer_beitrag", @"jaehrlicherBeitrag": @"jaehrlicher_beitrag", @"jahr": @"jahr", @"kfzBeitrag": @"kfz_beitrag", @"monatlicherBeitrag": @"monatlicher_beitrag", @"vierteljaehrlicherBeitrag": @"vierteljaehrlicher_beitrag" }];
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
