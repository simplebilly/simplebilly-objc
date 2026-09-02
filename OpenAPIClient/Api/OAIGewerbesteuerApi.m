#import "OAIGewerbesteuerApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIGewerbesteuerErgebnis.h"


@interface OAIGewerbesteuerApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIGewerbesteuerApi

NSString* kOAIGewerbesteuerApiErrorDomain = @"OAIGewerbesteuerApiErrorDomain";
NSInteger kOAIGewerbesteuerApiMissingParamErrorCode = 234513;

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
///  @param year  
///
///  @param hebesatz  (optional)
///
///  @param gewerbeertrag  (optional)
///
///  @param country  (optional)
///
///  @param gemeindeschluessel  (optional)
///
///  @returns OAIGewerbesteuerErgebnis*
///
-(NSURLSessionTask*) gewerbesteuerApiWithYear: (NSNumber*) year
    hebesatz: (NSString*) hebesatz
    gewerbeertrag: (NSString*) gewerbeertrag
    country: (NSString*) country
    gemeindeschluessel: (NSString*) gemeindeschluessel
    completionHandler: (void (^)(OAIGewerbesteuerErgebnis* output, NSError* error)) handler {
    // verify the required parameter 'year' is set
    if (year == nil) {
        NSParameterAssert(year);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"year"] };
            NSError* error = [NSError errorWithDomain:kOAIGewerbesteuerApiErrorDomain code:kOAIGewerbesteuerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/bookkeeping/gewerbesteuer"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (year != nil) {
        queryParams[@"year"] = year;
    }
    if (hebesatz != nil) {
        queryParams[@"hebesatz"] = hebesatz;
    }
    if (gewerbeertrag != nil) {
        queryParams[@"gewerbeertrag"] = gewerbeertrag;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (gemeindeschluessel != nil) {
        queryParams[@"gemeindeschluessel"] = gemeindeschluessel;
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
                              responseType: @"OAIGewerbesteuerErgebnis*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGewerbesteuerErgebnis*)data, error);
                                }
                            }];
}



@end
