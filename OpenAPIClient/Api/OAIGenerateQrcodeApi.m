#import "OAIGenerateQrcodeApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIQRCodeResponse.h"


@interface OAIGenerateQrcodeApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIGenerateQrcodeApi

NSString* kOAIGenerateQrcodeApiErrorDomain = @"OAIGenerateQrcodeApiErrorDomain";
NSInteger kOAIGenerateQrcodeApiMissingParamErrorCode = 234513;

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
///  @param iban  
///
///  @param _id  
///
///  @param holderName  (optional)
///
///  @param bic  (optional)
///
///  @param amount  (optional)
///
///  @param reference  (optional)
///
///  @param purpose  (optional)
///
///  @returns OAIQRCodeResponse*
///
-(NSURLSessionTask*) generateQrcodeApiWithIban: (NSString*) iban
    _id: (NSString*) _id
    holderName: (NSString*) holderName
    bic: (NSString*) bic
    amount: (NSString*) amount
    reference: (NSString*) reference
    purpose: (NSString*) purpose
    completionHandler: (void (^)(OAIQRCodeResponse* output, NSError* error)) handler {
    // verify the required parameter 'iban' is set
    if (iban == nil) {
        NSParameterAssert(iban);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"iban"] };
            NSError* error = [NSError errorWithDomain:kOAIGenerateQrcodeApiErrorDomain code:kOAIGenerateQrcodeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIGenerateQrcodeApiErrorDomain code:kOAIGenerateQrcodeApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/invoices/{id}/qrcode"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (iban != nil) {
        queryParams[@"iban"] = iban;
    }
    if (holderName != nil) {
        queryParams[@"holder_name"] = holderName;
    }
    if (bic != nil) {
        queryParams[@"bic"] = bic;
    }
    if (amount != nil) {
        queryParams[@"amount"] = amount;
    }
    if (reference != nil) {
        queryParams[@"reference"] = reference;
    }
    if (purpose != nil) {
        queryParams[@"purpose"] = purpose;
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
                              responseType: @"OAIQRCodeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIQRCodeResponse*)data, error);
                                }
                            }];
}



@end
