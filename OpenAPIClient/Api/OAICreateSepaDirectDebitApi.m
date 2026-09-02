#import "OAICreateSepaDirectDebitApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAISepaDirectDebitResponse.h"


@interface OAICreateSepaDirectDebitApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAICreateSepaDirectDebitApi

NSString* kOAICreateSepaDirectDebitApiErrorDomain = @"OAICreateSepaDirectDebitApiErrorDomain";
NSInteger kOAICreateSepaDirectDebitApiMissingParamErrorCode = 234513;

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
///  @param creditorName  
///
///  @param creditorIban  
///
///  @param creditorId  
///
///  @param mandateId  
///
///  @param mandateDate  
///
///  @param debtorName  
///
///  @param debtorIban  
///
///  @param amount  
///
///  @param collectionDate  
///
///  @param creditorBic  (optional)
///
///  @param debtorBic  (optional)
///
///  @param _description  (optional)
///
///  @returns OAISepaDirectDebitResponse*
///
-(NSURLSessionTask*) createSepaDirectDebitApiWithCreditorName: (NSString*) creditorName
    creditorIban: (NSString*) creditorIban
    creditorId: (NSString*) creditorId
    mandateId: (NSString*) mandateId
    mandateDate: (NSString*) mandateDate
    debtorName: (NSString*) debtorName
    debtorIban: (NSString*) debtorIban
    amount: (NSString*) amount
    collectionDate: (NSString*) collectionDate
    creditorBic: (NSString*) creditorBic
    debtorBic: (NSString*) debtorBic
    _description: (NSString*) _description
    completionHandler: (void (^)(OAISepaDirectDebitResponse* output, NSError* error)) handler {
    // verify the required parameter 'creditorName' is set
    if (creditorName == nil) {
        NSParameterAssert(creditorName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"creditorName"] };
            NSError* error = [NSError errorWithDomain:kOAICreateSepaDirectDebitApiErrorDomain code:kOAICreateSepaDirectDebitApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'creditorIban' is set
    if (creditorIban == nil) {
        NSParameterAssert(creditorIban);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"creditorIban"] };
            NSError* error = [NSError errorWithDomain:kOAICreateSepaDirectDebitApiErrorDomain code:kOAICreateSepaDirectDebitApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'creditorId' is set
    if (creditorId == nil) {
        NSParameterAssert(creditorId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"creditorId"] };
            NSError* error = [NSError errorWithDomain:kOAICreateSepaDirectDebitApiErrorDomain code:kOAICreateSepaDirectDebitApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'mandateId' is set
    if (mandateId == nil) {
        NSParameterAssert(mandateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mandateId"] };
            NSError* error = [NSError errorWithDomain:kOAICreateSepaDirectDebitApiErrorDomain code:kOAICreateSepaDirectDebitApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'mandateDate' is set
    if (mandateDate == nil) {
        NSParameterAssert(mandateDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mandateDate"] };
            NSError* error = [NSError errorWithDomain:kOAICreateSepaDirectDebitApiErrorDomain code:kOAICreateSepaDirectDebitApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'debtorName' is set
    if (debtorName == nil) {
        NSParameterAssert(debtorName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"debtorName"] };
            NSError* error = [NSError errorWithDomain:kOAICreateSepaDirectDebitApiErrorDomain code:kOAICreateSepaDirectDebitApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'debtorIban' is set
    if (debtorIban == nil) {
        NSParameterAssert(debtorIban);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"debtorIban"] };
            NSError* error = [NSError errorWithDomain:kOAICreateSepaDirectDebitApiErrorDomain code:kOAICreateSepaDirectDebitApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'amount' is set
    if (amount == nil) {
        NSParameterAssert(amount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"amount"] };
            NSError* error = [NSError errorWithDomain:kOAICreateSepaDirectDebitApiErrorDomain code:kOAICreateSepaDirectDebitApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'collectionDate' is set
    if (collectionDate == nil) {
        NSParameterAssert(collectionDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"collectionDate"] };
            NSError* error = [NSError errorWithDomain:kOAICreateSepaDirectDebitApiErrorDomain code:kOAICreateSepaDirectDebitApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/bookkeeping/sepa-direct-debit"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (creditorName != nil) {
        queryParams[@"creditor_name"] = creditorName;
    }
    if (creditorIban != nil) {
        queryParams[@"creditor_iban"] = creditorIban;
    }
    if (creditorBic != nil) {
        queryParams[@"creditor_bic"] = creditorBic;
    }
    if (creditorId != nil) {
        queryParams[@"creditor_id"] = creditorId;
    }
    if (mandateId != nil) {
        queryParams[@"mandate_id"] = mandateId;
    }
    if (mandateDate != nil) {
        queryParams[@"mandate_date"] = mandateDate;
    }
    if (debtorName != nil) {
        queryParams[@"debtor_name"] = debtorName;
    }
    if (debtorIban != nil) {
        queryParams[@"debtor_iban"] = debtorIban;
    }
    if (debtorBic != nil) {
        queryParams[@"debtor_bic"] = debtorBic;
    }
    if (amount != nil) {
        queryParams[@"amount"] = amount;
    }
    if (collectionDate != nil) {
        queryParams[@"collection_date"] = collectionDate;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
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
                              responseType: @"OAISepaDirectDebitResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISepaDirectDebitResponse*)data, error);
                                }
                            }];
}



@end
