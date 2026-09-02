#import "OAIGezApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIGezReport.h"


@interface OAIGezApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIGezApi

NSString* kOAIGezApiErrorDomain = @"OAIGezApiErrorDomain";
NSInteger kOAIGezApiMissingParamErrorCode = 234513;

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
///  @param jahr  (optional)
///
///  @param betriebsstaetten Liste der Betriebsstätten als JSON, z.B. `[{\"name\":\"Filiale 1\",\"beschaefigte\":12}]`. (optional)
///
///  @param kfz Gesamtzahl der betrieblich genutzten Kfz (falls keine Betriebsstätten angegeben sind). (optional)
///
///  @param hotelzimmer Gesamtzahl der Hotel-/Gästezimmer und Ferienwohnungen. (optional)
///
///  @param beschaefigte Gesamtzahl der Beschäftigten (verwendet nur, wenn `betriebsstaetten` fehlt; dann wird eine einzelne Betriebsstätte angenommen). (optional)
///
///  @returns OAIGezReport*
///
-(NSURLSessionTask*) gezApiWithJahr: (NSNumber*) jahr
    betriebsstaetten: (NSString*) betriebsstaetten
    kfz: (NSNumber*) kfz
    hotelzimmer: (NSNumber*) hotelzimmer
    beschaefigte: (NSNumber*) beschaefigte
    completionHandler: (void (^)(OAIGezReport* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/bookkeeping/gez"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (jahr != nil) {
        queryParams[@"jahr"] = jahr;
    }
    if (betriebsstaetten != nil) {
        queryParams[@"betriebsstaetten"] = betriebsstaetten;
    }
    if (kfz != nil) {
        queryParams[@"kfz"] = kfz;
    }
    if (hotelzimmer != nil) {
        queryParams[@"hotelzimmer"] = hotelzimmer;
    }
    if (beschaefigte != nil) {
        queryParams[@"beschaefigte"] = beschaefigte;
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
                              responseType: @"OAIGezReport*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGezReport*)data, error);
                                }
                            }];
}



@end
