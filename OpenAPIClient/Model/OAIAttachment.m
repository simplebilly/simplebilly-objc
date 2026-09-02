#import "OAIAttachment.h"

@implementation OAIAttachment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"contactId": @"contactId", @"fileName": @"fileName", @"fileSize": @"fileSize", @"mimeType": @"mimeType", @"ocrText": @"ocrText", @"originalName": @"originalName", @"pdfaPath": @"pdfaPath", @"sha256Hash": @"sha256Hash", @"uploadedBy": @"uploadedBy" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"contactId", @"fileSize", @"mimeType", @"ocrText", @"pdfaPath", @"sha256Hash", @"uploadedBy"];
  return [optionalProperties containsObject:propertyName];
}

@end
