# OAIImportRunnerApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getImportStatus**](OAIImportRunnerApi.md#getimportstatus) | **GET** /api/v1/import/{job_id} | 
[**startImport**](OAIImportRunnerApi.md#startimport) | **POST** /api/v1/import/start | 
[**testImportConnection**](OAIImportRunnerApi.md#testimportconnection) | **POST** /api/v1/import/test | 


# **getImportStatus**
```objc
-(NSURLSessionTask*) getImportStatusWithJobId: (NSString*) jobId
        completionHandler: (void (^)(OAIImportJobStatus* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* jobId = @"jobId_example"; // 

OAIImportRunnerApi*apiInstance = [[OAIImportRunnerApi alloc] init];

[apiInstance getImportStatusWithJobId:jobId
          completionHandler: ^(OAIImportJobStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIImportRunnerApi->getImportStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **NSString***|  | 

### Return type

[**OAIImportJobStatus***](OAIImportJobStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startImport**
```objc
-(NSURLSessionTask*) startImportWithImportStartRequest: (OAIImportStartRequest*) importStartRequest
        completionHandler: (void (^)(OAIImportStartResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIImportStartRequest* importStartRequest = [[OAIImportStartRequest alloc] init]; // 

OAIImportRunnerApi*apiInstance = [[OAIImportRunnerApi alloc] init];

[apiInstance startImportWithImportStartRequest:importStartRequest
          completionHandler: ^(OAIImportStartResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIImportRunnerApi->startImport: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **importStartRequest** | [**OAIImportStartRequest***](OAIImportStartRequest.md)|  | 

### Return type

[**OAIImportStartResponse***](OAIImportStartResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testImportConnection**
```objc
-(NSURLSessionTask*) testImportConnectionWithImportTestRequest: (OAIImportTestRequest*) importTestRequest
        completionHandler: (void (^)(OAIImportTestResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIImportTestRequest* importTestRequest = [[OAIImportTestRequest alloc] init]; // 

OAIImportRunnerApi*apiInstance = [[OAIImportRunnerApi alloc] init];

[apiInstance testImportConnectionWithImportTestRequest:importTestRequest
          completionHandler: ^(OAIImportTestResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIImportRunnerApi->testImportConnection: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **importTestRequest** | [**OAIImportTestRequest***](OAIImportTestRequest.md)|  | 

### Return type

[**OAIImportTestResponse***](OAIImportTestResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

