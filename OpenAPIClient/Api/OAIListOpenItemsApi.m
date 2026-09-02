#import "OAIListOpenItemsApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIOpenItem.h"


@interface OAIListOpenItemsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIListOpenItemsApi

NSString* kOAIListOpenItemsApiErrorDomain = @"OAIListOpenItemsApiErrorDomain";
NSInteger kOAIListOpenItemsApiMissingParamErrorCode = 234513;

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
///  @param reminderLevel1Days  (optional)
///
///  @param reminderLevel2Days  (optional)
///
///  @param reminderLevel3Days  (optional)
///
///  @param customerId  (optional)
///
///  @returns NSArray<OAIOpenItem>*
///
-(NSURLSessionTask*) listOpenItemsApiWithReminderLevel1Days: (NSNumber*) reminderLevel1Days
    reminderLevel2Days: (NSNumber*) reminderLevel2Days
    reminderLevel3Days: (NSNumber*) reminderLevel3Days
    customerId: (NSString*) customerId
    completionHandler: (void (^)(NSArray<OAIOpenItem>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/bookkeeping/open-items"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (reminderLevel1Days != nil) {
        queryParams[@"reminder_level1_days"] = reminderLevel1Days;
    }
    if (reminderLevel2Days != nil) {
        queryParams[@"reminder_level2_days"] = reminderLevel2Days;
    }
    if (reminderLevel3Days != nil) {
        queryParams[@"reminder_level3_days"] = reminderLevel3Days;
    }
    if (customerId != nil) {
        queryParams[@"customer_id"] = customerId;
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
                              responseType: @"NSArray<OAIOpenItem>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<OAIOpenItem>*)data, error);
                                }
                            }];
}



@end
