# OAIAnlageGApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**anlageGApi**](OAIAnlageGApi.md#anlagegapi) | **GET** /api/v1/bookkeeping/anlage-g | 


# **anlageGApi**
```objc
-(NSURLSessionTask*) anlageGApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIAnlageGErgebnis* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIAnlageGApi*apiInstance = [[OAIAnlageGApi alloc] init];

[apiInstance anlageGApiWithYear:year
          completionHandler: ^(OAIAnlageGErgebnis* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAnlageGApi->anlageGApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIAnlageGErgebnis***](OAIAnlageGErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

