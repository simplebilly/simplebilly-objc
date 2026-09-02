# OAIReplenishmentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyReplenishments**](OAIReplenishmentApi.md#applyreplenishments) | **POST** /api/v1/replenishments/apply | Create one draft stock transfer per (source → target) pair carrying all suggested product lines for that pair.
[**getReplenishments**](OAIReplenishmentApi.md#getreplenishments) | **GET** /api/v1/replenishments | 


# **applyReplenishments**
```objc
-(NSURLSessionTask*) applyReplenishmentsWithTargetWarehouseId: (NSString*) targetWarehouseId
    sourceWarehouseId: (NSString*) sourceWarehouseId
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```

Create one draft stock transfer per (source → target) pair carrying all suggested product lines for that pair.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* targetWarehouseId = @"targetWarehouseId_example"; // Warehouse to be replenished. Defaults to the tenant's default warehouse. (optional)
NSString* sourceWarehouseId = @"sourceWarehouseId_example"; // Restrict source warehouses to this id. (optional)

OAIReplenishmentApi*apiInstance = [[OAIReplenishmentApi alloc] init];

// Create one draft stock transfer per (source → target) pair carrying all suggested product lines for that pair.
[apiInstance applyReplenishmentsWithTargetWarehouseId:targetWarehouseId
              sourceWarehouseId:sourceWarehouseId
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReplenishmentApi->applyReplenishments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **targetWarehouseId** | **NSString***| Warehouse to be replenished. Defaults to the tenant&#39;s default warehouse. | [optional] 
 **sourceWarehouseId** | **NSString***| Restrict source warehouses to this id. | [optional] 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReplenishments**
```objc
-(NSURLSessionTask*) getReplenishmentsWithTargetWarehouseId: (NSString*) targetWarehouseId
    sourceWarehouseId: (NSString*) sourceWarehouseId
        completionHandler: (void (^)(OAIReplenishmentResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* targetWarehouseId = @"targetWarehouseId_example"; // Warehouse to be replenished. Defaults to the tenant's default warehouse. (optional)
NSString* sourceWarehouseId = @"sourceWarehouseId_example"; // Restrict source warehouses to this id. (optional)

OAIReplenishmentApi*apiInstance = [[OAIReplenishmentApi alloc] init];

[apiInstance getReplenishmentsWithTargetWarehouseId:targetWarehouseId
              sourceWarehouseId:sourceWarehouseId
          completionHandler: ^(OAIReplenishmentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReplenishmentApi->getReplenishments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **targetWarehouseId** | **NSString***| Warehouse to be replenished. Defaults to the tenant&#39;s default warehouse. | [optional] 
 **sourceWarehouseId** | **NSString***| Restrict source warehouses to this id. | [optional] 

### Return type

[**OAIReplenishmentResponse***](OAIReplenishmentResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

