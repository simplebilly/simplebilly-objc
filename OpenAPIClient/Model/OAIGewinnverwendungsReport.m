#import "OAIGewinnverwendungsReport.h"

@implementation OAIGewinnverwendungsReport

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bilanzgewinn": @"bilanzgewinn", @"gesetzlicheRuecklageBestand": @"gesetzliche_ruecklage_bestand", @"gesetzlicheRuecklageCap": @"gesetzliche_ruecklage_cap", @"gesetzlicheRuecklageNach": @"gesetzliche_ruecklage_nach", @"gesetzlicheRuecklageSoll": @"gesetzliche_ruecklage_soll", @"gezeichnetesKapital": @"gezeichnetes_kapital", @"jahresueberschuss": @"jahresueberschuss", @"year": @"year", @"zeilen": @"zeilen" }];
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
