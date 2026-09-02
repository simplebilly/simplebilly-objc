#import "OAIProductVariantUpdate.h"

@implementation OAIProductVariantUpdate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"barcode": @"barcode", @"imageLink": @"imageLink", @"isActive": @"isActive", @"name": @"name", @"optionValues": @"optionValues", @"price": @"price", @"priceDelta": @"priceDelta", @"productId": @"productId", @"sku": @"sku", @"stockQuantity": @"stockQuantity" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"barcode", @"imageLink", @"isActive", @"name", @"optionValues", @"price", @"priceDelta", @"productId", @"sku", @"stockQuantity"];
  return [optionalProperties containsObject:propertyName];
}

@end
