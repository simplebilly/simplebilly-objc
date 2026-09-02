#import "OAIGewerbesteuerErgebnis.h"

@implementation OAIGewerbesteuerErgebnis

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"freibetrag": @"freibetrag", @"gesamtbelastung": @"gesamtbelastung", @"gewerbeertrag": @"gewerbeertrag", @"hebesatz": @"hebesatz", @"jahr": @"jahr", @"koerperschaftsteuer": @"koerperschaftsteuer", @"land": @"land", @"messbetrag": @"messbetrag", @"steuer": @"steuer", @"steuerArt": @"steuer_art" }];
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
