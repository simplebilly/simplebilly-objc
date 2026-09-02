#import "OAISupplierInvoice.h"

@implementation OAISupplierInvoice

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"currency": @"currency", @"goodsReceiptId": @"goodsReceiptId", @"invoiceDate": @"invoiceDate", @"invoiceNumber": @"invoiceNumber", @"lineItems": @"lineItems", @"notes": @"notes", @"purchaseOrderId": @"purchaseOrderId", @"status": @"status", @"supplierContactId": @"supplierContactId", @"supplierName": @"supplierName", @"totalGrossAmount": @"totalGrossAmount", @"totalNetAmount": @"totalNetAmount" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"currency", @"goodsReceiptId", @"notes", @"purchaseOrderId", @"supplierContactId", @"supplierName", @"totalGrossAmount", @"totalNetAmount"];
  return [optionalProperties containsObject:propertyName];
}

@end
