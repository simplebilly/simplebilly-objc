# OAIInventoryCountApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInventoryCount**](OAIInventoryCountApi.md#createinventorycount) | **POST** /api/v1/inventory-counts | 
[**deleteInventoryCount**](OAIInventoryCountApi.md#deleteinventorycount) | **DELETE** /api/v1/inventory-counts/{inventory_count_id} | 
[**generateInventoryCount**](OAIInventoryCountApi.md#generateinventorycount) | **POST** /api/v1/inventory-counts/generate | 
[**getInventoryCount**](OAIInventoryCountApi.md#getinventorycount) | **GET** /api/v1/inventory-counts/{inventory_count_id} | 
[**listInventoryCounts**](OAIInventoryCountApi.md#listinventorycounts) | **GET** /api/v1/inventory-counts/ | 
[**updateInventoryCount**](OAIInventoryCountApi.md#updateinventorycount) | **PUT** /api/v1/inventory-counts/{inventory_count_id} | 
[**updateInventoryCountStatus**](OAIInventoryCountApi.md#updateinventorycountstatus) | **PUT** /api/v1/inventory-counts/{inventory_count_id}/status | 


# **createInventoryCount**
```objc
-(NSURLSessionTask*) createInventoryCountWithInventoryCount: (OAIInventoryCount*) inventoryCount
        completionHandler: (void (^)(OAIInventoryCount* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIInventoryCount* inventoryCount = [[OAIInventoryCount alloc] init]; // 

OAIInventoryCountApi*apiInstance = [[OAIInventoryCountApi alloc] init];

[apiInstance createInventoryCountWithInventoryCount:inventoryCount
          completionHandler: ^(OAIInventoryCount* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInventoryCountApi->createInventoryCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventoryCount** | [**OAIInventoryCount***](OAIInventoryCount.md)|  | 

### Return type

[**OAIInventoryCount***](OAIInventoryCount.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInventoryCount**
```objc
-(NSURLSessionTask*) deleteInventoryCountWithInventoryCountId: (NSString*) inventoryCountId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* inventoryCountId = @"inventoryCountId_example"; // 

OAIInventoryCountApi*apiInstance = [[OAIInventoryCountApi alloc] init];

[apiInstance deleteInventoryCountWithInventoryCountId:inventoryCountId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInventoryCountApi->deleteInventoryCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventoryCountId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateInventoryCount**
```objc
-(NSURLSessionTask*) generateInventoryCountWithGenerateCountRequest: (OAIGenerateCountRequest*) generateCountRequest
        completionHandler: (void (^)(OAIInventoryCount* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIGenerateCountRequest* generateCountRequest = [[OAIGenerateCountRequest alloc] init]; // 

OAIInventoryCountApi*apiInstance = [[OAIInventoryCountApi alloc] init];

[apiInstance generateInventoryCountWithGenerateCountRequest:generateCountRequest
          completionHandler: ^(OAIInventoryCount* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInventoryCountApi->generateInventoryCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateCountRequest** | [**OAIGenerateCountRequest***](OAIGenerateCountRequest.md)|  | 

### Return type

[**OAIInventoryCount***](OAIInventoryCount.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInventoryCount**
```objc
-(NSURLSessionTask*) getInventoryCountWithInventoryCountId: (NSString*) inventoryCountId
        completionHandler: (void (^)(OAIInventoryCount* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* inventoryCountId = @"inventoryCountId_example"; // 

OAIInventoryCountApi*apiInstance = [[OAIInventoryCountApi alloc] init];

[apiInstance getInventoryCountWithInventoryCountId:inventoryCountId
          completionHandler: ^(OAIInventoryCount* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInventoryCountApi->getInventoryCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventoryCountId** | **NSString***|  | 

### Return type

[**OAIInventoryCount***](OAIInventoryCount.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInventoryCounts**
```objc
-(NSURLSessionTask*) listInventoryCountsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    status: (NSString*) status
    warehouseId: (NSString*) warehouseId
        completionHandler: (void (^)(NSArray<OAIInventoryCount>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSString* warehouseId = @"warehouseId_example"; //  (optional)

OAIInventoryCountApi*apiInstance = [[OAIInventoryCountApi alloc] init];

[apiInstance listInventoryCountsWithPage:page
              pageSize:pageSize
              status:status
              warehouseId:warehouseId
          completionHandler: ^(NSArray<OAIInventoryCount>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInventoryCountApi->listInventoryCounts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **warehouseId** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIInventoryCount>***](OAIInventoryCount.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInventoryCount**
```objc
-(NSURLSessionTask*) updateInventoryCountWithInventoryCountId: (NSString*) inventoryCountId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIInventoryCount* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* inventoryCountId = @"inventoryCountId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIInventoryCountApi*apiInstance = [[OAIInventoryCountApi alloc] init];

[apiInstance updateInventoryCountWithInventoryCountId:inventoryCountId
              body:body
          completionHandler: ^(OAIInventoryCount* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInventoryCountApi->updateInventoryCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventoryCountId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIInventoryCount***](OAIInventoryCount.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInventoryCountStatus**
```objc
-(NSURLSessionTask*) updateInventoryCountStatusWithInventoryCountId: (NSString*) inventoryCountId
    inventoryCountStatusUpdate: (OAIInventoryCountStatusUpdate*) inventoryCountStatusUpdate
        completionHandler: (void (^)(OAIInventoryCount* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* inventoryCountId = @"inventoryCountId_example"; // 
OAIInventoryCountStatusUpdate* inventoryCountStatusUpdate = [[OAIInventoryCountStatusUpdate alloc] init]; // 

OAIInventoryCountApi*apiInstance = [[OAIInventoryCountApi alloc] init];

[apiInstance updateInventoryCountStatusWithInventoryCountId:inventoryCountId
              inventoryCountStatusUpdate:inventoryCountStatusUpdate
          completionHandler: ^(OAIInventoryCount* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInventoryCountApi->updateInventoryCountStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventoryCountId** | **NSString***|  | 
 **inventoryCountStatusUpdate** | [**OAIInventoryCountStatusUpdate***](OAIInventoryCountStatusUpdate.md)|  | 

### Return type

[**OAIInventoryCount***](OAIInventoryCount.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

