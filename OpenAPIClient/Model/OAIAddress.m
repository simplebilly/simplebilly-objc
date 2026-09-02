#import "OAIAddress.h"

@implementation OAIAddress

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"city": @"city", @"company": @"company", @"country": @"country", @"email": @"email", @"name": @"name", @"phone": @"phone", @"street": @"street", @"streetNumber": @"street_number", @"zip": @"zip" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"company", @"email", @"phone", ];
  return [optionalProperties containsObject:propertyName];
}

@end
