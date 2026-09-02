# OAIProductCategoryApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductCategory**](OAIProductCategoryApi.md#createproductcategory) | **POST** /api/v1/product-categories | 
[**deleteProductCategory**](OAIProductCategoryApi.md#deleteproductcategory) | **DELETE** /api/v1/product-categories/{category_id} | 
[**getProductCategory**](OAIProductCategoryApi.md#getproductcategory) | **GET** /api/v1/product-categories/{category_id} | 
[**listProductCategories**](OAIProductCategoryApi.md#listproductcategories) | **GET** /api/v1/product-categories | 
[**updateProductCategory**](OAIProductCategoryApi.md#updateproductcategory) | **PUT** /api/v1/product-categories/{category_id} | 


# **createProductCategory**
```objc
-(NSURLSessionTask*) createProductCategoryWithProductCategory: (OAIProductCategory*) productCategory
        completionHandler: (void (^)(OAIProductCategory* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIProductCategory* productCategory = [[OAIProductCategory alloc] init]; // 

OAIProductCategoryApi*apiInstance = [[OAIProductCategoryApi alloc] init];

[apiInstance createProductCategoryWithProductCategory:productCategory
          completionHandler: ^(OAIProductCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductCategoryApi->createProductCategory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productCategory** | [**OAIProductCategory***](OAIProductCategory.md)|  | 

### Return type

[**OAIProductCategory***](OAIProductCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProductCategory**
```objc
-(NSURLSessionTask*) deleteProductCategoryWithCategoryId: (NSString*) categoryId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* categoryId = @"categoryId_example"; // 

OAIProductCategoryApi*apiInstance = [[OAIProductCategoryApi alloc] init];

[apiInstance deleteProductCategoryWithCategoryId:categoryId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIProductCategoryApi->deleteProductCategory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductCategory**
```objc
-(NSURLSessionTask*) getProductCategoryWithCategoryId: (NSString*) categoryId
        completionHandler: (void (^)(OAIProductCategory* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* categoryId = @"categoryId_example"; // 

OAIProductCategoryApi*apiInstance = [[OAIProductCategoryApi alloc] init];

[apiInstance getProductCategoryWithCategoryId:categoryId
          completionHandler: ^(OAIProductCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductCategoryApi->getProductCategory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **NSString***|  | 

### Return type

[**OAIProductCategory***](OAIProductCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProductCategories**
```objc
-(NSURLSessionTask*) listProductCategoriesWithCompletionHandler: 
        (void (^)(NSArray<OAIProductCategory>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIProductCategoryApi*apiInstance = [[OAIProductCategoryApi alloc] init];

[apiInstance listProductCategoriesWithCompletionHandler: 
          ^(NSArray<OAIProductCategory>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductCategoryApi->listProductCategories: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIProductCategory>***](OAIProductCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProductCategory**
```objc
-(NSURLSessionTask*) updateProductCategoryWithCategoryId: (NSString*) categoryId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIProductCategory* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* categoryId = @"categoryId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIProductCategoryApi*apiInstance = [[OAIProductCategoryApi alloc] init];

[apiInstance updateProductCategoryWithCategoryId:categoryId
              body:body
          completionHandler: ^(OAIProductCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProductCategoryApi->updateProductCategory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIProductCategory***](OAIProductCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

