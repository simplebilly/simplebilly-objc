# OAIAnlageEksApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**eksApi**](OAIAnlageEksApi.md#eksapi) | **GET** /api/v1/bookkeeping/eks | 


# **eksApi**
```objc
-(NSURLSessionTask*) eksApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIEksErgebnis* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIAnlageEksApi*apiInstance = [[OAIAnlageEksApi alloc] init];

[apiInstance eksApiWithYear:year
          completionHandler: ^(OAIEksErgebnis* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAnlageEksApi->eksApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIEksErgebnis***](OAIEksErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

