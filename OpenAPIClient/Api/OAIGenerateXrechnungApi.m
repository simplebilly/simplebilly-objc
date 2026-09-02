#import "OAIGenerateXrechnungApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIXRechnungResponse.h"


@interface OAIGenerateXrechnungApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIGenerateXrechnungApi

NSString* kOAIGenerateXrechnungApiErrorDomain = @"OAIGenerateXrechnungApiErrorDomain";
NSInteger kOAIGenerateXrechnungApiMissingParamErrorCode = 234513;

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
///  @param _id  
///
///  @param supplierName  (optional)
///
///  @param supplierStreet  (optional)
///
///  @param supplierCity  (optional)
///
///  @param supplierZip  (optional)
///
///  @param supplierCountry  (optional)
///
///  @param supplierVatId  (optional)
///
///  @returns OAIXRechnungResponse*
///
-(NSURLSessionTask*) generateXrechnungApiWithId: (NSString*) _id
    supplierName: (NSString*) supplierName
    supplierStreet: (NSString*) supplierStreet
    supplierCity: (NSString*) supplierCity
    supplierZip: (NSString*) supplierZip
    supplierCountry: (NSString*) supplierCountry
    supplierVatId: (NSString*) supplierVatId
    completionHandler: (void (^)(OAIXRechnungResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIGenerateXrechnungApiErrorDomain code:kOAIGenerateXrechnungApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/invoices/{id}/xrechnung"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (supplierName != nil) {
        queryParams[@"supplier_name"] = supplierName;
    }
    if (supplierStreet != nil) {
        queryParams[@"supplier_street"] = supplierStreet;
    }
    if (supplierCity != nil) {
        queryParams[@"supplier_city"] = supplierCity;
    }
    if (supplierZip != nil) {
        queryParams[@"supplier_zip"] = supplierZip;
    }
    if (supplierCountry != nil) {
        queryParams[@"supplier_country"] = supplierCountry;
    }
    if (supplierVatId != nil) {
        queryParams[@"supplier_vat_id"] = supplierVatId;
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
                              responseType: @"OAIXRechnungResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIXRechnungResponse*)data, error);
                                }
                            }];
}



@end
