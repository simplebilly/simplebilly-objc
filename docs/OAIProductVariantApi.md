# OAIProductVariantApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductVariant**](OAIProductVariantApi.md#createproductvariant) | **POST** /api/v1/product-variants | 
[**deleteProductVariant**](OAIProductVariantApi.md#deleteproductvariant) | **DELETE** /api/v1/product-variants/{variant_id} | 
[**generateProductVariants**](OAIProductVariantApi.md#generateproductvariants) | **POST** /api/v1/product-variants/generate | 
[**getProductVariant**](OAIProductVariantApi.md#getproductvariant) | **GET** /api/v1/product-variants/{variant_id} | 
[**listProductVariants**](OAIProductVariantApi.md#listproductvariants) | **GET** /api/v1/product-variants/ | 
[**updateProductVariant**](OAIProductVariantApi.md#updateproductvariant) | **PUT** /api/v1/product-variants/{variant_id} | 


# **createProductVariant**
```objc
-(NSURLSessionTask*) createProductVariantWithProductVariant: (OAIProductVariant*) productVariant
        completionHandler: (void (^)(OAIProductVariant* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIProductVariant* productVariant = [[OAIProductVariant alloc] init]; // 

OAIProductVariantApi*apiInstance = [[OAIProductVariantApi alloc] init];

[apiInstance createProductVariantWithProductVariant:productVariant
          completionHandler: ^(OAIProductVariant* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductVariantApi->createProductVariant: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productVariant** | [**OAIProductVariant***](OAIProductVariant.md)|  | 

### Return type

[**OAIProductVariant***](OAIProductVariant.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProductVariant**
```objc
-(NSURLSessionTask*) deleteProductVariantWithVariantId: (NSString*) variantId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* variantId = @"variantId_example"; // 

OAIProductVariantApi*apiInstance = [[OAIProductVariantApi alloc] init];

[apiInstance deleteProductVariantWithVariantId:variantId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIProductVariantApi->deleteProductVariant: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateProductVariants**
```objc
-(NSURLSessionTask*) generateProductVariantsWithGenerateVariantsRequest: (OAIGenerateVariantsRequest*) generateVariantsRequest
        completionHandler: (void (^)(NSArray<OAIProductVariant>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIGenerateVariantsRequest* generateVariantsRequest = [[OAIGenerateVariantsRequest alloc] init]; // 

OAIProductVariantApi*apiInstance = [[OAIProductVariantApi alloc] init];

[apiInstance generateProductVariantsWithGenerateVariantsRequest:generateVariantsRequest
          completionHandler: ^(NSArray<OAIProductVariant>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductVariantApi->generateProductVariants: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateVariantsRequest** | [**OAIGenerateVariantsRequest***](OAIGenerateVariantsRequest.md)|  | 

### Return type

[**NSArray<OAIProductVariant>***](OAIProductVariant.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductVariant**
```objc
-(NSURLSessionTask*) getProductVariantWithVariantId: (NSString*) variantId
        completionHandler: (void (^)(OAIProductVariant* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* variantId = @"variantId_example"; // 

OAIProductVariantApi*apiInstance = [[OAIProductVariantApi alloc] init];

[apiInstance getProductVariantWithVariantId:variantId
          completionHandler: ^(OAIProductVariant* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductVariantApi->getProductVariant: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **NSString***|  | 

### Return type

[**OAIProductVariant***](OAIProductVariant.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProductVariants**
```objc
-(NSURLSessionTask*) listProductVariantsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    productId: (NSString*) productId
    isActive: (NSNumber*) isActive
        completionHandler: (void (^)(NSArray<OAIProductVariant>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* productId = @"productId_example"; //  (optional)
NSNumber* isActive = @56; //  (optional)

OAIProductVariantApi*apiInstance = [[OAIProductVariantApi alloc] init];

[apiInstance listProductVariantsWithPage:page
              pageSize:pageSize
              productId:productId
              isActive:isActive
          completionHandler: ^(NSArray<OAIProductVariant>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductVariantApi->listProductVariants: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **productId** | **NSString***|  | [optional] 
 **isActive** | **NSNumber***|  | [optional] 

### Return type

[**NSArray<OAIProductVariant>***](OAIProductVariant.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProductVariant**
```objc
-(NSURLSessionTask*) updateProductVariantWithVariantId: (NSString*) variantId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIProductVariant* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* variantId = @"variantId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIProductVariantApi*apiInstance = [[OAIProductVariantApi alloc] init];

[apiInstance updateProductVariantWithVariantId:variantId
              body:body
          completionHandler: ^(OAIProductVariant* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductVariantApi->updateProductVariant: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variantId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIProductVariant***](OAIProductVariant.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

