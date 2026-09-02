#import "OAIMarketplaceApiApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICreateConnectionRequest.h"
#import "OAIMarketplaceConnection.h"
#import "OAIOAuthAuthorizeRequest.h"
#import "OAIOAuthAuthorizeResponse.h"
#import "OAIOAuthCallbackRequest.h"
#import "OAIPlatformInfo.h"
#import "OAISyncLog.h"
#import "OAISyncSummary.h"
#import "OAIUpdateConnectionRequest.h"
#import "OAIUpdateSyncDirectionRequest.h"


@interface OAIMarketplaceApiApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIMarketplaceApiApi

NSString* kOAIMarketplaceApiApiErrorDomain = @"OAIMarketplaceApiApiErrorDomain";
NSInteger kOAIMarketplaceApiApiMissingParamErrorCode = 234513;

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
/// Create a new connection (for API-key based platforms)
/// 
///  @param createConnectionRequest  
///
///  @returns OAIMarketplaceConnection*
///
-(NSURLSessionTask*) createConnectionApiWithCreateConnectionRequest: (OAICreateConnectionRequest*) createConnectionRequest
    completionHandler: (void (^)(OAIMarketplaceConnection* output, NSError* error)) handler {
    // verify the required parameter 'createConnectionRequest' is set
    if (createConnectionRequest == nil) {
        NSParameterAssert(createConnectionRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createConnectionRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMarketplaceApiApiErrorDomain code:kOAIMarketplaceApiApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/marketplace/connections"];

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
    bodyParam = createConnectionRequest;

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
                              responseType: @"OAIMarketplaceConnection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMarketplaceConnection*)data, error);
                                }
                            }];
}

///
/// Soft-delete a connection
/// 
///  @param connectionId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteConnectionApiWithConnectionId: (NSString*) connectionId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'connectionId' is set
    if (connectionId == nil) {
        NSParameterAssert(connectionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMarketplaceApiApiErrorDomain code:kOAIMarketplaceApiApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/marketplace/connections/{connection_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connectionId != nil) {
        pathParams[@"connection_id"] = connectionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
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
/// Get a single connection
/// 
///  @param connectionId  
///
///  @returns OAIMarketplaceConnection*
///
-(NSURLSessionTask*) getConnectionApiWithConnectionId: (NSString*) connectionId
    completionHandler: (void (^)(OAIMarketplaceConnection* output, NSError* error)) handler {
    // verify the required parameter 'connectionId' is set
    if (connectionId == nil) {
        NSParameterAssert(connectionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMarketplaceApiApiErrorDomain code:kOAIMarketplaceApiApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/marketplace/connections/{connection_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connectionId != nil) {
        pathParams[@"connection_id"] = connectionId;
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
                              responseType: @"OAIMarketplaceConnection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMarketplaceConnection*)data, error);
                                }
                            }];
}

///
/// Get current sync direction configuration for a connection
/// 
///  @param connectionId  
///
///  @returns void
///
-(NSURLSessionTask*) getSyncDirectionApiWithConnectionId: (NSString*) connectionId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'connectionId' is set
    if (connectionId == nil) {
        NSParameterAssert(connectionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMarketplaceApiApiErrorDomain code:kOAIMarketplaceApiApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/marketplace/connections/{connection_id}/directions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connectionId != nil) {
        pathParams[@"connection_id"] = connectionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Get sync logs for a connection
/// 
///  @param connectionId  
///
///  @returns NSArray<OAISyncLog>*
///
-(NSURLSessionTask*) getSyncLogsApiWithConnectionId: (NSString*) connectionId
    completionHandler: (void (^)(NSArray<OAISyncLog>* output, NSError* error)) handler {
    // verify the required parameter 'connectionId' is set
    if (connectionId == nil) {
        NSParameterAssert(connectionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMarketplaceApiApiErrorDomain code:kOAIMarketplaceApiApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/marketplace/connections/{connection_id}/logs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connectionId != nil) {
        pathParams[@"connection_id"] = connectionId;
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
                              responseType: @"NSArray<OAISyncLog>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAISyncLog>*)data, error);
                                }
                            }];
}

///
/// List connections for the current tenant
/// 
///  @returns NSArray<OAIMarketplaceConnection>*
///
-(NSURLSessionTask*) listConnectionsApiWithCompletionHandler: 
    (void (^)(NSArray<OAIMarketplaceConnection>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/marketplace/connections"];

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
                              responseType: @"NSArray<OAIMarketplaceConnection>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIMarketplaceConnection>*)data, error);
                                }
                            }];
}

///
/// List all supported platforms
/// 
///  @returns NSArray<OAIPlatformInfo>*
///
-(NSURLSessionTask*) listPlatformsApiWithCompletionHandler: 
    (void (^)(NSArray<OAIPlatformInfo>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/marketplace/platforms"];

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
                              responseType: @"NSArray<OAIPlatformInfo>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIPlatformInfo>*)data, error);
                                }
                            }];
}

///
/// OAuth: initiate authorization flow
/// 
///  @param oAuthAuthorizeRequest  
///
///  @returns OAIOAuthAuthorizeResponse*
///
-(NSURLSessionTask*) oauthAuthorizeApiWithOAuthAuthorizeRequest: (OAIOAuthAuthorizeRequest*) oAuthAuthorizeRequest
    completionHandler: (void (^)(OAIOAuthAuthorizeResponse* output, NSError* error)) handler {
    // verify the required parameter 'oAuthAuthorizeRequest' is set
    if (oAuthAuthorizeRequest == nil) {
        NSParameterAssert(oAuthAuthorizeRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"oAuthAuthorizeRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMarketplaceApiApiErrorDomain code:kOAIMarketplaceApiApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/marketplace/oauth/authorize"];

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
    bodyParam = oAuthAuthorizeRequest;

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
                              responseType: @"OAIOAuthAuthorizeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOAuthAuthorizeResponse*)data, error);
                                }
                            }];
}

