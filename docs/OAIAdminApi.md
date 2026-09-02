# OAIAdminApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**triggerMirror**](OAIAdminApi.md#triggermirror) | **POST** /api/v1/admin/storage/mirror | 


# **triggerMirror**
```objc
-(NSURLSessionTask*) triggerMirrorWithCompletionHandler: 
        (void (^)(OAIMirrorTriggerResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIAdminApi*apiInstance = [[OAIAdminApi alloc] init];

[apiInstance triggerMirrorWithCompletionHandler: 
          ^(OAIMirrorTriggerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAdminApi->triggerMirror: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIMirrorTriggerResponse***](OAIMirrorTriggerResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

