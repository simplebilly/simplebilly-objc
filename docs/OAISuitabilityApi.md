# OAISuitabilityApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**shippingSuitabilityApi**](OAISuitabilityApi.md#shippingsuitabilityapi) | **POST** /api/v1/shipping/suitability | 


# **shippingSuitabilityApi**
```objc
-(NSURLSessionTask*) shippingSuitabilityApiWithSuitabilityRequest: (OAISuitabilityRequest*) suitabilityRequest
        completionHandler: (void (^)(OAISuitabilityResult* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAISuitabilityRequest* suitabilityRequest = [[OAISuitabilityRequest alloc] init]; // 

OAISuitabilityApi*apiInstance = [[OAISuitabilityApi alloc] init];

[apiInstance shippingSuitabilityApiWithSuitabilityRequest:suitabilityRequest
          completionHandler: ^(OAISuitabilityResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISuitabilityApi->shippingSuitabilityApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **suitabilityRequest** | [**OAISuitabilityRequest***](OAISuitabilityRequest.md)|  | 

### Return type

[**OAISuitabilityResult***](OAISuitabilityResult.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

