#import "OAIGroupFigure.h"

@implementation OAIGroupFigure

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bilanzsumme": @"bilanzsumme", @"exemptionClaimed": @"exemptionClaimed", @"mitarbeiter": @"mitarbeiter", @"nettoUmsatz": @"nettoUmsatz", @"parentName": @"parentName", @"parentSitus": @"parentSitus", @"year": @"year" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bilanzsumme", @"exemptionClaimed", @"mitarbeiter", @"nettoUmsatz", @"parentName", @"parentSitus", ];
  return [optionalProperties containsObject:propertyName];
}

@end
