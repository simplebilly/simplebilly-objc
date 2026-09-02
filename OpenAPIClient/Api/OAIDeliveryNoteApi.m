#import "OAIDeliveryNoteApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIDeliveryNote.h"
#import "OAIDeliveryNoteCreate.h"
#import "OAIInvoice.h"
#import "OAIPluginError.h"


@interface OAIDeliveryNoteApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIDeliveryNoteApi

NSString* kOAIDeliveryNoteApiErrorDomain = @"OAIDeliveryNoteApiErrorDomain";
NSInteger kOAIDeliveryNoteApiMissingParamErrorCode = 234513;

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
///  @param deliveryNoteCreate  
///
///  @returns OAIDeliveryNote*
///
-(NSURLSessionTask*) createDeliveryNoteWithDeliveryNoteCreate: (OAIDeliveryNoteCreate*) deliveryNoteCreate
    completionHandler: (void (^)(OAIDeliveryNote* output, NSError* error)) handler {
    // verify the required parameter 'deliveryNoteCreate' is set
    if (deliveryNoteCreate == nil) {
        NSParameterAssert(deliveryNoteCreate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deliveryNoteCreate"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliveryNoteApiErrorDomain code:kOAIDeliveryNoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/delivery-notes"];

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
    bodyParam = deliveryNoteCreate;

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
                              responseType: @"OAIDeliveryNote*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliveryNote*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param deliveryNoteId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteDeliveryNoteWithDeliveryNoteId: (NSString*) deliveryNoteId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'deliveryNoteId' is set
    if (deliveryNoteId == nil) {
        NSParameterAssert(deliveryNoteId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deliveryNoteId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliveryNoteApiErrorDomain code:kOAIDeliveryNoteApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/delivery-notes/{delivery_note_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (deliveryNoteId != nil) {
        pathParams[@"delivery_note_id"] = deliveryNoteId;
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
///  @param deliveryNoteId  
///
///  @returns OAIDeliveryNote*
///
-(NSURLSessionTask*) deliverynoteRestoreWithDeliveryNoteId: (NSString*) deliveryNoteId
    completionHandler: (void (^)(OAIDeliveryNote* output, NSError* error)) handler {
    // verify the required parameter 'deliveryNoteId' is set
    if (deliveryNoteId == nil) {
        NSParameterAssert(deliveryNoteId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deliveryNoteId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliveryNoteApiErrorDomain code:kOAIDeliveryNoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/delivery-notes/{delivery_note_id}/restore"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (deliveryNoteId != nil) {
        pathParams[@"delivery_note_id"] = deliveryNoteId;
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
                              responseType: @"OAIDeliveryNote*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliveryNote*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param deliveryNoteId  
///
///  @returns void
///
-(NSURLSessionTask*) downloadDeliveryNotePdfWithDeliveryNoteId: (NSString*) deliveryNoteId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'deliveryNoteId' is set
    if (deliveryNoteId == nil) {
        NSParameterAssert(deliveryNoteId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deliveryNoteId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliveryNoteApiErrorDomain code:kOAIDeliveryNoteApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/delivery-notes/{delivery_note_id}/pdf"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (deliveryNoteId != nil) {
        pathParams[@"delivery_note_id"] = deliveryNoteId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/pdf", @"application/json"]];
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
/// 
/// 
///  @param deliveryNoteId  
///
///  @returns OAIDeliveryNote*
///
-(NSURLSessionTask*) getDeliveryNoteWithDeliveryNoteId: (NSString*) deliveryNoteId
    completionHandler: (void (^)(OAIDeliveryNote* output, NSError* error)) handler {
    // verify the required parameter 'deliveryNoteId' is set
    if (deliveryNoteId == nil) {
        NSParameterAssert(deliveryNoteId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deliveryNoteId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliveryNoteApiErrorDomain code:kOAIDeliveryNoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/delivery-notes/{delivery_note_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (deliveryNoteId != nil) {
        pathParams[@"delivery_note_id"] = deliveryNoteId;
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
                              responseType: @"OAIDeliveryNote*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIDeliveryNote*)data, error);
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
///  @param search  (optional)
///
///  @param includeDeleted Soft-delete entities: set true to include rows with `deleted_at` set. (optional)
///
///  @returns NSArray<OAIDeliveryNote>*
///
-(NSURLSessionTask*) listDeliveryNotesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
    completionHandler: (void (^)(NSArray<OAIDeliveryNote>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/delivery-notes/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (pageSize != nil) {
        queryParams[@"page_size"] = pageSize;
    }
    if (search != nil) {
        queryParams[@"search"] = search;
    }
    if (includeDeleted != nil) {
        queryParams[@"include_deleted"] = [includeDeleted isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<OAIDeliveryNote>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIDeliveryNote>*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param deliveryNoteId  
///
///  @returns OAIInvoice*
///
-(NSURLSessionTask*) pursueDeliveryNoteWithDeliveryNoteId: (NSString*) deliveryNoteId
    completionHandler: (void (^)(OAIInvoice* output, NSError* error)) handler {
    // verify the required parameter 'deliveryNoteId' is set
    if (deliveryNoteId == nil) {
        NSParameterAssert(deliveryNoteId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deliveryNoteId"] };
            NSError* error = [NSError errorWithDomain:kOAIDeliveryNoteApiErrorDomain code:kOAIDeliveryNoteApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/delivery-notes/{delivery_note_id}/pursue"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (deliveryNoteId != nil) {
        pathParams[@"delivery_note_id"] = deliveryNoteId;
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
                              responseType: @"OAIInvoice*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInvoice*)data, error);
                                }
                            }];
}



@end
