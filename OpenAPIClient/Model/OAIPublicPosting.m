#import "OAIPublicPosting.h"

@implementation OAIPublicPosting

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"currency": @"currency", @"_description": @"description", @"employmentType": @"employmentType", @"_id": @"id", @"location": @"location", @"remote": @"remote", @"requiredSkills": @"requiredSkills", @"requirements": @"requirements", @"salaryMax": @"salaryMax", @"salaryMin": @"salaryMin", @"title": @"title" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"currency", @"employmentType", @"location", @"requirements", @"salaryMax", @"salaryMin", ];
  return [optionalProperties containsObject:propertyName];
}

@end
