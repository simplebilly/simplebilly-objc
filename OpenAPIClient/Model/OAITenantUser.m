#import "OAITenantUser.h"

@implementation OAITenantUser

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"email": @"email", @"emailVerified": @"email_verified", @"isActive": @"is_active", @"joinedAt": @"joined_at", @"lastLogin": @"last_login", @"name": @"name", @"permissions": @"permissions", @"role": @"role", @"userId": @"user_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"lastLogin", ];
  return [optionalProperties containsObject:propertyName];
}

@end
