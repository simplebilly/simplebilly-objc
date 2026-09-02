# OAICreateSepaDirectDebitApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSepaDirectDebitApi**](OAICreateSepaDirectDebitApi.md#createsepadirectdebitapi) | **POST** /api/v1/bookkeeping/sepa-direct-debit | 


# **createSepaDirectDebitApi**
```objc
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
        completionHandler: (void (^)(OAISepaDirectDebitResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* creditorName = @"creditorName_example"; // 
NSString* creditorIban = @"creditorIban_example"; // 
NSString* creditorId = @"creditorId_example"; // 
NSString* mandateId = @"mandateId_example"; // 
NSString* mandateDate = @"mandateDate_example"; // 
NSString* debtorName = @"debtorName_example"; // 
NSString* debtorIban = @"debtorIban_example"; // 
NSString* amount = @"amount_example"; // 
NSString* collectionDate = @"collectionDate_example"; // 
NSString* creditorBic = @"creditorBic_example"; //  (optional)
NSString* debtorBic = @"debtorBic_example"; //  (optional)
NSString* _description = @"_description_example"; //  (optional)

OAICreateSepaDirectDebitApi*apiInstance = [[OAICreateSepaDirectDebitApi alloc] init];

[apiInstance createSepaDirectDebitApiWithCreditorName:creditorName
              creditorIban:creditorIban
              creditorId:creditorId
              mandateId:mandateId
              mandateDate:mandateDate
              debtorName:debtorName
              debtorIban:debtorIban
              amount:amount
              collectionDate:collectionDate
              creditorBic:creditorBic
              debtorBic:debtorBic
              _description:_description
          completionHandler: ^(OAISepaDirectDebitResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICreateSepaDirectDebitApi->createSepaDirectDebitApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **creditorName** | **NSString***|  | 
 **creditorIban** | **NSString***|  | 
 **creditorId** | **NSString***|  | 
 **mandateId** | **NSString***|  | 
 **mandateDate** | **NSString***|  | 
 **debtorName** | **NSString***|  | 
 **debtorIban** | **NSString***|  | 
 **amount** | **NSString***|  | 
 **collectionDate** | **NSString***|  | 
 **creditorBic** | **NSString***|  | [optional] 
 **debtorBic** | **NSString***|  | [optional] 
 **_description** | **NSString***|  | [optional] 

### Return type

[**OAISepaDirectDebitResponse***](OAISepaDirectDebitResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

