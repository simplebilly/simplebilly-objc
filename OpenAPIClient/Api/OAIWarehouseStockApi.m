#import "OAIWarehouseStockApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIPluginError.h"
#import "OAIStockAdjustment.h"
#import "OAIWarehouseStock.h"


@interface OAIWarehouseStockApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIWarehouseStockApi

NSString* kOAIWarehouseStockApiErrorDomain = @"OAIWarehouseStockApiErrorDomain";
NSInteger kOAIWarehouseStockApiMissingParamErrorCode = 234513;

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
///  @param warehouseId  
///
///  @param stockAdjustment  
///
///  @returns OAIWarehouseStock*
///
-(NSURLSessionTask*) createWarehouseStockWithWarehouseId: (NSString*) warehouseId
    stockAdjustment: (OAIStockAdjustment*) stockAdjustment
    completionHandler: (void (^)(OAIWarehouseStock* output, NSError* error)) handler {
    // verify the required parameter 'warehouseId' is set
    if (warehouseId == nil) {
        NSParameterAssert(warehouseId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"warehouseId"] };
            NSError* error = [NSError errorWithDomain:kOAIWarehouseStockApiErrorDomain code:kOAIWarehouseStockApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'stockAdjustment' is set
    if (stockAdjustment == nil) {
        NSParameterAssert(stockAdjustment);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"stockAdjustment"] };
            NSError* error = [NSError errorWithDomain:kOAIWarehouseStockApiErrorDomain code:kOAIWarehouseStockApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/warehouses/{warehouse_id}/stock"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (warehouseId != nil) {
        pathParams[@"warehouse_id"] = warehouseId;
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
    bodyParam = stockAdjustment;

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
                              responseType: @"OAIWarehouseStock*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWarehouseStock*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param warehouseId  
///
///  @param productId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteWarehouseStockWithWarehouseId: (NSString*) warehouseId
    productId: (NSString*) productId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'warehouseId' is set
    if (warehouseId == nil) {
        NSParameterAssert(warehouseId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"warehouseId"] };
            NSError* error = [NSError errorWithDomain:kOAIWarehouseStockApiErrorDomain code:kOAIWarehouseStockApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'productId' is set
    if (productId == nil) {
        NSParameterAssert(productId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"productId"] };
            NSError* error = [NSError errorWithDomain:kOAIWarehouseStockApiErrorDomain code:kOAIWarehouseStockApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/warehouses/{warehouse_id}/stock/{product_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (warehouseId != nil) {
        pathParams[@"warehouse_id"] = warehouseId;
    }
    if (productId != nil) {
        pathParams[@"product_id"] = productId;
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
///  @param warehouseId  
///
///  @returns NSArray<OAIWarehouseStock>*
///
-(NSURLSessionTask*) listWarehouseStockWithWarehouseId: (NSString*) warehouseId
    completionHandler: (void (^)(NSArray<OAIWarehouseStock>* output, NSError* error)) handler {
    // verify the required parameter 'warehouseId' is set
    if (warehouseId == nil) {
        NSParameterAssert(warehouseId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"warehouseId"] };
            NSError* error = [NSError errorWithDomain:kOAIWarehouseStockApiErrorDomain code:kOAIWarehouseStockApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/warehouses/{warehouse_id}/stock"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (warehouseId != nil) {
        pathParams[@"warehouse_id"] = warehouseId;
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
                              responseType: @"NSArray<OAIWarehouseStock>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIWarehouseStock>*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param warehouseId  
///
///  @param productId  
///
///  @param stockAdjustment  
///
///  @returns OAIWarehouseStock*
///
-(NSURLSessionTask*) updateWarehouseStockWithWarehouseId: (NSString*) warehouseId
    productId: (NSString*) productId
    stockAdjustment: (OAIStockAdjustment*) stockAdjustment
    completionHandler: (void (^)(OAIWarehouseStock* output, NSError* error)) handler {
    // verify the required parameter 'warehouseId' is set
    if (warehouseId == nil) {
        NSParameterAssert(warehouseId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"warehouseId"] };
            NSError* error = [NSError errorWithDomain:kOAIWarehouseStockApiErrorDomain code:kOAIWarehouseStockApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'productId' is set
    if (productId == nil) {
        NSParameterAssert(productId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"productId"] };
            NSError* error = [NSError errorWithDomain:kOAIWarehouseStockApiErrorDomain code:kOAIWarehouseStockApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'stockAdjustment' is set
    if (stockAdjustment == nil) {
        NSParameterAssert(stockAdjustment);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"stockAdjustment"] };
            NSError* error = [NSError errorWithDomain:kOAIWarehouseStockApiErrorDomain code:kOAIWarehouseStockApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/warehouses/{warehouse_id}/stock/{product_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (warehouseId != nil) {
        pathParams[@"warehouse_id"] = warehouseId;
    }
    if (productId != nil) {
        pathParams[@"product_id"] = productId;
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
    bodyParam = stockAdjustment;

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
                              responseType: @"OAIWarehouseStock*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIWarehouseStock*)data, error);
                                }
                            }];
}



@end
