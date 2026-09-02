#import "OAISupplierConditionApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIPluginError.h"
#import "OAISupplierCondition.h"
#import "OAISupplierConditionCreate.h"
#import "OAISupplierConditionUpdate.h"


@interface OAISupplierConditionApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAISupplierConditionApi

NSString* kOAISupplierConditionApiErrorDomain = @"OAISupplierConditionApiErrorDomain";
NSInteger kOAISupplierConditionApiMissingParamErrorCode = 234513;

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
///  @param supplierConditionCreate  
///
///  @returns OAISupplierCondition*
///
-(NSURLSessionTask*) createSupplierConditionWithSupplierConditionCreate: (OAISupplierConditionCreate*) supplierConditionCreate
    completionHandler: (void (^)(OAISupplierCondition* output, NSError* error)) handler {
    // verify the required parameter 'supplierConditionCreate' is set
    if (supplierConditionCreate == nil) {
        NSParameterAssert(supplierConditionCreate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"supplierConditionCreate"] };
            NSError* error = [NSError errorWithDomain:kOAISupplierConditionApiErrorDomain code:kOAISupplierConditionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/supplier-conditions"];

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
    bodyParam = supplierConditionCreate;

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
                              responseType: @"OAISupplierCondition*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISupplierCondition*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param supplierConditionId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteSupplierConditionWithSupplierConditionId: (NSString*) supplierConditionId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'supplierConditionId' is set
    if (supplierConditionId == nil) {
        NSParameterAssert(supplierConditionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"supplierConditionId"] };
            NSError* error = [NSError errorWithDomain:kOAISupplierConditionApiErrorDomain code:kOAISupplierConditionApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/supplier-conditions/{supplier_condition_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (supplierConditionId != nil) {
        pathParams[@"supplier_condition_id"] = supplierConditionId;
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
///  @param supplierConditionId  
///
///  @returns OAISupplierCondition*
///
-(NSURLSessionTask*) getSupplierConditionWithSupplierConditionId: (NSString*) supplierConditionId
    completionHandler: (void (^)(OAISupplierCondition* output, NSError* error)) handler {
    // verify the required parameter 'supplierConditionId' is set
    if (supplierConditionId == nil) {
        NSParameterAssert(supplierConditionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"supplierConditionId"] };
            NSError* error = [NSError errorWithDomain:kOAISupplierConditionApiErrorDomain code:kOAISupplierConditionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/supplier-conditions/{supplier_condition_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (supplierConditionId != nil) {
        pathParams[@"supplier_condition_id"] = supplierConditionId;
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
                              responseType: @"OAISupplierCondition*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISupplierCondition*)data, error);
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
///  @param supplierContactId  (optional)
///
///  @param search  (optional)
///
///  @returns NSArray<OAISupplierCondition>*
///
-(NSURLSessionTask*) listSupplierConditionsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    supplierContactId: (NSString*) supplierContactId
    search: (NSString*) search
    completionHandler: (void (^)(NSArray<OAISupplierCondition>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/supplier-conditions/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (pageSize != nil) {
        queryParams[@"page_size"] = pageSize;
    }
    if (supplierContactId != nil) {
        queryParams[@"supplier_contact_id"] = supplierContactId;
    }
    if (search != nil) {
        queryParams[@"search"] = search;
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
                              responseType: @"NSArray<OAISupplierCondition>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAISupplierCondition>*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param supplierConditionId  
///
///  @param supplierConditionUpdate  
///
///  @returns OAISupplierCondition*
///
-(NSURLSessionTask*) updateSupplierConditionWithSupplierConditionId: (NSString*) supplierConditionId
    supplierConditionUpdate: (OAISupplierConditionUpdate*) supplierConditionUpdate
    completionHandler: (void (^)(OAISupplierCondition* output, NSError* error)) handler {
    // verify the required parameter 'supplierConditionId' is set
    if (supplierConditionId == nil) {
        NSParameterAssert(supplierConditionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"supplierConditionId"] };
            NSError* error = [NSError errorWithDomain:kOAISupplierConditionApiErrorDomain code:kOAISupplierConditionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'supplierConditionUpdate' is set
    if (supplierConditionUpdate == nil) {
        NSParameterAssert(supplierConditionUpdate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"supplierConditionUpdate"] };
            NSError* error = [NSError errorWithDomain:kOAISupplierConditionApiErrorDomain code:kOAISupplierConditionApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/supplier-conditions/{supplier_condition_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (supplierConditionId != nil) {
        pathParams[@"supplier_condition_id"] = supplierConditionId;
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
    bodyParam = supplierConditionUpdate;

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
                              responseType: @"OAISupplierCondition*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISupplierCondition*)data, error);
                                }
                            }];
}



@end
