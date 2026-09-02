# OAIShipmentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShipment**](OAIShipmentApi.md#createshipment) | **POST** /api/v1/shipments | 
[**createShipmentFromOrder**](OAIShipmentApi.md#createshipmentfromorder) | **POST** /api/v1/orders/{order_number}/shipments | Create a real shipment for an order: calls the configured carrier&#39;s label API, stores the returned tracking/label on a new shipment row, and marks the order as shipped.
[**deleteShipment**](OAIShipmentApi.md#deleteshipment) | **DELETE** /api/v1/shipments/{shipment_id} | 
[**getShipment**](OAIShipmentApi.md#getshipment) | **GET** /api/v1/shipments/{shipment_id} | 
[**listShipments**](OAIShipmentApi.md#listshipments) | **GET** /api/v1/shipments | 
[**trackOrderPublic**](OAIShipmentApi.md#trackorderpublic) | **POST** /api/v1/public/track | Customer-facing tracking lookup: order number + email → shipment status and live carrier events. No auth (public storefront API).
[**trackShipmentApi**](OAIShipmentApi.md#trackshipmentapi) | **GET** /api/v1/shipments/{shipment_id}/tracking | 
[**updateShipmentStatus**](OAIShipmentApi.md#updateshipmentstatus) | **PUT** /api/v1/shipments/{shipment_id}/status | 


# **createShipment**
```objc
-(NSURLSessionTask*) createShipmentWithShipment: (OAIShipment*) shipment
        completionHandler: (void (^)(OAIShipment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIShipment* shipment = [[OAIShipment alloc] init]; // 

OAIShipmentApi*apiInstance = [[OAIShipmentApi alloc] init];

[apiInstance createShipmentWithShipment:shipment
          completionHandler: ^(OAIShipment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShipmentApi->createShipment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment** | [**OAIShipment***](OAIShipment.md)|  | 

### Return type

[**OAIShipment***](OAIShipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createShipmentFromOrder**
```objc
-(NSURLSessionTask*) createShipmentFromOrderWithOrderNumber: (NSString*) orderNumber
    createShipmentRequest: (OAICreateShipmentRequest*) createShipmentRequest
        completionHandler: (void (^)(OAIShipment* output, NSError* error)) handler;
```

Create a real shipment for an order: calls the configured carrier's label API, stores the returned tracking/label on a new shipment row, and marks the order as shipped.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* orderNumber = @"orderNumber_example"; // 
OAICreateShipmentRequest* createShipmentRequest = [[OAICreateShipmentRequest alloc] init]; // 

OAIShipmentApi*apiInstance = [[OAIShipmentApi alloc] init];

// Create a real shipment for an order: calls the configured carrier's label API, stores the returned tracking/label on a new shipment row, and marks the order as shipped.
[apiInstance createShipmentFromOrderWithOrderNumber:orderNumber
              createShipmentRequest:createShipmentRequest
          completionHandler: ^(OAIShipment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShipmentApi->createShipmentFromOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **NSString***|  | 
 **createShipmentRequest** | [**OAICreateShipmentRequest***](OAICreateShipmentRequest.md)|  | 

### Return type

[**OAIShipment***](OAIShipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteShipment**
```objc
-(NSURLSessionTask*) deleteShipmentWithShipmentId: (NSString*) shipmentId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* shipmentId = @"shipmentId_example"; // 

OAIShipmentApi*apiInstance = [[OAIShipmentApi alloc] init];

[apiInstance deleteShipmentWithShipmentId:shipmentId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIShipmentApi->deleteShipment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipmentId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShipment**
```objc
-(NSURLSessionTask*) getShipmentWithShipmentId: (NSString*) shipmentId
        completionHandler: (void (^)(OAIShipment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* shipmentId = @"shipmentId_example"; // 

OAIShipmentApi*apiInstance = [[OAIShipmentApi alloc] init];

[apiInstance getShipmentWithShipmentId:shipmentId
          completionHandler: ^(OAIShipment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShipmentApi->getShipment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipmentId** | **NSString***|  | 

### Return type

[**OAIShipment***](OAIShipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listShipments**
```objc
-(NSURLSessionTask*) listShipmentsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIShipment>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIShipmentApi*apiInstance = [[OAIShipmentApi alloc] init];

[apiInstance listShipmentsWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIShipment>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShipmentApi->listShipments: %@", error);
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

[**NSArray<OAIShipment>***](OAIShipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackOrderPublic**
```objc
-(NSURLSessionTask*) trackOrderPublicWithTrackOrderRequest: (OAITrackOrderRequest*) trackOrderRequest
        completionHandler: (void (^)(OAITrackOrderResponse* output, NSError* error)) handler;
```

Customer-facing tracking lookup: order number + email → shipment status and live carrier events. No auth (public storefront API).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAITrackOrderRequest* trackOrderRequest = [[OAITrackOrderRequest alloc] init]; // 

OAIShipmentApi*apiInstance = [[OAIShipmentApi alloc] init];

// Customer-facing tracking lookup: order number + email → shipment status and live carrier events. No auth (public storefront API).
[apiInstance trackOrderPublicWithTrackOrderRequest:trackOrderRequest
          completionHandler: ^(OAITrackOrderResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShipmentApi->trackOrderPublic: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trackOrderRequest** | [**OAITrackOrderRequest***](OAITrackOrderRequest.md)|  | 

### Return type

[**OAITrackOrderResponse***](OAITrackOrderResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trackShipmentApi**
```objc
-(NSURLSessionTask*) trackShipmentApiWithShipmentId: (NSString*) shipmentId
        completionHandler: (void (^)(OAITrackingInfo* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* shipmentId = @"shipmentId_example"; // 

OAIShipmentApi*apiInstance = [[OAIShipmentApi alloc] init];

[apiInstance trackShipmentApiWithShipmentId:shipmentId
          completionHandler: ^(OAITrackingInfo* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShipmentApi->trackShipmentApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipmentId** | **NSString***|  | 

### Return type

[**OAITrackingInfo***](OAITrackingInfo.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateShipmentStatus**
```objc
-(NSURLSessionTask*) updateShipmentStatusWithShipmentId: (NSString*) shipmentId
    shipmentStatusUpdate: (OAIShipmentStatusUpdate*) shipmentStatusUpdate
        completionHandler: (void (^)(OAIShipment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* shipmentId = @"shipmentId_example"; // 
OAIShipmentStatusUpdate* shipmentStatusUpdate = [[OAIShipmentStatusUpdate alloc] init]; // 

OAIShipmentApi*apiInstance = [[OAIShipmentApi alloc] init];

[apiInstance updateShipmentStatusWithShipmentId:shipmentId
              shipmentStatusUpdate:shipmentStatusUpdate
          completionHandler: ^(OAIShipment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShipmentApi->updateShipmentStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipmentId** | **NSString***|  | 
 **shipmentStatusUpdate** | [**OAIShipmentStatusUpdate***](OAIShipmentStatusUpdate.md)|  | 

### Return type

[**OAIShipment***](OAIShipment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

