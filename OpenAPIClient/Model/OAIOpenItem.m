#import "OAIOpenItem.h"

@implementation OAIOpenItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"amountDue": @"amount_due", @"amountPaid": @"amount_paid", @"customerId": @"customer_id", @"daysOverdue": @"days_overdue", @"dueDate": @"due_date", @"invoiceId": @"invoice_id", @"invoiceNumber": @"invoice_number", @"issueDate": @"issue_date", @"openAmount": @"open_amount", @"reminderLevel": @"reminder_level" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"customerId", @"daysOverdue", @"dueDate", ];
  return [optionalProperties containsObject:propertyName];
}

@end
