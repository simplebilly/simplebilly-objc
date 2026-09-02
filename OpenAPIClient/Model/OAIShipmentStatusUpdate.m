#import "OAIShipmentStatusUpdate.h"

@implementation OAIShipmentStatusUpdate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"deliveredAt": @"delivered_at", @"signedBy": @"signed_by", @"status": @"status", @"trackingNumber": @"tracking_number" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"deliveredAt", @"signedBy", @"trackingNumber"];
  return [optionalProperties containsObject:propertyName];
}

@end
