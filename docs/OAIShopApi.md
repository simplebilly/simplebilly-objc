# OAIShopApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**shopEditorSave**](OAIShopApi.md#shopeditorsave) | **POST** /api/v1/shop/editor | 


# **shopEditorSave**
```objc
-(NSURLSessionTask*) shopEditorSaveWithBody: (OAIAnyType*) body
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIShopApi*apiInstance = [[OAIShopApi alloc] init];

[apiInstance shopEditorSaveWithBody:body
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShopApi->shopEditorSave: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

