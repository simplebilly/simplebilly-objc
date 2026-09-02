#import "OAISupplierInvoiceApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAnyType.h"
#import "OAIPluginError.h"
#import "OAISupplierInvoice.h"
#import "OAISupplierInvoiceStatusUpdate.h"


@interface OAISupplierInvoiceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAISupplierInvoiceApi

NSString* kOAISupplierInvoiceApiErrorDomain = @"OAISupplierInvoiceApiErrorDomain";
NSInteger kOAISupplierInvoiceApiMissingParamErrorCode = 234513;

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
///  @param supplierInvoice  
///
///  @returns OAISupplierInvoice*
///
-(NSURLSessionTask*) createSupplierInvoiceWithSupplierInvoice: (OAISupplierInvoice*) supplierInvoice
    completionHandler: (void (^)(OAISupplierInvoice* output, NSError* error)) handler {
    // verify the required parameter 'supplierInvoice' is set
    if (supplierInvoice == nil) {
        NSParameterAssert(supplierInvoice);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"supplierInvoice"] };
            NSError* error = [NSError errorWithDomain:kOAISupplierInvoiceApiErrorDomain code:kOAISupplierInvoiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/supplier-invoices"];

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
    bodyParam = supplierInvoice;

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
                              responseType: @"OAISupplierInvoice*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISupplierInvoice*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param supplierInvoiceId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteSupplierInvoiceWithSupplierInvoiceId: (NSString*) supplierInvoiceId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'supplierInvoiceId' is set
    if (supplierInvoiceId == nil) {
        NSParameterAssert(supplierInvoiceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"supplierInvoiceId"] };
            NSError* error = [NSError errorWithDomain:kOAISupplierInvoiceApiErrorDomain code:kOAISupplierInvoiceApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/supplier-invoices/{supplier_invoice_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (supplierInvoiceId != nil) {
        pathParams[@"supplier_invoice_id"] = supplierInvoiceId;
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
///  @param supplierInvoiceId  
///
///  @returns OAISupplierInvoice*
///
-(NSURLSessionTask*) getSupplierInvoiceWithSupplierInvoiceId: (NSString*) supplierInvoiceId
    completionHandler: (void (^)(OAISupplierInvoice* output, NSError* error)) handler {
    // verify the required parameter 'supplierInvoiceId' is set
    if (supplierInvoiceId == nil) {
        NSParameterAssert(supplierInvoiceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"supplierInvoiceId"] };
            NSError* error = [NSError errorWithDomain:kOAISupplierInvoiceApiErrorDomain code:kOAISupplierInvoiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/supplier-invoices/{supplier_invoice_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (supplierInvoiceId != nil) {
        pathParams[@"supplier_invoice_id"] = supplierInvoiceId;
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
                              responseType: @"OAISupplierInvoice*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISupplierInvoice*)data, error);
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
///  @param purchaseOrderId  (optional)
///
///  @param supplierName  (optional)
///
///  @returns NSArray<OAISupplierInvoice>*
///
-(NSURLSessionTask*) listSupplierInvoicesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    status: (NSString*) status
    purchaseOrderId: (NSString*) purchaseOrderId
    supplierName: (NSString*) supplierName
    completionHandler: (void (^)(NSArray<OAISupplierInvoice>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/supplier-invoices/"];

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
    if (purchaseOrderId != nil) {
        queryParams[@"purchase_order_id"] = purchaseOrderId;
    }
    if (supplierName != nil) {
        queryParams[@"supplier_name"] = supplierName;
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
                              responseType: @"NSArray<OAISupplierInvoice>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAISupplierInvoice>*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param supplierInvoiceId  
///
///  @param body  
///
///  @returns OAISupplierInvoice*
///
-(NSURLSessionTask*) updateSupplierInvoiceWithSupplierInvoiceId: (NSString*) supplierInvoiceId
    body: (OAIAnyType*) body
    completionHandler: (void (^)(OAISupplierInvoice* output, NSError* error)) handler {
    // verify the required parameter 'supplierInvoiceId' is set
    if (supplierInvoiceId == nil) {
        NSParameterAssert(supplierInvoiceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"supplierInvoiceId"] };
            NSError* error = [NSError errorWithDomain:kOAISupplierInvoiceApiErrorDomain code:kOAISupplierInvoiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAISupplierInvoiceApiErrorDomain code:kOAISupplierInvoiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/supplier-invoices/{supplier_invoice_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (supplierInvoiceId != nil) {
        pathParams[@"supplier_invoice_id"] = supplierInvoiceId;
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
                              responseType: @"OAISupplierInvoice*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISupplierInvoice*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param supplierInvoiceId  
///
///  @param supplierInvoiceStatusUpdate  
///
///  @returns OAISupplierInvoice*
///
-(NSURLSessionTask*) updateSupplierInvoiceStatusWithSupplierInvoiceId: (NSString*) supplierInvoiceId
    supplierInvoiceStatusUpdate: (OAISupplierInvoiceStatusUpdate*) supplierInvoiceStatusUpdate
    completionHandler: (void (^)(OAISupplierInvoice* output, NSError* error)) handler {
    // verify the required parameter 'supplierInvoiceId' is set
    if (supplierInvoiceId == nil) {
        NSParameterAssert(supplierInvoiceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"supplierInvoiceId"] };
            NSError* error = [NSError errorWithDomain:kOAISupplierInvoiceApiErrorDomain code:kOAISupplierInvoiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'supplierInvoiceStatusUpdate' is set
    if (supplierInvoiceStatusUpdate == nil) {
        NSParameterAssert(supplierInvoiceStatusUpdate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"supplierInvoiceStatusUpdate"] };
            NSError* error = [NSError errorWithDomain:kOAISupplierInvoiceApiErrorDomain code:kOAISupplierInvoiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/supplier-invoices/{supplier_invoice_id}/status"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (supplierInvoiceId != nil) {
        pathParams[@"supplier_invoice_id"] = supplierInvoiceId;
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
    bodyParam = supplierInvoiceStatusUpdate;

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
                              responseType: @"OAISupplierInvoice*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISupplierInvoice*)data, error);
                                }
                            }];
}



@end
