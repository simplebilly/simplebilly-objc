# OAIWarehouseStockApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWarehouseStock**](OAIWarehouseStockApi.md#createwarehousestock) | **POST** /api/v1/warehouses/{warehouse_id}/stock | 
[**deleteWarehouseStock**](OAIWarehouseStockApi.md#deletewarehousestock) | **DELETE** /api/v1/warehouses/{warehouse_id}/stock/{product_id} | 
[**listWarehouseStock**](OAIWarehouseStockApi.md#listwarehousestock) | **GET** /api/v1/warehouses/{warehouse_id}/stock | 
[**updateWarehouseStock**](OAIWarehouseStockApi.md#updatewarehousestock) | **PUT** /api/v1/warehouses/{warehouse_id}/stock/{product_id} | 


# **createWarehouseStock**
```objc
-(NSURLSessionTask*) createWarehouseStockWithWarehouseId: (NSString*) warehouseId
    stockAdjustment: (OAIStockAdjustment*) stockAdjustment
        completionHandler: (void (^)(OAIWarehouseStock* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* warehouseId = @"warehouseId_example"; // 
OAIStockAdjustment* stockAdjustment = [[OAIStockAdjustment alloc] init]; // 

OAIWarehouseStockApi*apiInstance = [[OAIWarehouseStockApi alloc] init];

[apiInstance createWarehouseStockWithWarehouseId:warehouseId
              stockAdjustment:stockAdjustment
          completionHandler: ^(OAIWarehouseStock* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWarehouseStockApi->createWarehouseStock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouseId** | **NSString***|  | 
 **stockAdjustment** | [**OAIStockAdjustment***](OAIStockAdjustment.md)|  | 

### Return type

[**OAIWarehouseStock***](OAIWarehouseStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWarehouseStock**
```objc
-(NSURLSessionTask*) deleteWarehouseStockWithWarehouseId: (NSString*) warehouseId
    productId: (NSString*) productId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* warehouseId = @"warehouseId_example"; // 
NSString* productId = @"productId_example"; // 

OAIWarehouseStockApi*apiInstance = [[OAIWarehouseStockApi alloc] init];

[apiInstance deleteWarehouseStockWithWarehouseId:warehouseId
              productId:productId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIWarehouseStockApi->deleteWarehouseStock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouseId** | **NSString***|  | 
 **productId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWarehouseStock**
```objc
-(NSURLSessionTask*) listWarehouseStockWithWarehouseId: (NSString*) warehouseId
        completionHandler: (void (^)(NSArray<OAIWarehouseStock>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* warehouseId = @"warehouseId_example"; // 

OAIWarehouseStockApi*apiInstance = [[OAIWarehouseStockApi alloc] init];

[apiInstance listWarehouseStockWithWarehouseId:warehouseId
          completionHandler: ^(NSArray<OAIWarehouseStock>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWarehouseStockApi->listWarehouseStock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouseId** | **NSString***|  | 

### Return type

[**NSArray<OAIWarehouseStock>***](OAIWarehouseStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWarehouseStock**
```objc
-(NSURLSessionTask*) updateWarehouseStockWithWarehouseId: (NSString*) warehouseId
    productId: (NSString*) productId
    stockAdjustment: (OAIStockAdjustment*) stockAdjustment
        completionHandler: (void (^)(OAIWarehouseStock* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* warehouseId = @"warehouseId_example"; // 
NSString* productId = @"productId_example"; // 
OAIStockAdjustment* stockAdjustment = [[OAIStockAdjustment alloc] init]; // 

OAIWarehouseStockApi*apiInstance = [[OAIWarehouseStockApi alloc] init];

[apiInstance updateWarehouseStockWithWarehouseId:warehouseId
              productId:productId
              stockAdjustment:stockAdjustment
          completionHandler: ^(OAIWarehouseStock* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWarehouseStockApi->updateWarehouseStock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouseId** | **NSString***|  | 
 **productId** | **NSString***|  | 
 **stockAdjustment** | [**OAIStockAdjustment***](OAIStockAdjustment.md)|  | 

### Return type

[**OAIWarehouseStock***](OAIWarehouseStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

