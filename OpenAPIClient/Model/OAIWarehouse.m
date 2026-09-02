#import "OAIWarehouse.h"

@implementation OAIWarehouse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"addressCity": @"addressCity", @"addressCountry": @"addressCountry", @"addressStreet": @"addressStreet", @"addressZip": @"addressZip", @"binLocations": @"binLocations", @"code": @"code", @"isActive": @"isActive", @"isDefault": @"isDefault", @"name": @"name", @"notes": @"notes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"addressCity", @"addressCountry", @"addressStreet", @"addressZip", @"binLocations", @"isActive", @"isDefault", @"notes"];
  return [optionalProperties containsObject:propertyName];
}

@end
