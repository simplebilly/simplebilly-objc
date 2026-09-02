# OAIProductionOrderApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductionOrder**](OAIProductionOrderApi.md#createproductionorder) | **POST** /api/v1/production-orders | 
[**deleteProductionOrder**](OAIProductionOrderApi.md#deleteproductionorder) | **DELETE** /api/v1/production-orders/{production_order_id} | 
[**getProductionOrder**](OAIProductionOrderApi.md#getproductionorder) | **GET** /api/v1/production-orders/{production_order_id} | 
[**listProductionOrders**](OAIProductionOrderApi.md#listproductionorders) | **GET** /api/v1/production-orders/ | 
[**productionOrderCosting**](OAIProductionOrderApi.md#productionordercosting) | **GET** /api/v1/production-orders/{production_order_id}/costing | Actual-costing report (Nachkalkulation) — material costs from BOM components at their purchase price plus the resulting per-unit cost and margin against the finished product&#39;s sale price.
[**updateProductionOrder**](OAIProductionOrderApi.md#updateproductionorder) | **PUT** /api/v1/production-orders/{production_order_id} | 
[**updateProductionOrderStatus**](OAIProductionOrderApi.md#updateproductionorderstatus) | **PUT** /api/v1/production-orders/{production_order_id}/status | 


# **createProductionOrder**
```objc
-(NSURLSessionTask*) createProductionOrderWithProductionOrder: (OAIProductionOrder*) productionOrder
        completionHandler: (void (^)(OAIProductionOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIProductionOrder* productionOrder = [[OAIProductionOrder alloc] init]; // 

OAIProductionOrderApi*apiInstance = [[OAIProductionOrderApi alloc] init];

[apiInstance createProductionOrderWithProductionOrder:productionOrder
          completionHandler: ^(OAIProductionOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductionOrderApi->createProductionOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrder** | [**OAIProductionOrder***](OAIProductionOrder.md)|  | 

### Return type

[**OAIProductionOrder***](OAIProductionOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProductionOrder**
```objc
-(NSURLSessionTask*) deleteProductionOrderWithProductionOrderId: (NSString*) productionOrderId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* productionOrderId = @"productionOrderId_example"; // 

OAIProductionOrderApi*apiInstance = [[OAIProductionOrderApi alloc] init];

[apiInstance deleteProductionOrderWithProductionOrderId:productionOrderId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIProductionOrderApi->deleteProductionOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrderId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductionOrder**
```objc
-(NSURLSessionTask*) getProductionOrderWithProductionOrderId: (NSString*) productionOrderId
        completionHandler: (void (^)(OAIProductionOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* productionOrderId = @"productionOrderId_example"; // 

OAIProductionOrderApi*apiInstance = [[OAIProductionOrderApi alloc] init];

[apiInstance getProductionOrderWithProductionOrderId:productionOrderId
          completionHandler: ^(OAIProductionOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductionOrderApi->getProductionOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrderId** | **NSString***|  | 

### Return type

[**OAIProductionOrder***](OAIProductionOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProductionOrders**
```objc
-(NSURLSessionTask*) listProductionOrdersWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    status: (NSString*) status
        completionHandler: (void (^)(NSArray<OAIProductionOrder>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSString* status = @"status_example"; // Filter by status. (optional)

OAIProductionOrderApi*apiInstance = [[OAIProductionOrderApi alloc] init];

[apiInstance listProductionOrdersWithPage:page
              pageSize:pageSize
              search:search
              status:status
          completionHandler: ^(NSArray<OAIProductionOrder>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductionOrderApi->listProductionOrders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **search** | **NSString***|  | [optional] 
 **status** | **NSString***| Filter by status. | [optional] 

### Return type

[**NSArray<OAIProductionOrder>***](OAIProductionOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productionOrderCosting**
```objc
-(NSURLSessionTask*) productionOrderCostingWithProductionOrderId: (NSString*) productionOrderId
        completionHandler: (void (^)(OAIProductionOrderCosting* output, NSError* error)) handler;
```

Actual-costing report (Nachkalkulation) — material costs from BOM components at their purchase price plus the resulting per-unit cost and margin against the finished product's sale price.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* productionOrderId = @"productionOrderId_example"; // 

OAIProductionOrderApi*apiInstance = [[OAIProductionOrderApi alloc] init];

// Actual-costing report (Nachkalkulation) — material costs from BOM components at their purchase price plus the resulting per-unit cost and margin against the finished product's sale price.
[apiInstance productionOrderCostingWithProductionOrderId:productionOrderId
          completionHandler: ^(OAIProductionOrderCosting* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductionOrderApi->productionOrderCosting: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrderId** | **NSString***|  | 

### Return type

[**OAIProductionOrderCosting***](OAIProductionOrderCosting.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProductionOrder**
```objc
-(NSURLSessionTask*) updateProductionOrderWithProductionOrderId: (NSString*) productionOrderId
    productionOrder: (OAIProductionOrder*) productionOrder
        completionHandler: (void (^)(OAIProductionOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* productionOrderId = @"productionOrderId_example"; // 
OAIProductionOrder* productionOrder = [[OAIProductionOrder alloc] init]; // 

OAIProductionOrderApi*apiInstance = [[OAIProductionOrderApi alloc] init];

[apiInstance updateProductionOrderWithProductionOrderId:productionOrderId
              productionOrder:productionOrder
          completionHandler: ^(OAIProductionOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductionOrderApi->updateProductionOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrderId** | **NSString***|  | 
 **productionOrder** | [**OAIProductionOrder***](OAIProductionOrder.md)|  | 

### Return type

[**OAIProductionOrder***](OAIProductionOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProductionOrderStatus**
```objc
-(NSURLSessionTask*) updateProductionOrderStatusWithProductionOrderId: (NSString*) productionOrderId
    productionOrderStatusUpdate: (OAIProductionOrderStatusUpdate*) productionOrderStatusUpdate
        completionHandler: (void (^)(OAIProductionOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* productionOrderId = @"productionOrderId_example"; // 
OAIProductionOrderStatusUpdate* productionOrderStatusUpdate = [[OAIProductionOrderStatusUpdate alloc] init]; // 

OAIProductionOrderApi*apiInstance = [[OAIProductionOrderApi alloc] init];

[apiInstance updateProductionOrderStatusWithProductionOrderId:productionOrderId
              productionOrderStatusUpdate:productionOrderStatusUpdate
          completionHandler: ^(OAIProductionOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductionOrderApi->updateProductionOrderStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrderId** | **NSString***|  | 
 **productionOrderStatusUpdate** | [**OAIProductionOrderStatusUpdate***](OAIProductionOrderStatusUpdate.md)|  | 

### Return type

[**OAIProductionOrder***](OAIProductionOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

