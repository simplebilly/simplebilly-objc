# OAISearchApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**globalSearch**](OAISearchApi.md#globalsearch) | **GET** /api/v1/search | GET /api/v1/search?q&#x3D;...
[**myPermissions**](OAISearchApi.md#mypermissions) | **GET** /api/v1/me/permissions | GET /api/v1/me/permissions — resolved permissions from the auth token, used by the frontend to show/hide admin navigation.


# **globalSearch**
```objc
-(NSURLSessionTask*) globalSearchWithQ: (NSString*) q
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```

GET /api/v1/search?q=...

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* q = @"q_example"; // Search text (min 2 chars)

OAISearchApi*apiInstance = [[OAISearchApi alloc] init];

// GET /api/v1/search?q=...
[apiInstance globalSearchWithQ:q
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISearchApi->globalSearch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **NSString***| Search text (min 2 chars) | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **myPermissions**
```objc
-(NSURLSessionTask*) myPermissionsWithCompletionHandler: 
        (void (^)(OAIAnyType* output, NSError* error)) handler;
```

GET /api/v1/me/permissions — resolved permissions from the auth token, used by the frontend to show/hide admin navigation.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAISearchApi*apiInstance = [[OAISearchApi alloc] init];

// GET /api/v1/me/permissions — resolved permissions from the auth token, used by the frontend to show/hide admin navigation.
[apiInstance myPermissionsWithCompletionHandler: 
          ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISearchApi->myPermissions: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

