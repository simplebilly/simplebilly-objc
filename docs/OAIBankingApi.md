# OAIBankingApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bankLookupApi**](OAIBankingApi.md#banklookupapi) | **GET** /api/v1/bookkeeping/banking/lookup | 
[**bankTransactionsApi**](OAIBankingApi.md#banktransactionsapi) | **GET** /api/v1/bookkeeping/banking/transactions | 
[**hebesatzLookupApi**](OAIBankingApi.md#hebesatzlookupapi) | **GET** /api/v1/bookkeeping/hebesatz | 


# **bankLookupApi**
```objc
-(NSURLSessionTask*) bankLookupApiWithIban: (NSString*) iban
        completionHandler: (void (^)(OAIBankLookup* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* iban = @"iban_example"; // 

OAIBankingApi*apiInstance = [[OAIBankingApi alloc] init];

[apiInstance bankLookupApiWithIban:iban
          completionHandler: ^(OAIBankLookup* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBankingApi->bankLookupApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iban** | **NSString***|  | 

### Return type

[**OAIBankLookup***](OAIBankLookup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bankTransactionsApi**
```objc
-(NSURLSessionTask*) bankTransactionsApiWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIBankingApi*apiInstance = [[OAIBankingApi alloc] init];

[apiInstance bankTransactionsApiWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIBankingApi->bankTransactionsApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hebesatzLookupApi**
```objc
-(NSURLSessionTask*) hebesatzLookupApiWithGemeindeschluessel: (NSString*) gemeindeschluessel
    plz: (NSString*) plz
    name: (NSString*) name
    stichtag: (NSString*) stichtag
    countryCode: (NSString*) countryCode
        completionHandler: (void (^)(NSArray<OAIHebesatzLookup>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* gemeindeschluessel = @"gemeindeschluessel_example"; //  (optional)
NSString* plz = @"plz_example"; //  (optional)
NSString* name = @"name_example"; //  (optional)
NSString* stichtag = @"stichtag_example"; // Stichtag for validity (YYYY-MM-DD); defaults to today. Picks row where valid_from <= date <= valid_to. (optional)
NSString* countryCode = @"countryCode_example"; //  (optional)

OAIBankingApi*apiInstance = [[OAIBankingApi alloc] init];

[apiInstance hebesatzLookupApiWithGemeindeschluessel:gemeindeschluessel
              plz:plz
              name:name
              stichtag:stichtag
              countryCode:countryCode
          completionHandler: ^(NSArray<OAIHebesatzLookup>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBankingApi->hebesatzLookupApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gemeindeschluessel** | **NSString***|  | [optional] 
 **plz** | **NSString***|  | [optional] 
 **name** | **NSString***|  | [optional] 
 **stichtag** | **NSString***| Stichtag for validity (YYYY-MM-DD); defaults to today. Picks row where valid_from &lt;&#x3D; date &lt;&#x3D; valid_to. | [optional] 
 **countryCode** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIHebesatzLookup>***](OAIHebesatzLookup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

