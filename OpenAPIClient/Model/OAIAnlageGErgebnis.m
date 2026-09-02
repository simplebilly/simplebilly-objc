#import "OAIAnlageGErgebnis.h"

@implementation OAIAnlageGErgebnis

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"gewinnVerlust": @"gewinn_verlust", @"gewstGezahlt": @"gewst_gezahlt", @"gewstMessbetragApprox": @"gewst_messbetrag_approx", @"gewstPflichtig": @"gewst_pflichtig", @"jahr": @"jahr", @"kfzHinweise": @"kfz_hinweise" }];
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
