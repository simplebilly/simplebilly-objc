#import "OAITrackedShipment.h"

@implementation OAITrackedShipment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"carrier": @"carrier", @"events": @"events", @"labelUrl": @"label_url", @"status": @"status", @"trackingNumber": @"tracking_number", @"trackingUrl": @"tracking_url" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"labelUrl", @"trackingNumber", @"trackingUrl"];
  return [optionalProperties containsObject:propertyName];
}

@end
