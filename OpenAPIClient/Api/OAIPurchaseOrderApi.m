#import "OAIPurchaseOrderApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAnyType.h"
#import "OAIInvoiceMatchRequest.h"
#import "OAIPluginError.h"
#import "OAIPurchaseOrder.h"
#import "OAIPurchaseOrderStatusUpdate.h"


@interface OAIPurchaseOrderApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIPurchaseOrderApi

NSString* kOAIPurchaseOrderApiErrorDomain = @"OAIPurchaseOrderApiErrorDomain";
NSInteger kOAIPurchaseOrderApiMissingParamErrorCode = 234513;

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
///  @param purchaseOrder  
///
///  @returns OAIPurchaseOrder*
///
-(NSURLSessionTask*) createPurchaseOrderWithPurchaseOrder: (OAIPurchaseOrder*) purchaseOrder
    completionHandler: (void (^)(OAIPurchaseOrder* output, NSError* error)) handler {
    // verify the required parameter 'purchaseOrder' is set
    if (purchaseOrder == nil) {
        NSParameterAssert(purchaseOrder);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseOrder"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/purchase-orders"];

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
    bodyParam = purchaseOrder;

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
                              responseType: @"OAIPurchaseOrder*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPurchaseOrder*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param purchaseOrderId  
///
///  @returns void
///
-(NSURLSessionTask*) deletePurchaseOrderWithPurchaseOrderId: (NSString*) purchaseOrderId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'purchaseOrderId' is set
    if (purchaseOrderId == nil) {
        NSParameterAssert(purchaseOrderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseOrderId"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/purchase-orders/{purchase_order_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (purchaseOrderId != nil) {
        pathParams[@"purchase_order_id"] = purchaseOrderId;
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
///  @param purchaseOrderId  
///
///  @returns OAIPurchaseOrder*
///
-(NSURLSessionTask*) getPurchaseOrderWithPurchaseOrderId: (NSString*) purchaseOrderId
    completionHandler: (void (^)(OAIPurchaseOrder* output, NSError* error)) handler {
    // verify the required parameter 'purchaseOrderId' is set
    if (purchaseOrderId == nil) {
        NSParameterAssert(purchaseOrderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseOrderId"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/purchase-orders/{purchase_order_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (purchaseOrderId != nil) {
        pathParams[@"purchase_order_id"] = purchaseOrderId;
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
                              responseType: @"OAIPurchaseOrder*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPurchaseOrder*)data, error);
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
///  @param status  (optional)
///
///  @param supplierName  (optional)
///
///  @param search  (optional)
///
///  @returns NSArray<OAIPurchaseOrder>*
///
-(NSURLSessionTask*) listPurchaseOrdersWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    status: (NSString*) status
    supplierName: (NSString*) supplierName
    search: (NSString*) search
    completionHandler: (void (^)(NSArray<OAIPurchaseOrder>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/purchase-orders/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (pageSize != nil) {
        queryParams[@"page_size"] = pageSize;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (supplierName != nil) {
        queryParams[@"supplier_name"] = supplierName;
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
                              responseType: @"NSArray<OAIPurchaseOrder>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIPurchaseOrder>*)data, error);
                                }
                            }];
}

///
/// 3-way invoice check (Rechnungsprüfung): compares the purchase order line items, the quantities received via goods receipts, and the supplier invoice line items, reporting quantity and price variances per product.
/// 
///  @param purchaseOrderId  
///
///  @param invoiceMatchRequest  
///
///  @returns OAIAnyType*
///
-(NSURLSessionTask*) matchInvoiceWithPurchaseOrderId: (NSString*) purchaseOrderId
    invoiceMatchRequest: (OAIInvoiceMatchRequest*) invoiceMatchRequest
    completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler {
    // verify the required parameter 'purchaseOrderId' is set
    if (purchaseOrderId == nil) {
        NSParameterAssert(purchaseOrderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseOrderId"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'invoiceMatchRequest' is set
    if (invoiceMatchRequest == nil) {
        NSParameterAssert(invoiceMatchRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"invoiceMatchRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/purchase-orders/{purchase_order_id}/match-invoice"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (purchaseOrderId != nil) {
        pathParams[@"purchase_order_id"] = purchaseOrderId;
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
    bodyParam = invoiceMatchRequest;

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
///  @param purchaseOrderId  
///
///  @param body  
///
///  @returns OAIPurchaseOrder*
///
-(NSURLSessionTask*) updatePurchaseOrderWithPurchaseOrderId: (NSString*) purchaseOrderId
    body: (OAIAnyType*) body
    completionHandler: (void (^)(OAIPurchaseOrder* output, NSError* error)) handler {
    // verify the required parameter 'purchaseOrderId' is set
    if (purchaseOrderId == nil) {
        NSParameterAssert(purchaseOrderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseOrderId"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/purchase-orders/{purchase_order_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (purchaseOrderId != nil) {
        pathParams[@"purchase_order_id"] = purchaseOrderId;
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
                              responseType: @"OAIPurchaseOrder*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPurchaseOrder*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param purchaseOrderId  
///
///  @param purchaseOrderStatusUpdate  
///
///  @returns OAIPurchaseOrder*
///
-(NSURLSessionTask*) updatePurchaseOrderStatusWithPurchaseOrderId: (NSString*) purchaseOrderId
    purchaseOrderStatusUpdate: (OAIPurchaseOrderStatusUpdate*) purchaseOrderStatusUpdate
    completionHandler: (void (^)(OAIPurchaseOrder* output, NSError* error)) handler {
    // verify the required parameter 'purchaseOrderId' is set
    if (purchaseOrderId == nil) {
        NSParameterAssert(purchaseOrderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseOrderId"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'purchaseOrderStatusUpdate' is set
    if (purchaseOrderStatusUpdate == nil) {
        NSParameterAssert(purchaseOrderStatusUpdate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseOrderStatusUpdate"] };
            NSError* error = [NSError errorWithDomain:kOAIPurchaseOrderApiErrorDomain code:kOAIPurchaseOrderApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/purchase-orders/{purchase_order_id}/status"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (purchaseOrderId != nil) {
        pathParams[@"purchase_order_id"] = purchaseOrderId;
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
    bodyParam = purchaseOrderStatusUpdate;

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
                              responseType: @"OAIPurchaseOrder*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPurchaseOrder*)data, error);
                                }
                            }];
}



@end
