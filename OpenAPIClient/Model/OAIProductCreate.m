#import "OAIProductCreate.h"

@implementation OAIProductCreate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"availability": @"availability", @"barcode": @"barcode", @"brand": @"brand", @"categoryId": @"categoryId", @"condition": @"condition", @"defaultLedgerAccount": @"defaultLedgerAccount", @"defaultPrice": @"defaultPrice", @"defaultPriceFormulaId": @"defaultPriceFormulaId", @"defaultTaxRate": @"defaultTaxRate", @"_description": @"description", @"gtin": @"gtin", @"height": @"height", @"imageLink": @"imageLink", @"images": @"images", @"isTaxable": @"isTaxable", @"length": @"length", @"link": @"link", @"maxStock": @"maxStock", @"minStock": @"minStock", @"mpn": @"mpn", @"name": @"name", @"packageHeight": @"packageHeight", @"packageLength": @"packageLength", @"packageWeightUnit": @"packageWeightUnit", @"packageWeightValue": @"packageWeightValue", @"packageWidth": @"packageWidth", @"productCode": @"productCode", @"productType": @"productType", @"purchasePrice": @"purchasePrice", @"reorderQuantity": @"reorderQuantity", @"salePrice": @"salePrice", @"shippingPrice": @"shippingPrice", @"shippingRequiresInsurance": @"shippingRequiresInsurance", @"sku": @"sku", @"stockQuantity": @"stockQuantity", @"tags": @"tags", @"taxPrice": @"taxPrice", @"trackBatch": @"trackBatch", @"trackSerial": @"trackSerial", @"unit": @"unit", @"weightUnit": @"weightUnit", @"weightValue": @"weightValue", @"width": @"width" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"availability", @"barcode", @"brand", @"categoryId", @"condition", @"defaultLedgerAccount", @"defaultPrice", @"defaultPriceFormulaId", @"defaultTaxRate", @"_description", @"gtin", @"height", @"imageLink", @"images", @"isTaxable", @"length", @"link", @"maxStock", @"minStock", @"mpn", @"packageHeight", @"packageLength", @"packageWeightUnit", @"packageWeightValue", @"packageWidth", @"productType", @"purchasePrice", @"reorderQuantity", @"salePrice", @"shippingPrice", @"shippingRequiresInsurance", @"stockQuantity", @"tags", @"taxPrice", @"trackBatch", @"trackSerial", @"unit", @"weightUnit", @"weightValue", @"width"];
  return [optionalProperties containsObject:propertyName];
}

@end
