#import "OAINewVersionRequest.h"

@implementation OAINewVersionRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"fileName": @"fileName", @"fileSize": @"fileSize", @"mimeType": @"mimeType", @"originalName": @"originalName", @"sha256Hash": @"sha256Hash" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"fileSize", @"mimeType", @"originalName", @"sha256Hash"];
  return [optionalProperties containsObject:propertyName];
}

@end
