#import "OAIParticipationCreate.h"

@implementation OAIParticipationCreate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"acquiredAt": @"acquiredAt", @"boardAppointment": @"boardAppointment", @"companyName": @"companyName", @"controlAgreement": @"controlAgreement", @"legalForm": @"legalForm", @"ownershipPct": @"ownershipPct", @"purposeVehicle": @"purposeVehicle", @"votingMajority": @"votingMajority" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"acquiredAt", @"boardAppointment", @"companyName", @"controlAgreement", @"legalForm", @"ownershipPct", @"purposeVehicle", @"votingMajority"];
  return [optionalProperties containsObject:propertyName];
}

@end
