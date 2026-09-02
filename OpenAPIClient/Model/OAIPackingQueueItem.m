#import "OAIPackingQueueItem.h"

@implementation OAIPackingQueueItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"createdAt": @"created_at", @"customerId": @"customer_id", @"deliveryNotePrinted": @"delivery_note_printed", @"items": @"items", @"itemsCount": @"items_count", @"labelPrinted": @"label_printed", @"orderNumber": @"order_number", @"orderStatus": @"order_status", @"shipmentId": @"shipment_id", @"shippingAddress": @"shipping_address", @"shippingMethod": @"shipping_method", @"trackingNumber": @"tracking_number", @"videoRecording": @"video_recording" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"shipmentId", @"shippingAddress", @"trackingNumber", @"videoRecording"];
  return [optionalProperties containsObject:propertyName];
}

@end
