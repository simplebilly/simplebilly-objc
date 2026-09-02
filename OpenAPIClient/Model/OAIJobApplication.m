#import "OAIJobApplication.h"

@implementation OAIJobApplication

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"cvFile": @"cvFile", @"cvText": @"cvText", @"email": @"email", @"matchReason": @"matchReason", @"matchScore": @"matchScore", @"name": @"name", @"phone": @"phone", @"postingId": @"postingId", @"source": @"source", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"cvFile", @"cvText", @"email", @"matchReason", @"matchScore", @"name", @"phone", @"postingId", ];
  return [optionalProperties containsObject:propertyName];
}

@end
