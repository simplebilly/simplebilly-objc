#import "OAIDeliveryDateApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAnyType.h"
#import "OAIDeliveryDate.h"
#import "OAIDeliveryDateCreate.h"
#import "OAIDeliveryDateStatusUpdate.h"
#import "OAIPluginError.h"


@interface OAIDeliveryDateApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIDeliveryDateApi

NSString* kOAIDeliveryDateApiErrorDomain = @"OAIDeliveryDateApiErrorDomain";
NSInteger kOAIDeliveryDateApiMissingParamErrorCode = 234513;

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
///  @param deliveryDateCreate  
///
///  @returns OAIDeliveryDate*
///
-(NSURLSessionTask*) createDeliveryDateWithDeliveryDateCreate: (OAIDeliveryDateCreate*) deliveryDateCreate
    completionHandler: (void (^)(OAIDeliveryDate* output, NSError* error)) handler {
    // verify the required parameter 'deliveryDateCreate' is set
    if (deliveryDateCreate == nil) {
        NSParameterAssert(deliveryDateCreate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deliveryDateCreate"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliveryDateApiErrorDomain code:kOAIDeliveryDateApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/delivery-dates"];

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
    bodyParam = deliveryDateCreate;

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
                              responseType: @"OAIDeliveryDate*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliveryDate*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param deliveryDateId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteDeliveryDateWithDeliveryDateId: (NSString*) deliveryDateId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'deliveryDateId' is set
    if (deliveryDateId == nil) {
        NSParameterAssert(deliveryDateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deliveryDateId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliveryDateApiErrorDomain code:kOAIDeliveryDateApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/delivery-dates/{delivery_date_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (deliveryDateId != nil) {
        pathParams[@"delivery_date_id"] = deliveryDateId;
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
///  @param deliveryDateId  
///
///  @returns OAIDeliveryDate*
///
-(NSURLSessionTask*) getDeliveryDateWithDeliveryDateId: (NSString*) deliveryDateId
    completionHandler: (void (^)(OAIDeliveryDate* output, NSError* error)) handler {
    // verify the required parameter 'deliveryDateId' is set
    if (deliveryDateId == nil) {
        NSParameterAssert(deliveryDateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deliveryDateId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliveryDateApiErrorDomain code:kOAIDeliveryDateApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/delivery-dates/{delivery_date_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (deliveryDateId != nil) {
        pathParams[@"delivery_date_id"] = deliveryDateId;
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
                              responseType: @"OAIDeliveryDate*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliveryDate*)data, error);
                                }
                            }];
}

///
/// On-time performance summary: how many promised delivery dates were met within a period.
/// 
///  @param page  (optional)
///
///  @param pageSize  (optional)
///
///  @param orderNumber  (optional)
///
///  @param status  (optional)
///
///  @param from Only dates on or after this date. (optional)
///
///  @param to Only dates on or before this date. (optional)
///
///  @returns OAIAnyType*
///
-(NSURLSessionTask*) getDeliveryPerformanceWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    orderNumber: (NSString*) orderNumber
    status: (NSString*) status
    from: (NSDate*) from
    to: (NSDate*) to
    completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/delivery-dates/performance"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (pageSize != nil) {
        queryParams[@"pageSize"] = pageSize;
    }
    if (orderNumber != nil) {
        queryParams[@"orderNumber"] = orderNumber;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (from != nil) {
        queryParams[@"from"] = from;
    }
    if (to != nil) {
        queryParams[@"to"] = to;
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
                              responseType: @"OAIAnyType*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAnyType*)data, error);
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
///  @param orderNumber  (optional)
///
///  @param status  (optional)
///
///  @param from Only dates on or after this date. (optional)
///
///  @param to Only dates on or before this date. (optional)
///
///  @returns NSArray<OAIDeliveryDate>*
///
-(NSURLSessionTask*) listDeliveryDatesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    orderNumber: (NSString*) orderNumber
    status: (NSString*) status
    from: (NSDate*) from
    to: (NSDate*) to
    completionHandler: (void (^)(NSArray<OAIDeliveryDate>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/delivery-dates/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (pageSize != nil) {
        queryParams[@"pageSize"] = pageSize;
    }
    if (orderNumber != nil) {
        queryParams[@"orderNumber"] = orderNumber;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (from != nil) {
        queryParams[@"from"] = from;
    }
    if (to != nil) {
        queryParams[@"to"] = to;
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
                              responseType: @"NSArray<OAIDeliveryDate>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIDeliveryDate>*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param deliveryDateId  
///
///  @param body  
///
///  @returns OAIDeliveryDate*
///
-(NSURLSessionTask*) updateDeliveryDateWithDeliveryDateId: (NSString*) deliveryDateId
    body: (OAIAnyType*) body
    completionHandler: (void (^)(OAIDeliveryDate* output, NSError* error)) handler {
    // verify the required parameter 'deliveryDateId' is set
    if (deliveryDateId == nil) {
        NSParameterAssert(deliveryDateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deliveryDateId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliveryDateApiErrorDomain code:kOAIDeliveryDateApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliveryDateApiErrorDomain code:kOAIDeliveryDateApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/delivery-dates/{delivery_date_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (deliveryDateId != nil) {
        pathParams[@"delivery_date_id"] = deliveryDateId;
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
                              responseType: @"OAIDeliveryDate*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliveryDate*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param deliveryDateId  
///
///  @param deliveryDateStatusUpdate  
///
///  @returns OAIDeliveryDate*
///
-(NSURLSessionTask*) updateDeliveryDateStatusWithDeliveryDateId: (NSString*) deliveryDateId
    deliveryDateStatusUpdate: (OAIDeliveryDateStatusUpdate*) deliveryDateStatusUpdate
    completionHandler: (void (^)(OAIDeliveryDate* output, NSError* error)) handler {
    // verify the required parameter 'deliveryDateId' is set
    if (deliveryDateId == nil) {
        NSParameterAssert(deliveryDateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deliveryDateId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliveryDateApiErrorDomain code:kOAIDeliveryDateApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'deliveryDateStatusUpdate' is set
    if (deliveryDateStatusUpdate == nil) {
        NSParameterAssert(deliveryDateStatusUpdate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deliveryDateStatusUpdate"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliveryDateApiErrorDomain code:kOAIDeliveryDateApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/delivery-dates/{delivery_date_id}/status"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (deliveryDateId != nil) {
        pathParams[@"delivery_date_id"] = deliveryDateId;
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
    bodyParam = deliveryDateStatusUpdate;

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
                              responseType: @"OAIDeliveryDate*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliveryDate*)data, error);
                                }
                            }];
}



@end
