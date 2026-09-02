# OAIAiApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiSuggestApi**](OAIAiApi.md#aisuggestapi) | **POST** /api/v1/support/ai/suggest | 
[**createWorkerApi**](OAIAiApi.md#createworkerapi) | **POST** /api/v1/support/ai/workers | 
[**listWorkersApi**](OAIAiApi.md#listworkersapi) | **GET** /api/v1/support/ai/workers | 
[**runWorkerApi**](OAIAiApi.md#runworkerapi) | **POST** /api/v1/support/ai/workers/{worker_id}/run | 


# **aiSuggestApi**
```objc
-(NSURLSessionTask*) aiSuggestApiWithAiSuggestionRequest: (OAIAiSuggestionRequest*) aiSuggestionRequest
        completionHandler: (void (^)(OAIAiSuggestion* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAiSuggestionRequest* aiSuggestionRequest = [[OAIAiSuggestionRequest alloc] init]; // 

OAIAiApi*apiInstance = [[OAIAiApi alloc] init];

[apiInstance aiSuggestApiWithAiSuggestionRequest:aiSuggestionRequest
          completionHandler: ^(OAIAiSuggestion* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAiApi->aiSuggestApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiSuggestionRequest** | [**OAIAiSuggestionRequest***](OAIAiSuggestionRequest.md)|  | 

### Return type

[**OAIAiSuggestion***](OAIAiSuggestion.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkerApi**
```objc
-(NSURLSessionTask*) createWorkerApiWithAiConfigDto: (OAIAiConfigDto*) aiConfigDto
        completionHandler: (void (^)(OAIAiWorkerConfig* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAiConfigDto* aiConfigDto = [[OAIAiConfigDto alloc] init]; // 

OAIAiApi*apiInstance = [[OAIAiApi alloc] init];

[apiInstance createWorkerApiWithAiConfigDto:aiConfigDto
          completionHandler: ^(OAIAiWorkerConfig* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAiApi->createWorkerApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiConfigDto** | [**OAIAiConfigDto***](OAIAiConfigDto.md)|  | 

### Return type

[**OAIAiWorkerConfig***](OAIAiWorkerConfig.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkersApi**
```objc
-(NSURLSessionTask*) listWorkersApiWithCompletionHandler: 
        (void (^)(NSArray<OAIAiWorkerConfig>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIAiApi*apiInstance = [[OAIAiApi alloc] init];

[apiInstance listWorkersApiWithCompletionHandler: 
          ^(NSArray<OAIAiWorkerConfig>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAiApi->listWorkersApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIAiWorkerConfig>***](OAIAiWorkerConfig.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runWorkerApi**
```objc
-(NSURLSessionTask*) runWorkerApiWithWorkerId: (NSString*) workerId
    aiSuggestionRequest: (OAIAiSuggestionRequest*) aiSuggestionRequest
        completionHandler: (void (^)(OAIAiSuggestion* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* workerId = @"workerId_example"; // 
OAIAiSuggestionRequest* aiSuggestionRequest = [[OAIAiSuggestionRequest alloc] init]; // 

OAIAiApi*apiInstance = [[OAIAiApi alloc] init];

[apiInstance runWorkerApiWithWorkerId:workerId
              aiSuggestionRequest:aiSuggestionRequest
          completionHandler: ^(OAIAiSuggestion* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAiApi->runWorkerApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workerId** | **NSString***|  | 
 **aiSuggestionRequest** | [**OAIAiSuggestionRequest***](OAIAiSuggestionRequest.md)|  | 

### Return type

[**OAIAiSuggestion***](OAIAiSuggestion.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