///
/// OAuth: handle callback after authorization
/// 
///  @param oAuthCallbackRequest  
///
///  @returns OAIMarketplaceConnection*
///
-(NSURLSessionTask*) oauthCallbackApiWithOAuthCallbackRequest: (OAIOAuthCallbackRequest*) oAuthCallbackRequest
    completionHandler: (void (^)(OAIMarketplaceConnection* output, NSError* error)) handler {
    // verify the required parameter 'oAuthCallbackRequest' is set
    if (oAuthCallbackRequest == nil) {
        NSParameterAssert(oAuthCallbackRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"oAuthCallbackRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMarketplaceApiApiErrorDomain code:kOAIMarketplaceApiApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/marketplace/oauth/callback"];

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
    bodyParam = oAuthCallbackRequest;

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
                              responseType: @"OAIMarketplaceConnection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMarketplaceConnection*)data, error);
                                }
                            }];
}

///
/// Trigger sync for a connection
/// 
///  @param connectionId  
///
///  @param syncType  (optional)
///
///  @param direction  (optional)
///
///  @returns OAISyncSummary*
///
-(NSURLSessionTask*) triggerSyncApiWithConnectionId: (NSString*) connectionId
    syncType: (NSString*) syncType
    direction: (NSString*) direction
    completionHandler: (void (^)(OAISyncSummary* output, NSError* error)) handler {
    // verify the required parameter 'connectionId' is set
    if (connectionId == nil) {
        NSParameterAssert(connectionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMarketplaceApiApiErrorDomain code:kOAIMarketplaceApiApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/marketplace/connections/{connection_id}/sync"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connectionId != nil) {
        pathParams[@"connection_id"] = connectionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (syncType != nil) {
        queryParams[@"sync_type"] = syncType;
    }
    if (direction != nil) {
        queryParams[@"direction"] = direction;
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
                              responseType: @"OAISyncSummary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISyncSummary*)data, error);
                                }
                            }];
}

///
/// Update a connection
/// 
///  @param connectionId  
///
///  @param updateConnectionRequest  
///
///  @returns OAIMarketplaceConnection*
///
-(NSURLSessionTask*) updateConnectionApiWithConnectionId: (NSString*) connectionId
    updateConnectionRequest: (OAIUpdateConnectionRequest*) updateConnectionRequest
    completionHandler: (void (^)(OAIMarketplaceConnection* output, NSError* error)) handler {
    // verify the required parameter 'connectionId' is set
    if (connectionId == nil) {
        NSParameterAssert(connectionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMarketplaceApiApiErrorDomain code:kOAIMarketplaceApiApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'updateConnectionRequest' is set
    if (updateConnectionRequest == nil) {
        NSParameterAssert(updateConnectionRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"updateConnectionRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMarketplaceApiApiErrorDomain code:kOAIMarketplaceApiApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/marketplace/connections/{connection_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connectionId != nil) {
        pathParams[@"connection_id"] = connectionId;
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
    bodyParam = updateConnectionRequest;

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
                              responseType: @"OAIMarketplaceConnection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMarketplaceConnection*)data, error);
                                }
                            }];
}

///
/// Update per-entity sync direction configuration for a connection
/// 
///  @param connectionId  
///
///  @param updateSyncDirectionRequest  
///
///  @returns void
///
-(NSURLSessionTask*) updateSyncDirectionApiWithConnectionId: (NSString*) connectionId
    updateSyncDirectionRequest: (OAIUpdateSyncDirectionRequest*) updateSyncDirectionRequest
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'connectionId' is set
    if (connectionId == nil) {
        NSParameterAssert(connectionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMarketplaceApiApiErrorDomain code:kOAIMarketplaceApiApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'updateSyncDirectionRequest' is set
    if (updateSyncDirectionRequest == nil) {
        NSParameterAssert(updateSyncDirectionRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"updateSyncDirectionRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMarketplaceApiApiErrorDomain code:kOAIMarketplaceApiApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/marketplace/connections/{connection_id}/directions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connectionId != nil) {
        pathParams[@"connection_id"] = connectionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
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
    bodyParam = updateSyncDirectionRequest;

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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Webhook receiver
/// 
///  @param platform  
///
///  @param connectionId  
///
///  @returns void
///
-(NSURLSessionTask*) webhookReceiverApiWithPlatform: (NSString*) platform
    connectionId: (NSString*) connectionId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'platform' is set
    if (platform == nil) {
        NSParameterAssert(platform);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"platform"] };
            NSError* error = [NSError errorWithDomain:kOAIMarketplaceApiApiErrorDomain code:kOAIMarketplaceApiApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'connectionId' is set
    if (connectionId == nil) {
        NSParameterAssert(connectionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMarketplaceApiApiErrorDomain code:kOAIMarketplaceApiApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/marketplace/webhook/{platform}/{connection_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (platform != nil) {
        pathParams[@"platform"] = platform;
    }
    if (connectionId != nil) {
        pathParams[@"connection_id"] = connectionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}



@end
