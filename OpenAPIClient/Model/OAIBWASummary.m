#import "OAIBWASummary.h"

@implementation OAIBWASummary

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"grossProfit": @"gross_profit", @"netProfit": @"net_profit", @"openInvoicesCount": @"open_invoices_count", @"openInvoicesTotal": @"open_invoices_total", @"overdueInvoicesCount": @"overdue_invoices_count", @"overdueInvoicesTotal": @"overdue_invoices_total", @"profitMargin": @"profit_margin" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end
