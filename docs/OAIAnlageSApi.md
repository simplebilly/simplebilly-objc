# OAIAnlageSApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**anlageSApi**](OAIAnlageSApi.md#anlagesapi) | **GET** /api/v1/bookkeeping/anlage-s | 


# **anlageSApi**
```objc
-(NSURLSessionTask*) anlageSApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIAnlageSErgebnis* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIAnlageSApi*apiInstance = [[OAIAnlageSApi alloc] init];

[apiInstance anlageSApiWithYear:year
          completionHandler: ^(OAIAnlageSErgebnis* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAnlageSApi->anlageSApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIAnlageSErgebnis***](OAIAnlageSErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

