# OAIStilleApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**stilleExportApi**](OAIStilleApi.md#stilleexportapi) | **GET** /api/v1/bookkeeping/stille/export | 
[**stilleReportApi**](OAIStilleApi.md#stillereportapi) | **GET** /api/v1/bookkeeping/stille/report | 


# **stilleExportApi**
```objc
-(NSURLSessionTask*) stilleExportApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIStilleExportResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIStilleApi*apiInstance = [[OAIStilleApi alloc] init];

[apiInstance stilleExportApiWithYear:year
          completionHandler: ^(OAIStilleExportResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStilleApi->stilleExportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIStilleExportResponse***](OAIStilleExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stilleReportApi**
```objc
-(NSURLSessionTask*) stilleReportApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIStilleReport* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIStilleApi*apiInstance = [[OAIStilleApi alloc] init];

[apiInstance stilleReportApiWithYear:year
          completionHandler: ^(OAIStilleReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStilleApi->stilleReportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIStilleReport***](OAIStilleReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

