#import "OAIShippingThresholdApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIDeliverableResponse.h"
#import "OAIPluginError.h"
#import "OAIShippingThreshold.h"
#import "OAIShippingThresholdCreate.h"
#import "OAIShippingThresholdUpdate.h"


@interface OAIShippingThresholdApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIShippingThresholdApi

NSString* kOAIShippingThresholdApiErrorDomain = @"OAIShippingThresholdApiErrorDomain";
NSInteger kOAIShippingThresholdApiMissingParamErrorCode = 234513;

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
///  @param shippingThresholdCreate  
///
///  @returns OAIShippingThreshold*
///
-(NSURLSessionTask*) createShippingThresholdWithShippingThresholdCreate: (OAIShippingThresholdCreate*) shippingThresholdCreate
    completionHandler: (void (^)(OAIShippingThreshold* output, NSError* error)) handler {
    // verify the required parameter 'shippingThresholdCreate' is set
    if (shippingThresholdCreate == nil) {
        NSParameterAssert(shippingThresholdCreate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"shippingThresholdCreate"] };
            NSError* error = [NSError errorWithDomain:kOAIShippingThresholdApiErrorDomain code:kOAIShippingThresholdApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/shipping-thresholds"];

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
    bodyParam = shippingThresholdCreate;

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
                              responseType: @"OAIShippingThreshold*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIShippingThreshold*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param thresholdId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteShippingThresholdWithThresholdId: (NSString*) thresholdId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'thresholdId' is set
    if (thresholdId == nil) {
        NSParameterAssert(thresholdId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"thresholdId"] };
            NSError* error = [NSError errorWithDomain:kOAIShippingThresholdApiErrorDomain code:kOAIShippingThresholdApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/shipping-thresholds/{threshold_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (thresholdId != nil) {
        pathParams[@"threshold_id"] = thresholdId;
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
///  @param productId  
///
///  @param warehouseId  (optional)
///
///  @returns OAIDeliverableResponse*
///
-(NSURLSessionTask*) getDeliverableWithProductId: (NSString*) productId
    warehouseId: (NSString*) warehouseId
    completionHandler: (void (^)(OAIDeliverableResponse* output, NSError* error)) handler {
    // verify the required parameter 'productId' is set
    if (productId == nil) {
        NSParameterAssert(productId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"productId"] };
            NSError* error = [NSError errorWithDomain:kOAIShippingThresholdApiErrorDomain code:kOAIShippingThresholdApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/shipping-thresholds/deliverable"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (productId != nil) {
        queryParams[@"productId"] = productId;
    }
    if (warehouseId != nil) {
        queryParams[@"warehouseId"] = warehouseId;
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
                              responseType: @"OAIDeliverableResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliverableResponse*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param thresholdId  
///
///  @returns OAIShippingThreshold*
///
-(NSURLSessionTask*) getShippingThresholdWithThresholdId: (NSString*) thresholdId
    completionHandler: (void (^)(OAIShippingThreshold* output, NSError* error)) handler {
    // verify the required parameter 'thresholdId' is set
    if (thresholdId == nil) {
        NSParameterAssert(thresholdId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"thresholdId"] };
            NSError* error = [NSError errorWithDomain:kOAIShippingThresholdApiErrorDomain code:kOAIShippingThresholdApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/shipping-thresholds/{threshold_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (thresholdId != nil) {
        pathParams[@"threshold_id"] = thresholdId;
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
                              responseType: @"OAIShippingThreshold*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIShippingThreshold*)data, error);
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
///  @param productId  (optional)
///
///  @param warehouseId  (optional)
///
///  @param isActive  (optional)
///
///  @returns NSArray<OAIShippingThreshold>*
///
-(NSURLSessionTask*) listShippingThresholdsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    productId: (NSString*) productId
    warehouseId: (NSString*) warehouseId
    isActive: (NSNumber*) isActive
    completionHandler: (void (^)(NSArray<OAIShippingThreshold>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/shipping-thresholds/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (pageSize != nil) {
        queryParams[@"page_size"] = pageSize;
    }
    if (productId != nil) {
        queryParams[@"product_id"] = productId;
    }
    if (warehouseId != nil) {
        queryParams[@"warehouse_id"] = warehouseId;
    }
    if (isActive != nil) {
        queryParams[@"is_active"] = [isActive isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIShippingThreshold>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIShippingThreshold>*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param thresholdId  
///
///  @param shippingThresholdUpdate  
///
///  @returns OAIShippingThreshold*
///
-(NSURLSessionTask*) updateShippingThresholdWithThresholdId: (NSString*) thresholdId
    shippingThresholdUpdate: (OAIShippingThresholdUpdate*) shippingThresholdUpdate
    completionHandler: (void (^)(OAIShippingThreshold* output, NSError* error)) handler {
    // verify the required parameter 'thresholdId' is set
    if (thresholdId == nil) {
        NSParameterAssert(thresholdId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"thresholdId"] };
            NSError* error = [NSError errorWithDomain:kOAIShippingThresholdApiErrorDomain code:kOAIShippingThresholdApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'shippingThresholdUpdate' is set
    if (shippingThresholdUpdate == nil) {
        NSParameterAssert(shippingThresholdUpdate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"shippingThresholdUpdate"] };
            NSError* error = [NSError errorWithDomain:kOAIShippingThresholdApiErrorDomain code:kOAIShippingThresholdApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/shipping-thresholds/{threshold_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (thresholdId != nil) {
        pathParams[@"threshold_id"] = thresholdId;
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
    bodyParam = shippingThresholdUpdate;

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
                              responseType: @"OAIShippingThreshold*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIShippingThreshold*)data, error);
                                }
                            }];
}



@end
