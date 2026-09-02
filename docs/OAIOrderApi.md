# OAIOrderApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addOrderTags**](OAIOrderApi.md#addordertags) | **POST** /api/v1/orders/{order_id}/tags | 
[**findOrderByExternalRef**](OAIOrderApi.md#findorderbyexternalref) | **GET** /api/v1/orders/by-ext-ref/{ext_ref} | 
[**getOrder**](OAIOrderApi.md#getorder) | **GET** /api/v1/order/{order_number} | 
[**getOrders**](OAIOrderApi.md#getorders) | **GET** /api/v1/orders | 
[**patchOrder**](OAIOrderApi.md#patchorder) | **PATCH** /api/v1/orders/{order_id} | 
[**replaceOrderTags**](OAIOrderApi.md#replaceordertags) | **PUT** /api/v1/orders/{order_id}/tags | 
[**updateOrderState**](OAIOrderApi.md#updateorderstate) | **PUT** /api/v1/orders/{order_id}/state | 


# **addOrderTags**
```objc
-(NSURLSessionTask*) addOrderTagsWithOrderId: (NSString*) orderId
    orderTagsRequest: (OAIOrderTagsRequest*) orderTagsRequest
        completionHandler: (void (^)(OAIOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* orderId = @"orderId_example"; // 
OAIOrderTagsRequest* orderTagsRequest = [[OAIOrderTagsRequest alloc] init]; // 

OAIOrderApi*apiInstance = [[OAIOrderApi alloc] init];

[apiInstance addOrderTagsWithOrderId:orderId
              orderTagsRequest:orderTagsRequest
          completionHandler: ^(OAIOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOrderApi->addOrderTags: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***|  | 
 **orderTagsRequest** | [**OAIOrderTagsRequest***](OAIOrderTagsRequest.md)|  | 

### Return type

[**OAIOrder***](OAIOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findOrderByExternalRef**
```objc
-(NSURLSessionTask*) findOrderByExternalRefWithExtRef: (NSString*) extRef
        completionHandler: (void (^)(OAIOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* extRef = @"extRef_example"; // 

OAIOrderApi*apiInstance = [[OAIOrderApi alloc] init];

[apiInstance findOrderByExternalRefWithExtRef:extRef
          completionHandler: ^(OAIOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOrderApi->findOrderByExternalRef: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extRef** | **NSString***|  | 

### Return type

[**OAIOrder***](OAIOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrder**
```objc
-(NSURLSessionTask*) getOrderWithOrderNumber: (NSString*) orderNumber
        completionHandler: (void (^)(OAIOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* orderNumber = @"orderNumber_example"; // 

OAIOrderApi*apiInstance = [[OAIOrderApi alloc] init];

[apiInstance getOrderWithOrderNumber:orderNumber
          completionHandler: ^(OAIOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOrderApi->getOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **NSString***|  | 

### Return type

[**OAIOrder***](OAIOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrders**
```objc
-(NSURLSessionTask*) getOrdersWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIOrder>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIOrderApi*apiInstance = [[OAIOrderApi alloc] init];

[apiInstance getOrdersWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIOrder>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOrderApi->getOrders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **search** | **NSString***|  | [optional] 
 **includeDeleted** | **NSNumber***| Soft-delete entities: set true to include rows with &#x60;deleted_at&#x60; set. | [optional] 

### Return type

[**NSArray<OAIOrder>***](OAIOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchOrder**
```objc
-(NSURLSessionTask*) patchOrderWithOrderId: (NSString*) orderId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* orderId = @"orderId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIOrderApi*apiInstance = [[OAIOrderApi alloc] init];

[apiInstance patchOrderWithOrderId:orderId
              body:body
          completionHandler: ^(OAIOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOrderApi->patchOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIOrder***](OAIOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replaceOrderTags**
```objc
-(NSURLSessionTask*) replaceOrderTagsWithOrderId: (NSString*) orderId
    orderTagsRequest: (OAIOrderTagsRequest*) orderTagsRequest
        completionHandler: (void (^)(OAIOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* orderId = @"orderId_example"; // 
OAIOrderTagsRequest* orderTagsRequest = [[OAIOrderTagsRequest alloc] init]; // 

OAIOrderApi*apiInstance = [[OAIOrderApi alloc] init];

[apiInstance replaceOrderTagsWithOrderId:orderId
              orderTagsRequest:orderTagsRequest
          completionHandler: ^(OAIOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOrderApi->replaceOrderTags: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***|  | 
 **orderTagsRequest** | [**OAIOrderTagsRequest***](OAIOrderTagsRequest.md)|  | 

### Return type

[**OAIOrder***](OAIOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrderState**
```objc
-(NSURLSessionTask*) updateOrderStateWithOrderId: (NSString*) orderId
    orderStateUpdate: (OAIOrderStateUpdate*) orderStateUpdate
        completionHandler: (void (^)(OAIOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* orderId = @"orderId_example"; // 
OAIOrderStateUpdate* orderStateUpdate = [[OAIOrderStateUpdate alloc] init]; // 

OAIOrderApi*apiInstance = [[OAIOrderApi alloc] init];

[apiInstance updateOrderStateWithOrderId:orderId
              orderStateUpdate:orderStateUpdate
          completionHandler: ^(OAIOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOrderApi->updateOrderState: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***|  | 
 **orderStateUpdate** | [**OAIOrderStateUpdate***](OAIOrderStateUpdate.md)|  | 

### Return type

[**OAIOrder***](OAIOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

