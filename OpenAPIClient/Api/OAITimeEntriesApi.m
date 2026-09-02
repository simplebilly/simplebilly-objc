#import "OAITimeEntriesApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAILaborCostRow.h"
#import "OAIPluginError.h"
#import "OAITimeEntryClockIn.h"
#import "OAITimeEntryClockOut.h"
#import "OAITimeEntryDto.h"


@interface OAITimeEntriesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAITimeEntriesApi

NSString* kOAITimeEntriesApiErrorDomain = @"OAITimeEntriesApiErrorDomain";
NSInteger kOAITimeEntriesApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Clock in for the authenticated user (resolved via their employee profile).
/// 
///  @param timeEntryClockIn  
///
///  @returns OAITimeEntryDto*
///
-(NSURLSessionTask*) clockInTimeEntryWithTimeEntryClockIn: (OAITimeEntryClockIn*) timeEntryClockIn
    completionHandler: (void (^)(OAITimeEntryDto* output, NSError* error)) handler {
    // verify the required parameter 'timeEntryClockIn' is set
    if (timeEntryClockIn == nil) {
        NSParameterAssert(timeEntryClockIn);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"timeEntryClockIn"] };
            NSError* error = [NSError errorWithDomain:kOAITimeEntriesApiErrorDomain code:kOAITimeEntriesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/time-entries"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"bearer_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = timeEntryClockIn;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAITimeEntryDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITimeEntryDto*)data, error);
                                }
                            }];
}

///
/// Clock out an entry: the entry's owner, or anyone with `time_entries:write`.
/// 
///  @param _id  
///
///  @param timeEntryClockOut  
///
///  @returns OAITimeEntryDto*
///
-(NSURLSessionTask*) clockOutTimeEntryWithId: (NSString*) _id
    timeEntryClockOut: (OAITimeEntryClockOut*) timeEntryClockOut
    completionHandler: (void (^)(OAITimeEntryDto* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAITimeEntriesApiErrorDomain code:kOAITimeEntriesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'timeEntryClockOut' is set
    if (timeEntryClockOut == nil) {
        NSParameterAssert(timeEntryClockOut);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"timeEntryClockOut"] };
            NSError* error = [NSError errorWithDomain:kOAITimeEntriesApiErrorDomain code:kOAITimeEntriesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/time-entries/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"bearer_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = timeEntryClockOut;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PATCH"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAITimeEntryDto*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITimeEntryDto*)data, error);
                                }
                            }];
}

///
/// Labor-cost report: worked hours aggregated per employee / order / day, valued at the employee's hourly cost rate.
/// 
///  @param from  
///
///  @param to  
///
///  @param groupBy One of \"employee\", \"order\" or \"day\". 
///
///  @returns NSArray<OAILaborCostRow>*
///
-(NSURLSessionTask*) getLaborCostsWithFrom: (NSDate*) from
    to: (NSDate*) to
    groupBy: (NSString*) groupBy
    completionHandler: (void (^)(NSArray<OAILaborCostRow>* output, NSError* error)) handler {
    // verify the required parameter 'from' is set
    if (from == nil) {
        NSParameterAssert(from);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"from"] };
            NSError* error = [NSError errorWithDomain:kOAITimeEntriesApiErrorDomain code:kOAITimeEntriesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'to' is set
    if (to == nil) {
        NSParameterAssert(to);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"to"] };
            NSError* error = [NSError errorWithDomain:kOAITimeEntriesApiErrorDomain code:kOAITimeEntriesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'groupBy' is set
    if (groupBy == nil) {
        NSParameterAssert(groupBy);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"groupBy"] };
            NSError* error = [NSError errorWithDomain:kOAITimeEntriesApiErrorDomain code:kOAITimeEntriesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/labor-costs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (from != nil) {
        queryParams[@"from"] = from;
    }
    if (to != nil) {
        queryParams[@"to"] = to;
    }
    if (groupBy != nil) {
        queryParams[@"group_by"] = groupBy;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"bearer_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAILaborCostRow>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAILaborCostRow>*)data, error);
                                }
                            }];
}

///
/// List time entries with optional date-range / active / employee filters.
/// 
///  @param from  (optional)
///
///  @param to  (optional)
///
///  @param active Only currently running shifts (clock_in set, clock_out null). (optional)
///
///  @param employeeId  (optional)
///
///  @returns NSArray<OAITimeEntryDto>*
///
-(NSURLSessionTask*) listTimeEntriesWithFrom: (NSDate*) from
    to: (NSDate*) to
    active: (NSNumber*) active
    employeeId: (NSString*) employeeId
    completionHandler: (void (^)(NSArray<OAITimeEntryDto>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/time-entries"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (from != nil) {
        queryParams[@"from"] = from;
    }
    if (to != nil) {
        queryParams[@"to"] = to;
    }
    if (active != nil) {
        queryParams[@"active"] = [active isEqual:@(YES)] ? @"true" : @"false";
    }
    if (employeeId != nil) {
        queryParams[@"employee_id"] = employeeId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"bearer_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<OAITimeEntryDto>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAITimeEntryDto>*)data, error);
                                }
                            }];
}



@end
