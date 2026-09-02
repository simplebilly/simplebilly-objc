# OAIInventoryValueApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInventoryValueApi**](OAIInventoryValueApi.md#getinventoryvalueapi) | **GET** /api/v1/bookkeeping/inventory-value | 
[**recordInventoryValueApi**](OAIInventoryValueApi.md#recordinventoryvalueapi) | **POST** /api/v1/bookkeeping/inventory-value/record | 


# **getInventoryValueApi**
```objc
-(NSURLSessionTask*) getInventoryValueApiWithCompletionHandler: 
        (void (^)(OAICurrentInventoryValue* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIInventoryValueApi*apiInstance = [[OAIInventoryValueApi alloc] init];

[apiInstance getInventoryValueApiWithCompletionHandler: 
          ^(OAICurrentInventoryValue* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInventoryValueApi->getInventoryValueApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAICurrentInventoryValue***](OAICurrentInventoryValue.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recordInventoryValueApi**
```objc
-(NSURLSessionTask*) recordInventoryValueApiWithCompletionHandler: 
        (void (^)(OAIInventoryValuePoint* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIInventoryValueApi*apiInstance = [[OAIInventoryValueApi alloc] init];

[apiInstance recordInventoryValueApiWithCompletionHandler: 
          ^(OAIInventoryValuePoint* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInventoryValueApi->recordInventoryValueApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIInventoryValuePoint***](OAIInventoryValuePoint.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

