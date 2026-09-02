# OAIOssReportApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ossReportApi**](OAIOssReportApi.md#ossreportapi) | **GET** /api/v1/bookkeeping/oss | 


# **ossReportApi**
```objc
-(NSURLSessionTask*) ossReportApiWithCompletionHandler: 
        (void (^)(OAIOssReport* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIOssReportApi*apiInstance = [[OAIOssReportApi alloc] init];

[apiInstance ossReportApiWithCompletionHandler: 
          ^(OAIOssReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOssReportApi->ossReportApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIOssReport***](OAIOssReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

