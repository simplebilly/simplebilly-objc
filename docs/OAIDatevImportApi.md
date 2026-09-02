# OAIDatevImportApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**datevImportApi**](OAIDatevImportApi.md#datevimportapi) | **POST** /api/v1/bookkeeping/datev/import | 


# **datevImportApi**
```objc
-(NSURLSessionTask*) datevImportApiWithBody: (OAIAnyType*) body
        completionHandler: (void (^)(OAIDatevImportResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIDatevImportApi*apiInstance = [[OAIDatevImportApi alloc] init];

[apiInstance datevImportApiWithBody:body
          completionHandler: ^(OAIDatevImportResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDatevImportApi->datevImportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIDatevImportResponse***](OAIDatevImportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

