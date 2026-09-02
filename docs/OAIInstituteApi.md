# OAIInstituteApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instituteStatusApi**](OAIInstituteApi.md#institutestatusapi) | **GET** /api/v1/bookkeeping/institute/status | 


# **instituteStatusApi**
```objc
-(NSURLSessionTask*) instituteStatusApiWithCompletionHandler: 
        (void (^)(OAIInstituteStatus* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIInstituteApi*apiInstance = [[OAIInstituteApi alloc] init];

[apiInstance instituteStatusApiWithCompletionHandler: 
          ^(OAIInstituteStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstituteApi->instituteStatusApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIInstituteStatus***](OAIInstituteStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

