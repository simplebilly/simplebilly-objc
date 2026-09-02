#import "OAIFristenApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIFristenErgebnis.h"


@interface OAIFristenApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIFristenApi

NSString* kOAIFristenApiErrorDomain = @"OAIFristenApiErrorDomain";
NSInteger kOAIFristenApiMissingParamErrorCode = 234513;

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
///  @param bundesland  (optional)
///
///  @param voranmeldungsrhythmus  (optional)
///
///  @param dauerfristverlaengerung  (optional)
///
///  @param estAktiv  (optional)
///
///  @param gewstAktiv  (optional)
///
///  @param monate  (optional)
///
///  @returns OAIFristenErgebnis*
///
-(NSURLSessionTask*) fristenApiWithBundesland: (NSString*) bundesland
    voranmeldungsrhythmus: (NSString*) voranmeldungsrhythmus
    dauerfristverlaengerung: (NSNumber*) dauerfristverlaengerung
    estAktiv: (NSNumber*) estAktiv
    gewstAktiv: (NSNumber*) gewstAktiv
    monate: (NSNumber*) monate
    completionHandler: (void (^)(OAIFristenErgebnis* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/bookkeeping/fristen"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (bundesland != nil) {
        queryParams[@"bundesland"] = bundesland;
    }
    if (voranmeldungsrhythmus != nil) {
        queryParams[@"voranmeldungsrhythmus"] = voranmeldungsrhythmus;
    }
    if (dauerfristverlaengerung != nil) {
        queryParams[@"dauerfristverlaengerung"] = [dauerfristverlaengerung isEqual:@(YES)] ? @"true" : @"false";
    }
    if (estAktiv != nil) {
        queryParams[@"est_aktiv"] = [estAktiv isEqual:@(YES)] ? @"true" : @"false";
    }
    if (gewstAktiv != nil) {
        queryParams[@"gewst_aktiv"] = [gewstAktiv isEqual:@(YES)] ? @"true" : @"false";
    }
    if (monate != nil) {
        queryParams[@"monate"] = monate;
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
                              responseType: @"OAIFristenErgebnis*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIFristenErgebnis*)data, error);
                                }
                            }];
}



@end
