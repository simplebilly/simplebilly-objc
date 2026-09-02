# OAIProductApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductApi**](OAIProductApi.md#createproductapi) | **POST** /api/v1/products | 
[**deleteProductApi**](OAIProductApi.md#deleteproductapi) | **DELETE** /api/v1/products/{product_id} | 
[**getProductApi**](OAIProductApi.md#getproductapi) | **GET** /api/v1/products/{product_id} | 
[**getProductStockApi**](OAIProductApi.md#getproductstockapi) | **GET** /api/v1/products/{product_id}/stock | 
[**getProductsApi**](OAIProductApi.md#getproductsapi) | **GET** /api/v1/products/ | 
[**listLowStockProductsApi**](OAIProductApi.md#listlowstockproductsapi) | **GET** /api/v1/products/low-stock | 
[**productRestore**](OAIProductApi.md#productrestore) | **POST** /api/v1/products/{product_id}/restore | 
[**updateProductApi**](OAIProductApi.md#updateproductapi) | **PUT** /api/v1/products/{product_id} | 
[**updateProductStockApi**](OAIProductApi.md#updateproductstockapi) | **PUT** /api/v1/products/{product_id}/stock | 


# **createProductApi**
```objc
-(NSURLSessionTask*) createProductApiWithProductCreate: (OAIProductCreate*) productCreate
        completionHandler: (void (^)(OAIProduct* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIProductCreate* productCreate = [[OAIProductCreate alloc] init]; // 

OAIProductApi*apiInstance = [[OAIProductApi alloc] init];

[apiInstance createProductApiWithProductCreate:productCreate
          completionHandler: ^(OAIProduct* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductApi->createProductApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productCreate** | [**OAIProductCreate***](OAIProductCreate.md)|  | 

### Return type

[**OAIProduct***](OAIProduct.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProductApi**
```objc
-(NSURLSessionTask*) deleteProductApiWithProductId: (NSString*) productId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* productId = @"productId_example"; // 

OAIProductApi*apiInstance = [[OAIProductApi alloc] init];

[apiInstance deleteProductApiWithProductId:productId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIProductApi->deleteProductApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductApi**
```objc
-(NSURLSessionTask*) getProductApiWithProductId: (NSString*) productId
        completionHandler: (void (^)(OAIProduct* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* productId = @"productId_example"; // 

OAIProductApi*apiInstance = [[OAIProductApi alloc] init];

[apiInstance getProductApiWithProductId:productId
          completionHandler: ^(OAIProduct* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductApi->getProductApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **NSString***|  | 

### Return type

[**OAIProduct***](OAIProduct.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductStockApi**
```objc
-(NSURLSessionTask*) getProductStockApiWithProductId: (NSString*) productId
        completionHandler: (void (^)(OAIProductStock* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* productId = @"productId_example"; // 

OAIProductApi*apiInstance = [[OAIProductApi alloc] init];

[apiInstance getProductStockApiWithProductId:productId
          completionHandler: ^(OAIProductStock* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductApi->getProductStockApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **NSString***|  | 

### Return type

[**OAIProductStock***](OAIProductStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductsApi**
```objc
-(NSURLSessionTask*) getProductsApiWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIProduct>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIProductApi*apiInstance = [[OAIProductApi alloc] init];

[apiInstance getProductsApiWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIProduct>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductApi->getProductsApi: %@", error);
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

[**NSArray<OAIProduct>***](OAIProduct.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listLowStockProductsApi**
```objc
-(NSURLSessionTask*) listLowStockProductsApiWithThreshold: (NSNumber*) threshold
        completionHandler: (void (^)(NSArray<OAIProductStock>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* threshold = @56; //  (optional)

OAIProductApi*apiInstance = [[OAIProductApi alloc] init];

[apiInstance listLowStockProductsApiWithThreshold:threshold
          completionHandler: ^(NSArray<OAIProductStock>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductApi->listLowStockProductsApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threshold** | **NSNumber***|  | [optional] 

### Return type

[**NSArray<OAIProductStock>***](OAIProductStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productRestore**
```objc
-(NSURLSessionTask*) productRestoreWithProductId: (NSString*) productId
        completionHandler: (void (^)(OAIProduct* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* productId = @"productId_example"; // 

OAIProductApi*apiInstance = [[OAIProductApi alloc] init];

[apiInstance productRestoreWithProductId:productId
          completionHandler: ^(OAIProduct* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductApi->productRestore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **NSString***|  | 

### Return type

[**OAIProduct***](OAIProduct.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProductApi**
```objc
-(NSURLSessionTask*) updateProductApiWithProductId: (NSString*) productId
    productUpdate: (OAIProductUpdate*) productUpdate
        completionHandler: (void (^)(OAIProduct* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* productId = @"productId_example"; // 
OAIProductUpdate* productUpdate = [[OAIProductUpdate alloc] init]; // 

OAIProductApi*apiInstance = [[OAIProductApi alloc] init];

[apiInstance updateProductApiWithProductId:productId
              productUpdate:productUpdate
          completionHandler: ^(OAIProduct* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductApi->updateProductApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **NSString***|  | 
 **productUpdate** | [**OAIProductUpdate***](OAIProductUpdate.md)|  | 

### Return type

[**OAIProduct***](OAIProduct.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProductStockApi**
```objc
-(NSURLSessionTask*) updateProductStockApiWithProductId: (NSString*) productId
    stockUpdateRequest: (OAIStockUpdateRequest*) stockUpdateRequest
        completionHandler: (void (^)(OAIProductStock* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* productId = @"productId_example"; // 
OAIStockUpdateRequest* stockUpdateRequest = [[OAIStockUpdateRequest alloc] init]; // 

OAIProductApi*apiInstance = [[OAIProductApi alloc] init];

[apiInstance updateProductStockApiWithProductId:productId
              stockUpdateRequest:stockUpdateRequest
          completionHandler: ^(OAIProductStock* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductApi->updateProductStockApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **NSString***|  | 
 **stockUpdateRequest** | [**OAIStockUpdateRequest***](OAIStockUpdateRequest.md)|  | 

### Return type

[**OAIProductStock***](OAIProductStock.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

