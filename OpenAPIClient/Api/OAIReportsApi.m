#import "OAIReportsApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIBilanzReport.h"
#import "OAIGuVReport.h"
#import "OAIKontoReport.h"
#import "OAIUmsatzsteuerReport.h"


@interface OAIReportsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIReportsApi

NSString* kOAIReportsApiErrorDomain = @"OAIReportsApiErrorDomain";
NSInteger kOAIReportsApiMissingParamErrorCode = 234513;

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
/// Bilanz (Balance Sheet)
/// 
///  @param year  (optional)
///
///  @param month  (optional)
///
///  @param dateFrom  (optional)
///
///  @param dateTo  (optional)
///
///  @param page  (optional)
///
///  @param pageSize  (optional)
///
///  @returns OAIBilanzReport*
///
-(NSURLSessionTask*) bilanzReportApiWithYear: (NSNumber*) year
    month: (NSNumber*) month
    dateFrom: (NSString*) dateFrom
    dateTo: (NSString*) dateTo
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    completionHandler: (void (^)(OAIBilanzReport* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/bookkeeping/reports/bilanz"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (year != nil) {
        queryParams[@"year"] = year;
    }
    if (month != nil) {
        queryParams[@"month"] = month;
    }
    if (dateFrom != nil) {
        queryParams[@"date_from"] = dateFrom;
    }
    if (dateTo != nil) {
        queryParams[@"date_to"] = dateTo;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (pageSize != nil) {
        queryParams[@"page_size"] = pageSize;
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
                              responseType: @"OAIBilanzReport*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIBilanzReport*)data, error);
                                }
                            }];
}

///
/// Gewinn- und Verlustrechnung (P&L statement)
/// 
///  @param year  (optional)
///
///  @param month  (optional)
///
///  @param dateFrom  (optional)
///
///  @param dateTo  (optional)
///
///  @param page  (optional)
///
///  @param pageSize  (optional)
///
///  @returns OAIGuVReport*
///
-(NSURLSessionTask*) guvReportApiWithYear: (NSNumber*) year
    month: (NSNumber*) month
    dateFrom: (NSString*) dateFrom
    dateTo: (NSString*) dateTo
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    completionHandler: (void (^)(OAIGuVReport* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/bookkeeping/reports/guv"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (year != nil) {
        queryParams[@"year"] = year;
    }
    if (month != nil) {
        queryParams[@"month"] = month;
    }
    if (dateFrom != nil) {
        queryParams[@"date_from"] = dateFrom;
    }
    if (dateTo != nil) {
        queryParams[@"date_to"] = dateTo;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (pageSize != nil) {
        queryParams[@"page_size"] = pageSize;
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
                              responseType: @"OAIGuVReport*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGuVReport*)data, error);
                                }
                            }];
}

///
/// Kontenansicht (Account Overview)
/// 
///  @param year  (optional)
///
///  @param month  (optional)
///
///  @param dateFrom  (optional)
///
///  @param dateTo  (optional)
///
///  @param page  (optional)
///
///  @param pageSize  (optional)
///
///  @returns OAIKontoReport*
///
-(NSURLSessionTask*) kontenansichtReportApiWithYear: (NSNumber*) year
    month: (NSNumber*) month
    dateFrom: (NSString*) dateFrom
    dateTo: (NSString*) dateTo
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    completionHandler: (void (^)(OAIKontoReport* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/bookkeeping/reports/kontenansicht"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (year != nil) {
        queryParams[@"year"] = year;
    }
    if (month != nil) {
        queryParams[@"month"] = month;
    }
    if (dateFrom != nil) {
        queryParams[@"date_from"] = dateFrom;
    }
    if (dateTo != nil) {
        queryParams[@"date_to"] = dateTo;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (pageSize != nil) {
        queryParams[@"page_size"] = pageSize;
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
                              responseType: @"OAIKontoReport*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIKontoReport*)data, error);
                                }
                            }];
}

///
/// Umsatzsteuer-Voranmeldung (VAT report)
/// 
///  @param year  (optional)
///
///  @param month  (optional)
///
///  @param dateFrom  (optional)
///
///  @param dateTo  (optional)
///
///  @param page  (optional)
///
///  @param pageSize  (optional)
///
///  @returns OAIUmsatzsteuerReport*
///
-(NSURLSessionTask*) umsatzsteuerReportApiWithYear: (NSNumber*) year
    month: (NSNumber*) month
    dateFrom: (NSString*) dateFrom
    dateTo: (NSString*) dateTo
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    completionHandler: (void (^)(OAIUmsatzsteuerReport* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/bookkeeping/reports/umsatzsteuer"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (year != nil) {
        queryParams[@"year"] = year;
    }
    if (month != nil) {
        queryParams[@"month"] = month;
    }
    if (dateFrom != nil) {
        queryParams[@"date_from"] = dateFrom;
    }
    if (dateTo != nil) {
        queryParams[@"date_to"] = dateTo;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (pageSize != nil) {
        queryParams[@"page_size"] = pageSize;
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
                              responseType: @"OAIUmsatzsteuerReport*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIUmsatzsteuerReport*)data, error);
                                }
                            }];
}



@end
