#import "OAIPublicDeliveryAppointmentRequest.h"

@implementation OAIPublicDeliveryAppointmentRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"email": @"email", @"notes": @"notes", @"requestedDate": @"requestedDate", @"supplierName": @"supplierName", @"timeSlot": @"timeSlot", @"warehouseCode": @"warehouseCode" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"notes", @"timeSlot", ];
  return [optionalProperties containsObject:propertyName];
}

@end
