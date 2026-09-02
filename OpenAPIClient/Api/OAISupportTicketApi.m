#import "OAISupportTicketApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAICreateTicketRequest.h"
#import "OAISupportTicket.h"
#import "OAISupportTicketUpdate.h"


@interface OAISupportTicketApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAISupportTicketApi

NSString* kOAISupportTicketApiErrorDomain = @"OAISupportTicketApiErrorDomain";
NSInteger kOAISupportTicketApiMissingParamErrorCode = 234513;

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
///  @param createTicketRequest  
///
///  @returns OAISupportTicket*
///
-(NSURLSessionTask*) createTicketApiWithCreateTicketRequest: (OAICreateTicketRequest*) createTicketRequest
    completionHandler: (void (^)(OAISupportTicket* output, NSError* error)) handler {
    // verify the required parameter 'createTicketRequest' is set
    if (createTicketRequest == nil) {
        NSParameterAssert(createTicketRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createTicketRequest"] };
            NSError* error = [NSError errorWithDomain:kOAISupportTicketApiErrorDomain code:kOAISupportTicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/support/tickets"];

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
    bodyParam = createTicketRequest;

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
                              responseType: @"OAISupportTicket*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISupportTicket*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param ticketId  
///
///  @returns void
///
-(NSURLSessionTask*) deleteTicketApiWithTicketId: (NSString*) ticketId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'ticketId' is set
    if (ticketId == nil) {
        NSParameterAssert(ticketId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketId"] };
            NSError* error = [NSError errorWithDomain:kOAISupportTicketApiErrorDomain code:kOAISupportTicketApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/support/tickets/{ticket_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ticketId != nil) {
        pathParams[@"ticket_id"] = ticketId;
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
/// 
/// 
///  @param ticketId  
///
///  @returns OAISupportTicket*
///
-(NSURLSessionTask*) getTicketApiWithTicketId: (NSString*) ticketId
    completionHandler: (void (^)(OAISupportTicket* output, NSError* error)) handler {
    // verify the required parameter 'ticketId' is set
    if (ticketId == nil) {
        NSParameterAssert(ticketId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketId"] };
            NSError* error = [NSError errorWithDomain:kOAISupportTicketApiErrorDomain code:kOAISupportTicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/support/tickets/{ticket_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ticketId != nil) {
        pathParams[@"ticket_id"] = ticketId;
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
                              responseType: @"OAISupportTicket*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISupportTicket*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param status  (optional)
///
///  @param priority  (optional)
///
///  @param assignedTo  (optional)
///
///  @param channelType  (optional)
///
///  @param customerId  (optional)
///
///  @param search  (optional)
///
///  @param page  (optional)
///
///  @param pageSize  (optional)
///
///  @returns NSArray<OAISupportTicket>*
///
-(NSURLSessionTask*) listTicketsApiWithStatus: (NSString*) status
    priority: (NSString*) priority
    assignedTo: (NSString*) assignedTo
    channelType: (NSString*) channelType
    customerId: (NSString*) customerId
    search: (NSString*) search
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    completionHandler: (void (^)(NSArray<OAISupportTicket>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/support/tickets"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (priority != nil) {
        queryParams[@"priority"] = priority;
    }
    if (assignedTo != nil) {
        queryParams[@"assigned_to"] = assignedTo;
    }
    if (channelType != nil) {
        queryParams[@"channel_type"] = channelType;
    }
    if (customerId != nil) {
        queryParams[@"customer_id"] = customerId;
    }
    if (search != nil) {
        queryParams[@"search"] = search;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (pageSize != nil) {
        queryParams[@"page_size"] = pageSize;
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
                              responseType: @"NSArray<OAISupportTicket>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAISupportTicket>*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param ticketId  
///
///  @param supportTicketUpdate  
///
///  @returns OAISupportTicket*
///
-(NSURLSessionTask*) updateTicketApiWithTicketId: (NSString*) ticketId
    supportTicketUpdate: (OAISupportTicketUpdate*) supportTicketUpdate
    completionHandler: (void (^)(OAISupportTicket* output, NSError* error)) handler {
    // verify the required parameter 'ticketId' is set
    if (ticketId == nil) {
        NSParameterAssert(ticketId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketId"] };
            NSError* error = [NSError errorWithDomain:kOAISupportTicketApiErrorDomain code:kOAISupportTicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'supportTicketUpdate' is set
    if (supportTicketUpdate == nil) {
        NSParameterAssert(supportTicketUpdate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"supportTicketUpdate"] };
            NSError* error = [NSError errorWithDomain:kOAISupportTicketApiErrorDomain code:kOAISupportTicketApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/support/tickets/{ticket_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ticketId != nil) {
        pathParams[@"ticket_id"] = ticketId;
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
    bodyParam = supportTicketUpdate;

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
                              responseType: @"OAISupportTicket*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISupportTicket*)data, error);
                                }
                            }];
}



@end
