#import "OAISalesVolumeItem.h"

@implementation OAISalesVolumeItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"contactId": @"contact_id", @"contactType": @"contact_type", @"lastPurchaseDate": @"last_purchase_date", @"name": @"name", @"totalInvoices": @"total_invoices", @"totalRevenue": @"total_revenue" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"lastPurchaseDate", ];
  return [optionalProperties containsObject:propertyName];
}

@end
