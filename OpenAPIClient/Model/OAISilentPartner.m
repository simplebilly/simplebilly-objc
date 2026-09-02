#import "OAISilentPartner.h"

@implementation OAISilentPartner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"contractDate": @"contractDate", @"einlage": @"einlage", @"gewinnquotePct": @"gewinnquotePct", @"gewinnvortrag": @"gewinnvortrag", @"instrumentType": @"instrumentType", @"kestPflichtig": @"kestPflichtig", @"name": @"name", @"notes": @"notes", @"verlustVerrechnungskonto": @"verlustVerrechnungskonto", @"verlustbeteiligung": @"verlustbeteiligung" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"contractDate", @"einlage", @"gewinnquotePct", @"gewinnvortrag", @"kestPflichtig", @"name", @"notes", @"verlustVerrechnungskonto", @"verlustbeteiligung"];
  return [optionalProperties containsObject:propertyName];
}

@end
