# OAIWarehouseApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWarehouse**](OAIWarehouseApi.md#createwarehouse) | **POST** /api/v1/warehouses | 
[**deleteWarehouse**](OAIWarehouseApi.md#deletewarehouse) | **DELETE** /api/v1/warehouses/{warehouse_id} | 
[**getWarehouse**](OAIWarehouseApi.md#getwarehouse) | **GET** /api/v1/warehouses/{warehouse_id} | 
[**listWarehouses**](OAIWarehouseApi.md#listwarehouses) | **GET** /api/v1/warehouses/ | 
[**updateWarehouse**](OAIWarehouseApi.md#updatewarehouse) | **PUT** /api/v1/warehouses/{warehouse_id} | 


# **createWarehouse**
```objc
-(NSURLSessionTask*) createWarehouseWithWarehouse: (OAIWarehouse*) warehouse
        completionHandler: (void (^)(OAIWarehouse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIWarehouse* warehouse = [[OAIWarehouse alloc] init]; // 

OAIWarehouseApi*apiInstance = [[OAIWarehouseApi alloc] init];

[apiInstance createWarehouseWithWarehouse:warehouse
          completionHandler: ^(OAIWarehouse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWarehouseApi->createWarehouse: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse** | [**OAIWarehouse***](OAIWarehouse.md)|  | 

### Return type

[**OAIWarehouse***](OAIWarehouse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWarehouse**
```objc
-(NSURLSessionTask*) deleteWarehouseWithWarehouseId: (NSString*) warehouseId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* warehouseId = @"warehouseId_example"; // 

OAIWarehouseApi*apiInstance = [[OAIWarehouseApi alloc] init];

[apiInstance deleteWarehouseWithWarehouseId:warehouseId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIWarehouseApi->deleteWarehouse: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouseId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWarehouse**
```objc
-(NSURLSessionTask*) getWarehouseWithWarehouseId: (NSString*) warehouseId
        completionHandler: (void (^)(OAIWarehouse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* warehouseId = @"warehouseId_example"; // 

OAIWarehouseApi*apiInstance = [[OAIWarehouseApi alloc] init];

[apiInstance getWarehouseWithWarehouseId:warehouseId
          completionHandler: ^(OAIWarehouse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWarehouseApi->getWarehouse: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouseId** | **NSString***|  | 

### Return type

[**OAIWarehouse***](OAIWarehouse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWarehouses**
```objc
-(NSURLSessionTask*) listWarehousesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    isActive: (NSNumber*) isActive
        completionHandler: (void (^)(NSArray<OAIWarehouse>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* isActive = @56; //  (optional)

OAIWarehouseApi*apiInstance = [[OAIWarehouseApi alloc] init];

[apiInstance listWarehousesWithPage:page
              pageSize:pageSize
              search:search
              isActive:isActive
          completionHandler: ^(NSArray<OAIWarehouse>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWarehouseApi->listWarehouses: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **search** | **NSString***|  | [optional] 
 **isActive** | **NSNumber***|  | [optional] 

### Return type

[**NSArray<OAIWarehouse>***](OAIWarehouse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWarehouse**
```objc
-(NSURLSessionTask*) updateWarehouseWithWarehouseId: (NSString*) warehouseId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIWarehouse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* warehouseId = @"warehouseId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIWarehouseApi*apiInstance = [[OAIWarehouseApi alloc] init];

[apiInstance updateWarehouseWithWarehouseId:warehouseId
              body:body
          completionHandler: ^(OAIWarehouse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWarehouseApi->updateWarehouse: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouseId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIWarehouse***](OAIWarehouse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

