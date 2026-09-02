#import "OAIShippingRate.h"

@implementation OAIShippingRate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"breakdown": @"breakdown", @"carrier": @"carrier", @"crossBorderSurcharge": @"cross_border_surcharge", @"destinationCountry": @"destination_country", @"estimatedDays": @"estimated_days", @"fromApi": @"from_api", @"insuredValue": @"insured_value", @"islandSurcharge": @"island_surcharge", @"originCountry": @"origin_country", @"rate": @"rate", @"service": @"service", @"volumeDiscount": @"volume_discount", @"weightKg": @"weight_kg" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"breakdown", @"crossBorderSurcharge", @"estimatedDays", @"insuredValue", @"islandSurcharge", @"volumeDiscount", ];
  return [optionalProperties containsObject:propertyName];
}

@end
