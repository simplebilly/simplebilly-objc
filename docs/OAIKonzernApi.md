# OAIKonzernApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**konzernExportApi**](OAIKonzernApi.md#konzernexportapi) | **GET** /api/v1/bookkeeping/konzern/status/export | 
[**konzernStatusApi**](OAIKonzernApi.md#konzernstatusapi) | **GET** /api/v1/bookkeeping/konzern/status | 


# **konzernExportApi**
```objc
-(NSURLSessionTask*) konzernExportApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIKonzernExportResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIKonzernApi*apiInstance = [[OAIKonzernApi alloc] init];

[apiInstance konzernExportApiWithYear:year
          completionHandler: ^(OAIKonzernExportResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIKonzernApi->konzernExportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIKonzernExportResponse***](OAIKonzernExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **konzernStatusApi**
```objc
-(NSURLSessionTask*) konzernStatusApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIKonzernStatus* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIKonzernApi*apiInstance = [[OAIKonzernApi alloc] init];

[apiInstance konzernStatusApiWithYear:year
          completionHandler: ^(OAIKonzernStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIKonzernApi->konzernStatusApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIKonzernStatus***](OAIKonzernStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

