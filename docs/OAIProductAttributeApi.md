# OAIProductAttributeApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductAttribute**](OAIProductAttributeApi.md#createproductattribute) | **POST** /api/v1/product-attributes | 
[**deleteProductAttribute**](OAIProductAttributeApi.md#deleteproductattribute) | **DELETE** /api/v1/product-attributes/{attribute_id} | 
[**getProductAttribute**](OAIProductAttributeApi.md#getproductattribute) | **GET** /api/v1/product-attributes/{attribute_id} | 
[**listProductAttributes**](OAIProductAttributeApi.md#listproductattributes) | **GET** /api/v1/product-attributes/ | 
[**updateProductAttribute**](OAIProductAttributeApi.md#updateproductattribute) | **PUT** /api/v1/product-attributes/{attribute_id} | 


# **createProductAttribute**
```objc
-(NSURLSessionTask*) createProductAttributeWithProductAttributeCreate: (OAIProductAttributeCreate*) productAttributeCreate
        completionHandler: (void (^)(OAIProductAttribute* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIProductAttributeCreate* productAttributeCreate = [[OAIProductAttributeCreate alloc] init]; // 

OAIProductAttributeApi*apiInstance = [[OAIProductAttributeApi alloc] init];

[apiInstance createProductAttributeWithProductAttributeCreate:productAttributeCreate
          completionHandler: ^(OAIProductAttribute* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductAttributeApi->createProductAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productAttributeCreate** | [**OAIProductAttributeCreate***](OAIProductAttributeCreate.md)|  | 

### Return type

[**OAIProductAttribute***](OAIProductAttribute.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProductAttribute**
```objc
-(NSURLSessionTask*) deleteProductAttributeWithAttributeId: (NSString*) attributeId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* attributeId = @"attributeId_example"; // 

OAIProductAttributeApi*apiInstance = [[OAIProductAttributeApi alloc] init];

[apiInstance deleteProductAttributeWithAttributeId:attributeId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIProductAttributeApi->deleteProductAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attributeId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductAttribute**
```objc
-(NSURLSessionTask*) getProductAttributeWithAttributeId: (NSString*) attributeId
        completionHandler: (void (^)(OAIProductAttribute* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* attributeId = @"attributeId_example"; // 

OAIProductAttributeApi*apiInstance = [[OAIProductAttributeApi alloc] init];

[apiInstance getProductAttributeWithAttributeId:attributeId
          completionHandler: ^(OAIProductAttribute* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductAttributeApi->getProductAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attributeId** | **NSString***|  | 

### Return type

[**OAIProductAttribute***](OAIProductAttribute.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProductAttributes**
```objc
-(NSURLSessionTask*) listProductAttributesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    productId: (NSString*) productId
    isFilterable: (NSNumber*) isFilterable
    search: (NSString*) search
        completionHandler: (void (^)(NSArray<OAIProductAttribute>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* productId = @"productId_example"; //  (optional)
NSNumber* isFilterable = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)

OAIProductAttributeApi*apiInstance = [[OAIProductAttributeApi alloc] init];

[apiInstance listProductAttributesWithPage:page
              pageSize:pageSize
              productId:productId
              isFilterable:isFilterable
              search:search
          completionHandler: ^(NSArray<OAIProductAttribute>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductAttributeApi->listProductAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **productId** | **NSString***|  | [optional] 
 **isFilterable** | **NSNumber***|  | [optional] 
 **search** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIProductAttribute>***](OAIProductAttribute.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProductAttribute**
```objc
-(NSURLSessionTask*) updateProductAttributeWithAttributeId: (NSString*) attributeId
    productAttributeUpdate: (OAIProductAttributeUpdate*) productAttributeUpdate
        completionHandler: (void (^)(OAIProductAttribute* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* attributeId = @"attributeId_example"; // 
OAIProductAttributeUpdate* productAttributeUpdate = [[OAIProductAttributeUpdate alloc] init]; // 

OAIProductAttributeApi*apiInstance = [[OAIProductAttributeApi alloc] init];

[apiInstance updateProductAttributeWithAttributeId:attributeId
              productAttributeUpdate:productAttributeUpdate
          completionHandler: ^(OAIProductAttribute* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductAttributeApi->updateProductAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attributeId** | **NSString***|  | 
 **productAttributeUpdate** | [**OAIProductAttributeUpdate***](OAIProductAttributeUpdate.md)|  | 

### Return type

[**OAIProductAttribute***](OAIProductAttribute.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

