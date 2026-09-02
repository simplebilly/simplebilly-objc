#import "OAIPlatformInfo.h"

@implementation OAIPlatformInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"author": @"author", @"changelog": @"changelog", @"configFieldNames": @"config_field_names", @"configFields": @"config_fields", @"displayName": @"display_name", @"platform": @"platform", @"pricing": @"pricing", @"supportedEntities": @"supported_entities", @"supportsExport": @"supports_export", @"supportsImport": @"supports_import", @"supportsOauth": @"supports_oauth", @"version": @"version" }];
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
