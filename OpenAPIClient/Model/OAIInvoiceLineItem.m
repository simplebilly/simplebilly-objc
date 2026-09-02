#import "OAIInvoiceLineItem.h"

@implementation OAIInvoiceLineItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"articleNumber": @"article_number", @"_description": @"description", @"discountAmount": @"discount_amount", @"discountPercentage": @"discount_percentage", @"inputVatDeductible": @"input_vat_deductible", @"inputVatRate": @"input_vat_rate", @"isIntraCommunityAcquisition": @"is_intra_community_acquisition", @"isMargin25a": @"is_margin_25a", @"ledgerAccount": @"ledger_account", @"lineTotal": @"line_total", @"lineTotalGross": @"line_total_gross", @"margin25aPurchasePrice": @"margin_25a_purchase_price", @"meterPointId": @"meter_point_id", @"position": @"position", @"priceComponents": @"price_components", @"productId": @"product_id", @"productSku": @"product_sku", @"quantity": @"quantity", @"supplierArticleNumber": @"supplier_article_number", @"taxRate": @"tax_rate", @"unit": @"unit", @"unitPrice": @"unit_price", @"usageDataId": @"usage_data_id", @"vatRateNominal": @"vat_rate_nominal", @"vatSpecialCase": @"vat_special_case" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"articleNumber", @"discountAmount", @"discountPercentage", @"inputVatDeductible", @"inputVatRate", @"isIntraCommunityAcquisition", @"isMargin25a", @"ledgerAccount", @"lineTotalGross", @"margin25aPurchasePrice", @"meterPointId", @"priceComponents", @"productId", @"productSku", @"supplierArticleNumber", @"taxRate", @"usageDataId", @"vatRateNominal", @"vatSpecialCase"];
  return [optionalProperties containsObject:propertyName];
}

@end
