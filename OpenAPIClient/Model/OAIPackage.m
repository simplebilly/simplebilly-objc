#import "OAIPackage.h"

@implementation OAIPackage

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_description": @"description", @"heightCm": @"height_cm", @"lengthCm": @"length_cm", @"reference": @"reference", @"weightKg": @"weight_kg", @"widthCm": @"width_cm" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_description", @"heightCm", @"lengthCm", @"reference", @"widthCm"];
  return [optionalProperties containsObject:propertyName];
}

@end
