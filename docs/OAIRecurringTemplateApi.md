# OAIRecurringTemplateApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRecurringTemplate**](OAIRecurringTemplateApi.md#createrecurringtemplate) | **POST** /api/v1/recurring-templates | 
[**deleteRecurringTemplate**](OAIRecurringTemplateApi.md#deleterecurringtemplate) | **DELETE** /api/v1/recurring-templates/{template_id} | 
[**getRecurringTemplate**](OAIRecurringTemplateApi.md#getrecurringtemplate) | **GET** /api/v1/recurring-templates/{template_id} | 
[**listRecurringTemplates**](OAIRecurringTemplateApi.md#listrecurringtemplates) | **GET** /api/v1/recurring-templates/ | 


# **createRecurringTemplate**
```objc
-(NSURLSessionTask*) createRecurringTemplateWithBody: (OAIAnyType*) body
        completionHandler: (void (^)(OAIRecurringTemplate* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIRecurringTemplateApi*apiInstance = [[OAIRecurringTemplateApi alloc] init];

[apiInstance createRecurringTemplateWithBody:body
          completionHandler: ^(OAIRecurringTemplate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRecurringTemplateApi->createRecurringTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIRecurringTemplate***](OAIRecurringTemplate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRecurringTemplate**
```objc
-(NSURLSessionTask*) deleteRecurringTemplateWithTemplateId: (NSString*) templateId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* templateId = @"templateId_example"; // 

OAIRecurringTemplateApi*apiInstance = [[OAIRecurringTemplateApi alloc] init];

[apiInstance deleteRecurringTemplateWithTemplateId:templateId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRecurringTemplateApi->deleteRecurringTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecurringTemplate**
```objc
-(NSURLSessionTask*) getRecurringTemplateWithTemplateId: (NSString*) templateId
        completionHandler: (void (^)(OAIRecurringTemplate* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* templateId = @"templateId_example"; // 

OAIRecurringTemplateApi*apiInstance = [[OAIRecurringTemplateApi alloc] init];

[apiInstance getRecurringTemplateWithTemplateId:templateId
          completionHandler: ^(OAIRecurringTemplate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRecurringTemplateApi->getRecurringTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **NSString***|  | 

### Return type

[**OAIRecurringTemplate***](OAIRecurringTemplate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRecurringTemplates**
```objc
-(NSURLSessionTask*) listRecurringTemplatesWithCompletionHandler: 
        (void (^)(NSArray<OAIRecurringTemplate>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIRecurringTemplateApi*apiInstance = [[OAIRecurringTemplateApi alloc] init];

[apiInstance listRecurringTemplatesWithCompletionHandler: 
          ^(NSArray<OAIRecurringTemplate>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRecurringTemplateApi->listRecurringTemplates: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIRecurringTemplate>***](OAIRecurringTemplate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

