# OAIEmissionsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmissionEntryApi**](OAIEmissionsApi.md#createemissionentryapi) | **POST** /api/v1/bookkeeping/emissions/entries | 
[**createEmissionTargetApi**](OAIEmissionsApi.md#createemissiontargetapi) | **POST** /api/v1/bookkeeping/emissions/targets | 
[**deleteEmissionEntryApi**](OAIEmissionsApi.md#deleteemissionentryapi) | **DELETE** /api/v1/bookkeeping/emissions/entries/{id} | 
[**deleteEmissionTargetApi**](OAIEmissionsApi.md#deleteemissiontargetapi) | **DELETE** /api/v1/bookkeeping/emissions/targets/{id} | 
[**emissionsEntriesApi**](OAIEmissionsApi.md#emissionsentriesapi) | **GET** /api/v1/bookkeeping/emissions/entries | 
[**emissionsExportApi**](OAIEmissionsApi.md#emissionsexportapi) | **GET** /api/v1/bookkeeping/emissions/export | 
[**emissionsFactorsApi**](OAIEmissionsApi.md#emissionsfactorsapi) | **GET** /api/v1/bookkeeping/emissions/factors | 
[**emissionsReportApi**](OAIEmissionsApi.md#emissionsreportapi) | **GET** /api/v1/bookkeeping/emissions/report | 
[**emissionsTargetsApi**](OAIEmissionsApi.md#emissionstargetsapi) | **GET** /api/v1/bookkeeping/emissions/targets | 


# **createEmissionEntryApi**
```objc
-(NSURLSessionTask*) createEmissionEntryApiWithCreateEmissionEntry: (OAICreateEmissionEntry*) createEmissionEntry
        completionHandler: (void (^)(OAIEmissionEntry* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAICreateEmissionEntry* createEmissionEntry = [[OAICreateEmissionEntry alloc] init]; // 

OAIEmissionsApi*apiInstance = [[OAIEmissionsApi alloc] init];

[apiInstance createEmissionEntryApiWithCreateEmissionEntry:createEmissionEntry
          completionHandler: ^(OAIEmissionEntry* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmissionsApi->createEmissionEntryApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEmissionEntry** | [**OAICreateEmissionEntry***](OAICreateEmissionEntry.md)|  | 

### Return type

[**OAIEmissionEntry***](OAIEmissionEntry.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEmissionTargetApi**
```objc
-(NSURLSessionTask*) createEmissionTargetApiWithCreateEmissionTarget: (OAICreateEmissionTarget*) createEmissionTarget
        completionHandler: (void (^)(OAIEmissionTarget* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAICreateEmissionTarget* createEmissionTarget = [[OAICreateEmissionTarget alloc] init]; // 

OAIEmissionsApi*apiInstance = [[OAIEmissionsApi alloc] init];

[apiInstance createEmissionTargetApiWithCreateEmissionTarget:createEmissionTarget
          completionHandler: ^(OAIEmissionTarget* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmissionsApi->createEmissionTargetApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEmissionTarget** | [**OAICreateEmissionTarget***](OAICreateEmissionTarget.md)|  | 

### Return type

[**OAIEmissionTarget***](OAIEmissionTarget.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEmissionEntryApi**
```objc
-(NSURLSessionTask*) deleteEmissionEntryApiWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIEmissionsApi*apiInstance = [[OAIEmissionsApi alloc] init];

[apiInstance deleteEmissionEntryApiWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEmissionsApi->deleteEmissionEntryApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEmissionTargetApi**
```objc
-(NSURLSessionTask*) deleteEmissionTargetApiWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIEmissionsApi*apiInstance = [[OAIEmissionsApi alloc] init];

[apiInstance deleteEmissionTargetApiWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEmissionsApi->deleteEmissionTargetApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emissionsEntriesApi**
```objc
-(NSURLSessionTask*) emissionsEntriesApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(NSArray<OAIEmissionEntry>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIEmissionsApi*apiInstance = [[OAIEmissionsApi alloc] init];

[apiInstance emissionsEntriesApiWithYear:year
          completionHandler: ^(NSArray<OAIEmissionEntry>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmissionsApi->emissionsEntriesApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**NSArray<OAIEmissionEntry>***](OAIEmissionEntry.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emissionsExportApi**
```objc
-(NSURLSessionTask*) emissionsExportApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIEmissionsExportResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIEmissionsApi*apiInstance = [[OAIEmissionsApi alloc] init];

[apiInstance emissionsExportApiWithYear:year
          completionHandler: ^(OAIEmissionsExportResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmissionsApi->emissionsExportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIEmissionsExportResponse***](OAIEmissionsExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emissionsFactorsApi**
```objc
-(NSURLSessionTask*) emissionsFactorsApiWithCompletionHandler: 
        (void (^)(NSArray<OAIEmissionFactorResponse>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIEmissionsApi*apiInstance = [[OAIEmissionsApi alloc] init];

[apiInstance emissionsFactorsApiWithCompletionHandler: 
          ^(NSArray<OAIEmissionFactorResponse>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmissionsApi->emissionsFactorsApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIEmissionFactorResponse>***](OAIEmissionFactorResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emissionsReportApi**
```objc
-(NSURLSessionTask*) emissionsReportApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIEmissionsReport* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIEmissionsApi*apiInstance = [[OAIEmissionsApi alloc] init];

[apiInstance emissionsReportApiWithYear:year
          completionHandler: ^(OAIEmissionsReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmissionsApi->emissionsReportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIEmissionsReport***](OAIEmissionsReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emissionsTargetsApi**
```objc
-(NSURLSessionTask*) emissionsTargetsApiWithCompletionHandler: 
        (void (^)(NSArray<OAIEmissionTarget>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIEmissionsApi*apiInstance = [[OAIEmissionsApi alloc] init];

[apiInstance emissionsTargetsApiWithCompletionHandler: 
          ^(NSArray<OAIEmissionTarget>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmissionsApi->emissionsTargetsApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIEmissionTarget>***](OAIEmissionTarget.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

