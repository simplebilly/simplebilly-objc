#import "OAIStockMovementApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIPluginError.h"
#import "OAIStockMovement.h"


@interface OAIStockMovementApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIStockMovementApi

NSString* kOAIStockMovementApiErrorDomain = @"OAIStockMovementApiErrorDomain";
NSInteger kOAIStockMovementApiMissingParamErrorCode = 234513;

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
///  @param movementId  
///
///  @returns OAIStockMovement*
///
-(NSURLSessionTask*) getStockMovementWithMovementId: (NSString*) movementId
    completionHandler: (void (^)(OAIStockMovement* output, NSError* error)) handler {
    // verify the required parameter 'movementId' is set
    if (movementId == nil) {
        NSParameterAssert(movementId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"movementId"] };
            NSError* error = [NSError errorWithDomain:kOAIStockMovementApiErrorDomain code:kOAIStockMovementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/stock-movements/{movement_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (movementId != nil) {
        pathParams[@"movement_id"] = movementId;
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
                              responseType: @"OAIStockMovement*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIStockMovement*)data, error);
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
///  @param movementType  (optional)
///
///  @param from Only movements on or after this date (inclusive). (optional)
///
///  @param to Only movements on or before this date (inclusive). (optional)
///
///  @returns NSArray<OAIStockMovement>*
///
-(NSURLSessionTask*) listStockMovementsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    productId: (NSString*) productId
    warehouseId: (NSString*) warehouseId
    movementType: (NSString*) movementType
    from: (NSDate*) from
    to: (NSDate*) to
    completionHandler: (void (^)(NSArray<OAIStockMovement>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/stock-movements/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (pageSize != nil) {
        queryParams[@"pageSize"] = pageSize;
    }
    if (productId != nil) {
        queryParams[@"productId"] = productId;
    }
    if (warehouseId != nil) {
        queryParams[@"warehouseId"] = warehouseId;
    }
    if (movementType != nil) {
        queryParams[@"movementType"] = movementType;
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
                              responseType: @"NSArray<OAIStockMovement>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIStockMovement>*)data, error);
                                }
                            }];
}



@end
