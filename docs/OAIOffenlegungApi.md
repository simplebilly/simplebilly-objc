# OAIOffenlegungApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**offenlegungApi**](OAIOffenlegungApi.md#offenlegungapi) | **GET** /api/v1/bookkeeping/offenlegung | 


# **offenlegungApi**
```objc
-(NSURLSessionTask*) offenlegungApiWithCompletionHandler: 
        (void (^)(OAIOffenlegungReport* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIOffenlegungApi*apiInstance = [[OAIOffenlegungApi alloc] init];

[apiInstance offenlegungApiWithCompletionHandler: 
          ^(OAIOffenlegungReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOffenlegungApi->offenlegungApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIOffenlegungReport***](OAIOffenlegungReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

