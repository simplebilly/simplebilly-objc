# OAIShippingThresholdApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShippingThreshold**](OAIShippingThresholdApi.md#createshippingthreshold) | **POST** /api/v1/shipping-thresholds | 
[**deleteShippingThreshold**](OAIShippingThresholdApi.md#deleteshippingthreshold) | **DELETE** /api/v1/shipping-thresholds/{threshold_id} | 
[**getDeliverable**](OAIShippingThresholdApi.md#getdeliverable) | **GET** /api/v1/shipping-thresholds/deliverable | 
[**getShippingThreshold**](OAIShippingThresholdApi.md#getshippingthreshold) | **GET** /api/v1/shipping-thresholds/{threshold_id} | 
[**listShippingThresholds**](OAIShippingThresholdApi.md#listshippingthresholds) | **GET** /api/v1/shipping-thresholds/ | 
[**updateShippingThreshold**](OAIShippingThresholdApi.md#updateshippingthreshold) | **PUT** /api/v1/shipping-thresholds/{threshold_id} | 


# **createShippingThreshold**
```objc
-(NSURLSessionTask*) createShippingThresholdWithShippingThresholdCreate: (OAIShippingThresholdCreate*) shippingThresholdCreate
        completionHandler: (void (^)(OAIShippingThreshold* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIShippingThresholdCreate* shippingThresholdCreate = [[OAIShippingThresholdCreate alloc] init]; // 

OAIShippingThresholdApi*apiInstance = [[OAIShippingThresholdApi alloc] init];

[apiInstance createShippingThresholdWithShippingThresholdCreate:shippingThresholdCreate
          completionHandler: ^(OAIShippingThreshold* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShippingThresholdApi->createShippingThreshold: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shippingThresholdCreate** | [**OAIShippingThresholdCreate***](OAIShippingThresholdCreate.md)|  | 

### Return type

[**OAIShippingThreshold***](OAIShippingThreshold.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteShippingThreshold**
```objc
-(NSURLSessionTask*) deleteShippingThresholdWithThresholdId: (NSString*) thresholdId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* thresholdId = @"thresholdId_example"; // 

OAIShippingThresholdApi*apiInstance = [[OAIShippingThresholdApi alloc] init];

[apiInstance deleteShippingThresholdWithThresholdId:thresholdId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIShippingThresholdApi->deleteShippingThreshold: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thresholdId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeliverable**
```objc
-(NSURLSessionTask*) getDeliverableWithProductId: (NSString*) productId
    warehouseId: (NSString*) warehouseId
        completionHandler: (void (^)(OAIDeliverableResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* productId = @"productId_example"; // 
NSString* warehouseId = @"warehouseId_example"; //  (optional)

OAIShippingThresholdApi*apiInstance = [[OAIShippingThresholdApi alloc] init];

[apiInstance getDeliverableWithProductId:productId
              warehouseId:warehouseId
          completionHandler: ^(OAIDeliverableResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShippingThresholdApi->getDeliverable: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **NSString***|  | 
 **warehouseId** | **NSString***|  | [optional] 

### Return type

[**OAIDeliverableResponse***](OAIDeliverableResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShippingThreshold**
```objc
-(NSURLSessionTask*) getShippingThresholdWithThresholdId: (NSString*) thresholdId
        completionHandler: (void (^)(OAIShippingThreshold* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* thresholdId = @"thresholdId_example"; // 

OAIShippingThresholdApi*apiInstance = [[OAIShippingThresholdApi alloc] init];

[apiInstance getShippingThresholdWithThresholdId:thresholdId
          completionHandler: ^(OAIShippingThreshold* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShippingThresholdApi->getShippingThreshold: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thresholdId** | **NSString***|  | 

### Return type

[**OAIShippingThreshold***](OAIShippingThreshold.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listShippingThresholds**
```objc
-(NSURLSessionTask*) listShippingThresholdsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    productId: (NSString*) productId
    warehouseId: (NSString*) warehouseId
    isActive: (NSNumber*) isActive
        completionHandler: (void (^)(NSArray<OAIShippingThreshold>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* productId = @"productId_example"; //  (optional)
NSString* warehouseId = @"warehouseId_example"; //  (optional)
NSNumber* isActive = @56; //  (optional)

OAIShippingThresholdApi*apiInstance = [[OAIShippingThresholdApi alloc] init];

[apiInstance listShippingThresholdsWithPage:page
              pageSize:pageSize
              productId:productId
              warehouseId:warehouseId
              isActive:isActive
          completionHandler: ^(NSArray<OAIShippingThreshold>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShippingThresholdApi->listShippingThresholds: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **productId** | **NSString***|  | [optional] 
 **warehouseId** | **NSString***|  | [optional] 
 **isActive** | **NSNumber***|  | [optional] 

### Return type

[**NSArray<OAIShippingThreshold>***](OAIShippingThreshold.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateShippingThreshold**
```objc
-(NSURLSessionTask*) updateShippingThresholdWithThresholdId: (NSString*) thresholdId
    shippingThresholdUpdate: (OAIShippingThresholdUpdate*) shippingThresholdUpdate
        completionHandler: (void (^)(OAIShippingThreshold* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* thresholdId = @"thresholdId_example"; // 
OAIShippingThresholdUpdate* shippingThresholdUpdate = [[OAIShippingThresholdUpdate alloc] init]; // 

OAIShippingThresholdApi*apiInstance = [[OAIShippingThresholdApi alloc] init];

[apiInstance updateShippingThresholdWithThresholdId:thresholdId
              shippingThresholdUpdate:shippingThresholdUpdate
          completionHandler: ^(OAIShippingThreshold* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShippingThresholdApi->updateShippingThreshold: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thresholdId** | **NSString***|  | 
 **shippingThresholdUpdate** | [**OAIShippingThresholdUpdate***](OAIShippingThresholdUpdate.md)|  | 

### Return type

[**OAIShippingThreshold***](OAIShippingThreshold.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

