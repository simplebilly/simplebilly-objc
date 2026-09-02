#import "OAILeadUpdate.h"

@implementation OAILeadUpdate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"company": @"company", @"convertedAt": @"convertedAt", @"createdAt": @"createdAt", @"email": @"email", @"firstContactAt": @"firstContactAt", @"name": @"name", @"notes": @"notes", @"phone": @"phone", @"score": @"score", @"source": @"source", @"status": @"status", @"tags": @"tags", @"tenantId": @"tenantId", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"company", @"convertedAt", @"createdAt", @"email", @"firstContactAt", @"name", @"notes", @"phone", @"score", @"source", @"status", @"tags", @"tenantId", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
