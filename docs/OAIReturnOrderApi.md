# OAIReturnOrderApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createReturnOrder**](OAIReturnOrderApi.md#createreturnorder) | **POST** /api/v1/returns | 
[**deleteReturnOrder**](OAIReturnOrderApi.md#deletereturnorder) | **DELETE** /api/v1/returns/{return_order_id} | 
[**getReturnOrder**](OAIReturnOrderApi.md#getreturnorder) | **GET** /api/v1/returns/{return_order_id} | 
[**listReturnOrders**](OAIReturnOrderApi.md#listreturnorders) | **GET** /api/v1/returns/ | 
[**returnLogisticsQueue**](OAIReturnOrderApi.md#returnlogisticsqueue) | **GET** /api/v1/returns/logistics-queue | 
[**returnLogisticsSummary**](OAIReturnOrderApi.md#returnlogisticssummary) | **GET** /api/v1/returns/logistics-summary | Returns-logistics aggregation for the dashboard: quantities received, restocked and scrapped per warehouse.
[**updateReturnOrder**](OAIReturnOrderApi.md#updatereturnorder) | **PUT** /api/v1/returns/{return_order_id} | 
[**updateReturnOrderStatus**](OAIReturnOrderApi.md#updatereturnorderstatus) | **PUT** /api/v1/returns/{return_order_id}/status | 


# **createReturnOrder**
```objc
-(NSURLSessionTask*) createReturnOrderWithReturnOrder: (OAIReturnOrder*) returnOrder
        completionHandler: (void (^)(OAIReturnOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIReturnOrder* returnOrder = [[OAIReturnOrder alloc] init]; // 

OAIReturnOrderApi*apiInstance = [[OAIReturnOrderApi alloc] init];

[apiInstance createReturnOrderWithReturnOrder:returnOrder
          completionHandler: ^(OAIReturnOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReturnOrderApi->createReturnOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnOrder** | [**OAIReturnOrder***](OAIReturnOrder.md)|  | 

### Return type

[**OAIReturnOrder***](OAIReturnOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteReturnOrder**
```objc
-(NSURLSessionTask*) deleteReturnOrderWithReturnOrderId: (NSString*) returnOrderId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* returnOrderId = @"returnOrderId_example"; // 

OAIReturnOrderApi*apiInstance = [[OAIReturnOrderApi alloc] init];

[apiInstance deleteReturnOrderWithReturnOrderId:returnOrderId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIReturnOrderApi->deleteReturnOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnOrderId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReturnOrder**
```objc
-(NSURLSessionTask*) getReturnOrderWithReturnOrderId: (NSString*) returnOrderId
        completionHandler: (void (^)(OAIReturnOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* returnOrderId = @"returnOrderId_example"; // 

OAIReturnOrderApi*apiInstance = [[OAIReturnOrderApi alloc] init];

[apiInstance getReturnOrderWithReturnOrderId:returnOrderId
          completionHandler: ^(OAIReturnOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReturnOrderApi->getReturnOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnOrderId** | **NSString***|  | 

### Return type

[**OAIReturnOrder***](OAIReturnOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listReturnOrders**
```objc
-(NSURLSessionTask*) listReturnOrdersWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    status: (NSString*) status
    customerName: (NSString*) customerName
    orderNumber: (NSString*) orderNumber
        completionHandler: (void (^)(NSArray<OAIReturnOrder>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSString* customerName = @"customerName_example"; //  (optional)
NSString* orderNumber = @"orderNumber_example"; //  (optional)

OAIReturnOrderApi*apiInstance = [[OAIReturnOrderApi alloc] init];

[apiInstance listReturnOrdersWithPage:page
              pageSize:pageSize
              status:status
              customerName:customerName
              orderNumber:orderNumber
          completionHandler: ^(NSArray<OAIReturnOrder>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReturnOrderApi->listReturnOrders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **customerName** | **NSString***|  | [optional] 
 **orderNumber** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIReturnOrder>***](OAIReturnOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **returnLogisticsQueue**
```objc
-(NSURLSessionTask*) returnLogisticsQueueWithCompletionHandler: 
        (void (^)(NSArray<OAIReturnLogisticsQueueItem>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIReturnOrderApi*apiInstance = [[OAIReturnOrderApi alloc] init];

[apiInstance returnLogisticsQueueWithCompletionHandler: 
          ^(NSArray<OAIReturnLogisticsQueueItem>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReturnOrderApi->returnLogisticsQueue: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIReturnLogisticsQueueItem>***](OAIReturnLogisticsQueueItem.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **returnLogisticsSummary**
```objc
-(NSURLSessionTask*) returnLogisticsSummaryWithCompletionHandler: 
        (void (^)(OAIReturnLogisticsSummary* output, NSError* error)) handler;
```

Returns-logistics aggregation for the dashboard: quantities received, restocked and scrapped per warehouse.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIReturnOrderApi*apiInstance = [[OAIReturnOrderApi alloc] init];

// Returns-logistics aggregation for the dashboard: quantities received, restocked and scrapped per warehouse.
[apiInstance returnLogisticsSummaryWithCompletionHandler: 
          ^(OAIReturnLogisticsSummary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReturnOrderApi->returnLogisticsSummary: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIReturnLogisticsSummary***](OAIReturnLogisticsSummary.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateReturnOrder**
```objc
-(NSURLSessionTask*) updateReturnOrderWithReturnOrderId: (NSString*) returnOrderId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIReturnOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* returnOrderId = @"returnOrderId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIReturnOrderApi*apiInstance = [[OAIReturnOrderApi alloc] init];

[apiInstance updateReturnOrderWithReturnOrderId:returnOrderId
              body:body
          completionHandler: ^(OAIReturnOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReturnOrderApi->updateReturnOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnOrderId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIReturnOrder***](OAIReturnOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateReturnOrderStatus**
```objc
-(NSURLSessionTask*) updateReturnOrderStatusWithReturnOrderId: (NSString*) returnOrderId
    returnOrderStatusUpdate: (OAIReturnOrderStatusUpdate*) returnOrderStatusUpdate
        completionHandler: (void (^)(OAIReturnOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* returnOrderId = @"returnOrderId_example"; // 
OAIReturnOrderStatusUpdate* returnOrderStatusUpdate = [[OAIReturnOrderStatusUpdate alloc] init]; // 

OAIReturnOrderApi*apiInstance = [[OAIReturnOrderApi alloc] init];

[apiInstance updateReturnOrderStatusWithReturnOrderId:returnOrderId
              returnOrderStatusUpdate:returnOrderStatusUpdate
          completionHandler: ^(OAIReturnOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReturnOrderApi->updateReturnOrderStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnOrderId** | **NSString***|  | 
 **returnOrderStatusUpdate** | [**OAIReturnOrderStatusUpdate***](OAIReturnOrderStatusUpdate.md)|  | 

### Return type

[**OAIReturnOrder***](OAIReturnOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

