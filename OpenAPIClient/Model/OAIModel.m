#import "OAIModel.h"

@implementation OAIModel

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"backupCodes": @"backup_codes", @"createdAt": @"created_at", @"deletedAt": @"deleted_at", @"email": @"email", @"emailVerified": @"email_verified", @"_id": @"id", @"isActive": @"is_active", @"isTotpEnabled": @"is_totp_enabled", @"lastLogin": @"last_login", @"name": @"name", @"oauthId": @"oauth_id", @"oauthProvider": @"oauth_provider", @"passwordChangedAt": @"password_changed_at", @"passwordHash": @"password_hash", @"picture": @"picture", @"privacyAcceptedAt": @"privacy_accepted_at", @"totpSecret": @"totp_secret", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"deletedAt", @"lastLogin", @"oauthId", @"oauthProvider", @"passwordChangedAt", @"picture", @"privacyAcceptedAt", @"totpSecret", ];
  return [optionalProperties containsObject:propertyName];
}

@end
