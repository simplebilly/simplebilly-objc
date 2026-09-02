#import "OAIHebesatzLookup.h"

@implementation OAIHebesatzLookup

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bundesland": @"bundesland", @"countryCode": @"country_code", @"gemeindeName": @"gemeinde_name", @"gemeindeschluessel": @"gemeindeschluessel", @"hebesatzGewerbesteuer": @"hebesatz_gewerbesteuer", @"hebesatzGrundsteuerB": @"hebesatz_grundsteuer_b", @"jahr": @"jahr", @"landkreis": @"landkreis", @"validFrom": @"valid_from", @"validTo": @"valid_to" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"hebesatzGrundsteuerB", @"landkreis", @"validTo"];
  return [optionalProperties containsObject:propertyName];
}

@end
