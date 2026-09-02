# OAIGewinnverwendungApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gewinnverwendungApi**](OAIGewinnverwendungApi.md#gewinnverwendungapi) | **GET** /api/v1/bookkeeping/gewinnverwendung | 
[**gewinnverwendungExportApi**](OAIGewinnverwendungApi.md#gewinnverwendungexportapi) | **GET** /api/v1/bookkeeping/gewinnverwendung/export | 


# **gewinnverwendungApi**
```objc
-(NSURLSessionTask*) gewinnverwendungApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIGewinnverwendungsReport* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIGewinnverwendungApi*apiInstance = [[OAIGewinnverwendungApi alloc] init];

[apiInstance gewinnverwendungApiWithYear:year
          completionHandler: ^(OAIGewinnverwendungsReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGewinnverwendungApi->gewinnverwendungApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIGewinnverwendungsReport***](OAIGewinnverwendungsReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gewinnverwendungExportApi**
```objc
-(NSURLSessionTask*) gewinnverwendungExportApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIGewinnverwendungsExportResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIGewinnverwendungApi*apiInstance = [[OAIGewinnverwendungApi alloc] init];

[apiInstance gewinnverwendungExportApiWithYear:year
          completionHandler: ^(OAIGewinnverwendungsExportResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGewinnverwendungApi->gewinnverwendungExportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIGewinnverwendungsExportResponse***](OAIGewinnverwendungsExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

