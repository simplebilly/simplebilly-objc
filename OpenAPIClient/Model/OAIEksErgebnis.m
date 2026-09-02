#import "OAIEksErgebnis.h"

@implementation OAIEksErgebnis

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"gesamtergebnis": @"gesamtergebnis", @"monate": @"monate", @"prognoseNaechste6Monate": @"prognose_naechste_6_monate", @"summeAusgaben": @"summe_ausgaben", @"summeEinnahmen": @"summe_einnahmen", @"zeitraumBis": @"zeitraum_bis", @"zeitraumVon": @"zeitraum_von" }];
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
