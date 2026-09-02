#import "OAITicketMessageApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAISendMessageDto.h"
#import "OAITicketMessage.h"


@interface OAITicketMessageApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAITicketMessageApi

NSString* kOAITicketMessageApiErrorDomain = @"OAITicketMessageApiErrorDomain";
NSInteger kOAITicketMessageApiMissingParamErrorCode = 234513;

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
///  @param ticketId  
///
///  @returns NSArray<OAITicketMessage>*
///
-(NSURLSessionTask*) listMessagesApiWithTicketId: (NSString*) ticketId
    completionHandler: (void (^)(NSArray<OAITicketMessage>* output, NSError* error)) handler {
    // verify the required parameter 'ticketId' is set
    if (ticketId == nil) {
        NSParameterAssert(ticketId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketId"] };
            NSError* error = [NSError errorWithDomain:kOAITicketMessageApiErrorDomain code:kOAITicketMessageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/support/tickets/{ticket_id}/messages"];

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
                              responseType: @"NSArray<OAITicketMessage>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAITicketMessage>*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param ticketId  
///
///  @param sendMessageDto  
///
///  @returns OAITicketMessage*
///
-(NSURLSessionTask*) sendMessageApiWithTicketId: (NSString*) ticketId
    sendMessageDto: (OAISendMessageDto*) sendMessageDto
    completionHandler: (void (^)(OAITicketMessage* output, NSError* error)) handler {
    // verify the required parameter 'ticketId' is set
    if (ticketId == nil) {
        NSParameterAssert(ticketId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ticketId"] };
            NSError* error = [NSError errorWithDomain:kOAITicketMessageApiErrorDomain code:kOAITicketMessageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sendMessageDto' is set
    if (sendMessageDto == nil) {
        NSParameterAssert(sendMessageDto);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendMessageDto"] };
            NSError* error = [NSError errorWithDomain:kOAITicketMessageApiErrorDomain code:kOAITicketMessageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/support/tickets/{ticket_id}/messages"];

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
    bodyParam = sendMessageDto;

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
                              responseType: @"OAITicketMessage*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITicketMessage*)data, error);
                                }
                            }];
}



@end
