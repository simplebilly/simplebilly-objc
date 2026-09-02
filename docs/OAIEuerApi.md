# OAIEuerApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**euerApi**](OAIEuerApi.md#euerapi) | **GET** /api/v1/bookkeeping/euer | 
[**euerKategorienApi**](OAIEuerApi.md#euerkategorienapi) | **GET** /api/v1/bookkeeping/euer/kategorien | 


# **euerApi**
```objc
-(NSURLSessionTask*) euerApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIEuerErgebnis* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIEuerApi*apiInstance = [[OAIEuerApi alloc] init];

[apiInstance euerApiWithYear:year
          completionHandler: ^(OAIEuerErgebnis* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEuerApi->euerApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIEuerErgebnis***](OAIEuerErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **euerKategorienApi**
```objc
-(NSURLSessionTask*) euerKategorienApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIEuerDetailErgebnis* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIEuerApi*apiInstance = [[OAIEuerApi alloc] init];

[apiInstance euerKategorienApiWithYear:year
          completionHandler: ^(OAIEuerDetailErgebnis* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEuerApi->euerKategorienApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIEuerDetailErgebnis***](OAIEuerDetailErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

