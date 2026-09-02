#import "OAIKonzernStatus.h"

@implementation OAIKonzernStatus

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"groessenbefreit": @"groessenbefreit", @"kapitalmarktorientiert": @"kapitalmarktorientiert", @"konzernabschlusspflicht": @"konzernabschlusspflicht", @"missingGroupFigures": @"missing_group_figures", @"mutterunternehmen": @"mutterunternehmen", @"parentName": @"parent_name", @"parentSitus": @"parent_situs", @"participations": @"participations", @"thresholds": @"thresholds", @"year": @"year", @"zwischenholdingBefreit": @"zwischenholding_befreit", @"zwischenholdingHinweis": @"zwischenholding_hinweis" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"parentName", @"parentSitus", @"zwischenholdingHinweis"];
  return [optionalProperties containsObject:propertyName];
}

@end
