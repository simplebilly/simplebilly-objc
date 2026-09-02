#import "OAIVoucherApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAnyType.h"
#import "OAIPluginError.h"
#import "OAIVoucher.h"
#import "OAIVoucherCreate.h"


@interface OAIVoucherApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIVoucherApi

NSString* kOAIVoucherApiErrorDomain = @"OAIVoucherApiErrorDomain";
NSInteger kOAIVoucherApiMissingParamErrorCode = 234513;

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
/// 
/// 
///  @param voucherCreate  
///
///  @returns OAIVoucher*
///
-(NSURLSessionTask*) createVoucherWithVoucherCreate: (OAIVoucherCreate*) voucherCreate
    completionHandler: (void (^)(OAIVoucher* output, NSError* error)) handler {
    // verify the required parameter 'voucherCreate' is set
    if (voucherCreate == nil) {
        NSParameterAssert(voucherCreate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"voucherCreate"] };
            NSError* error = [NSError errorWithDomain:kOAIVoucherApiErrorDomain code:kOAIVoucherApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/vouchers"];

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
    bodyParam = voucherCreate;

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
                              responseType: @"OAIVoucher*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIVoucher*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param voucherId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteVoucherWithVoucherId: (NSString*) voucherId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'voucherId' is set
    if (voucherId == nil) {
        NSParameterAssert(voucherId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"voucherId"] };
            NSError* error = [NSError errorWithDomain:kOAIVoucherApiErrorDomain code:kOAIVoucherApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/vouchers/{voucher_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (voucherId != nil) {
        pathParams[@"voucher_id"] = voucherId;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"bearer_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// 
/// 
///  @param voucherId  
///
///  @returns OAIVoucher*
///
-(NSURLSessionTask*) getVoucherWithVoucherId: (NSString*) voucherId
    completionHandler: (void (^)(OAIVoucher* output, NSError* error)) handler {
    // verify the required parameter 'voucherId' is set
    if (voucherId == nil) {
        NSParameterAssert(voucherId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"voucherId"] };
            NSError* error = [NSError errorWithDomain:kOAIVoucherApiErrorDomain code:kOAIVoucherApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/vouchers/{voucher_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (voucherId != nil) {
        pathParams[@"voucher_id"] = voucherId;
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
                              responseType: @"OAIVoucher*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIVoucher*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param page  (optional)
///
///  @param pageSize  (optional)
///
///  @param voucherType  (optional)
///
///  @param voucherStatus  (optional)
///
///  @param contactName  (optional)
///
///  @param dateFrom  (optional)
///
///  @param dateTo  (optional)
///
///  @returns NSArray<OAIVoucher>*
///
-(NSURLSessionTask*) listVouchersWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    voucherType: (NSString*) voucherType
    voucherStatus: (NSString*) voucherStatus
    contactName: (NSString*) contactName
    dateFrom: (NSDate*) dateFrom
    dateTo: (NSDate*) dateTo
    completionHandler: (void (^)(NSArray<OAIVoucher>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/vouchers/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (pageSize != nil) {
        queryParams[@"page_size"] = pageSize;
    }
    if (voucherType != nil) {
        queryParams[@"voucher_type"] = voucherType;
    }
    if (voucherStatus != nil) {
        queryParams[@"voucher_status"] = voucherStatus;
    }
    if (contactName != nil) {
        queryParams[@"contact_name"] = contactName;
    }
    if (dateFrom != nil) {
        queryParams[@"date_from"] = dateFrom;
    }
    if (dateTo != nil) {
        queryParams[@"date_to"] = dateTo;
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
                              responseType: @"NSArray<OAIVoucher>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIVoucher>*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param voucherId  
///
///  @param body  
///
///  @returns OAIVoucher*
///
-(NSURLSessionTask*) updateVoucherWithVoucherId: (NSString*) voucherId
    body: (OAIAnyType*) body
    completionHandler: (void (^)(OAIVoucher* output, NSError* error)) handler {
    // verify the required parameter 'voucherId' is set
    if (voucherId == nil) {
        NSParameterAssert(voucherId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"voucherId"] };
            NSError* error = [NSError errorWithDomain:kOAIVoucherApiErrorDomain code:kOAIVoucherApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIVoucherApiErrorDomain code:kOAIVoucherApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/vouchers/{voucher_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (voucherId != nil) {
        pathParams[@"voucher_id"] = voucherId;
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
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIVoucher*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIVoucher*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param voucherId  
///
///  @returns OAIVoucher*
///
-(NSURLSessionTask*) voucherRestoreWithVoucherId: (NSString*) voucherId
    completionHandler: (void (^)(OAIVoucher* output, NSError* error)) handler {
    // verify the required parameter 'voucherId' is set
    if (voucherId == nil) {
        NSParameterAssert(voucherId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"voucherId"] };
            NSError* error = [NSError errorWithDomain:kOAIVoucherApiErrorDomain code:kOAIVoucherApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/vouchers/{voucher_id}/restore"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (voucherId != nil) {
        pathParams[@"voucher_id"] = voucherId;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"bearer_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

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
                              responseType: @"OAIVoucher*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIVoucher*)data, error);
                                }
                            }];
}



@end
