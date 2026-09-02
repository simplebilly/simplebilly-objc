# OAIAutomationsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listAutomations**](OAIAutomationsApi.md#listautomations) | **GET** /api/v1/automations | 
[**triggerAutomation**](OAIAutomationsApi.md#triggerautomation) | **POST** /api/v1/automations/{key}/trigger | 
[**updateAutomation**](OAIAutomationsApi.md#updateautomation) | **PUT** /api/v1/automations/{key} | 


# **listAutomations**
```objc
-(NSURLSessionTask*) listAutomationsWithCompletionHandler: 
        (void (^)(NSArray<OAIAutomationDto>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIAutomationsApi*apiInstance = [[OAIAutomationsApi alloc] init];

[apiInstance listAutomationsWithCompletionHandler: 
          ^(NSArray<OAIAutomationDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAutomationsApi->listAutomations: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIAutomationDto>***](OAIAutomationDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerAutomation**
```objc
-(NSURLSessionTask*) triggerAutomationWithKey: (NSString*) key
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* key = @"key_example"; // 

OAIAutomationsApi*apiInstance = [[OAIAutomationsApi alloc] init];

[apiInstance triggerAutomationWithKey:key
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAutomationsApi->triggerAutomation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***|  | 

### Return type

**NSObject***

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAutomation**
```objc
-(NSURLSessionTask*) updateAutomationWithKey: (NSString*) key
    updateAutomation: (OAIUpdateAutomation*) updateAutomation
        completionHandler: (void (^)(OAIAutomationDto* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* key = @"key_example"; // 
OAIUpdateAutomation* updateAutomation = [[OAIUpdateAutomation alloc] init]; // 

OAIAutomationsApi*apiInstance = [[OAIAutomationsApi alloc] init];

[apiInstance updateAutomationWithKey:key
              updateAutomation:updateAutomation
          completionHandler: ^(OAIAutomationDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAutomationsApi->updateAutomation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***|  | 
 **updateAutomation** | [**OAIUpdateAutomation***](OAIUpdateAutomation.md)|  | 

### Return type

[**OAIAutomationDto***](OAIAutomationDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

