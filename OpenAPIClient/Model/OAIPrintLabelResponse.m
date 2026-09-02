#import "OAIPrintLabelResponse.h"

@implementation OAIPrintLabelResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"labelUrl": @"label_url", @"message": @"message", @"sscc": @"sscc", @"success": @"success", @"trackingNumber": @"tracking_number" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"labelUrl", @"sscc", @"trackingNumber"];
  return [optionalProperties containsObject:propertyName];
}

@end
