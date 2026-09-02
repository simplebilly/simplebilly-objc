# OAIWorkflowsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listWorkflowsApi**](OAIWorkflowsApi.md#listworkflowsapi) | **GET** /api/v1/workflows | 
[**setWorkflowEnabledApi**](OAIWorkflowsApi.md#setworkflowenabledapi) | **PUT** /api/v1/workflows/{workflow_id}/enabled | 


# **listWorkflowsApi**
```objc
-(NSURLSessionTask*) listWorkflowsApiWithCompletionHandler: 
        (void (^)(NSArray<OAIWorkflow>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIWorkflowsApi*apiInstance = [[OAIWorkflowsApi alloc] init];

[apiInstance listWorkflowsApiWithCompletionHandler: 
          ^(NSArray<OAIWorkflow>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWorkflowsApi->listWorkflowsApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIWorkflow>***](OAIWorkflow.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setWorkflowEnabledApi**
```objc
-(NSURLSessionTask*) setWorkflowEnabledApiWithWorkflowId: (NSString*) workflowId
    workflowEnabledUpdate: (OAIWorkflowEnabledUpdate*) workflowEnabledUpdate
        completionHandler: (void (^)(OAIWorkflow* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* workflowId = @"workflowId_example"; // 
OAIWorkflowEnabledUpdate* workflowEnabledUpdate = [[OAIWorkflowEnabledUpdate alloc] init]; // 

OAIWorkflowsApi*apiInstance = [[OAIWorkflowsApi alloc] init];

[apiInstance setWorkflowEnabledApiWithWorkflowId:workflowId
              workflowEnabledUpdate:workflowEnabledUpdate
          completionHandler: ^(OAIWorkflow* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWorkflowsApi->setWorkflowEnabledApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowId** | **NSString***|  | 
 **workflowEnabledUpdate** | [**OAIWorkflowEnabledUpdate***](OAIWorkflowEnabledUpdate.md)|  | 

### Return type

[**OAIWorkflow***](OAIWorkflow.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

