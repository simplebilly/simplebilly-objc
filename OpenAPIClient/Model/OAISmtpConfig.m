#import "OAISmtpConfig.h"

@implementation OAISmtpConfig

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"encryption": @"encryption", @"fromAddress": @"from_address", @"fromName": @"from_name", @"host": @"host", @"password": @"password", @"port": @"port", @"timeoutSeconds": @"timeout_seconds", @"username": @"username" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"fromName", @"timeoutSeconds", ];
  return [optionalProperties containsObject:propertyName];
}

@end
