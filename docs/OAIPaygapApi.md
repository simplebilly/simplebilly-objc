# OAIPaygapApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**paygapAuskunftApi**](OAIPaygapApi.md#paygapauskunftapi) | **GET** /api/v1/bookkeeping/paygap/auskunft/{employee_id} | 
[**paygapExportApi**](OAIPaygapApi.md#paygapexportapi) | **GET** /api/v1/bookkeeping/paygap/export | 
[**paygapReportApi**](OAIPaygapApi.md#paygapreportapi) | **GET** /api/v1/bookkeeping/paygap/report | 


# **paygapAuskunftApi**
```objc
-(NSURLSessionTask*) paygapAuskunftApiWithEmployeeId: (NSString*) employeeId
        completionHandler: (void (^)(OAIPayGapInfoResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* employeeId = @"employeeId_example"; // 

OAIPaygapApi*apiInstance = [[OAIPaygapApi alloc] init];

[apiInstance paygapAuskunftApiWithEmployeeId:employeeId
          completionHandler: ^(OAIPayGapInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaygapApi->paygapAuskunftApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **NSString***|  | 

### Return type

[**OAIPayGapInfoResponse***](OAIPayGapInfoResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paygapExportApi**
```objc
-(NSURLSessionTask*) paygapExportApiWithCompletionHandler: 
        (void (^)(OAIPayGapExportResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIPaygapApi*apiInstance = [[OAIPaygapApi alloc] init];

[apiInstance paygapExportApiWithCompletionHandler: 
          ^(OAIPayGapExportResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaygapApi->paygapExportApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIPayGapExportResponse***](OAIPayGapExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paygapReportApi**
```objc
-(NSURLSessionTask*) paygapReportApiWithCompletionHandler: 
        (void (^)(OAIPayGapReport* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIPaygapApi*apiInstance = [[OAIPaygapApi alloc] init];

[apiInstance paygapReportApiWithCompletionHandler: 
          ^(OAIPayGapReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaygapApi->paygapReportApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIPayGapReport***](OAIPayGapReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

