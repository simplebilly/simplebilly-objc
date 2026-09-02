#import "OAIUstvaErgebnis.h"

@implementation OAIUstvaErgebnis

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bis": @"bis", @"hinweis": @"hinweis", @"istKleinunternehmer": @"ist_kleinunternehmer", @"kz41": @"kz_41", @"kz43": @"kz_43", @"kz46": @"kz_46", @"kz47": @"kz_47", @"kz61": @"kz_61", @"kz66": @"kz_66", @"kz67": @"kz_67", @"kz81": @"kz_81", @"kz83": @"kz_83", @"kz84": @"kz_84", @"kz85": @"kz_85", @"kz86": @"kz_86", @"kz88": @"kz_88", @"kz89": @"kz_89", @"kz93": @"kz_93", @"von": @"von", @"zahllast": @"zahllast", @"zeitraum": @"zeitraum", @"zeitraumTyp": @"zeitraum_typ" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"hinweis", ];
  return [optionalProperties containsObject:propertyName];
}

@end
