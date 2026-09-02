# OAIPostingCategoryApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPostingCategory**](OAIPostingCategoryApi.md#createpostingcategory) | **POST** /api/v1/posting-categories | 
[**deletePostingCategory**](OAIPostingCategoryApi.md#deletepostingcategory) | **DELETE** /api/v1/posting-categories/{category_id} | 
[**listPostingCategories**](OAIPostingCategoryApi.md#listpostingcategories) | **GET** /api/v1/posting-categories | 
[**seedPostingCategories**](OAIPostingCategoryApi.md#seedpostingcategories) | **POST** /api/v1/posting-categories/seed/{skr_version} | 
[**updatePostingCategory**](OAIPostingCategoryApi.md#updatepostingcategory) | **PUT** /api/v1/posting-categories/{category_id} | 


# **createPostingCategory**
```objc
-(NSURLSessionTask*) createPostingCategoryWithBody: (OAIAnyType*) body
        completionHandler: (void (^)(OAIPostingCategory* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIPostingCategoryApi*apiInstance = [[OAIPostingCategoryApi alloc] init];

[apiInstance createPostingCategoryWithBody:body
          completionHandler: ^(OAIPostingCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPostingCategoryApi->createPostingCategory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIPostingCategory***](OAIPostingCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePostingCategory**
```objc
-(NSURLSessionTask*) deletePostingCategoryWithCategoryId: (NSString*) categoryId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* categoryId = @"categoryId_example"; // 

OAIPostingCategoryApi*apiInstance = [[OAIPostingCategoryApi alloc] init];

[apiInstance deletePostingCategoryWithCategoryId:categoryId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPostingCategoryApi->deletePostingCategory: %@", error);
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

# **listPostingCategories**
```objc
-(NSURLSessionTask*) listPostingCategoriesWithCompletionHandler: 
        (void (^)(NSArray<OAIPostingCategory>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIPostingCategoryApi*apiInstance = [[OAIPostingCategoryApi alloc] init];

[apiInstance listPostingCategoriesWithCompletionHandler: 
          ^(NSArray<OAIPostingCategory>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPostingCategoryApi->listPostingCategories: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIPostingCategory>***](OAIPostingCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **seedPostingCategories**
```objc
-(NSURLSessionTask*) seedPostingCategoriesWithSkrVersion: (NSString*) skrVersion
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* skrVersion = @"skrVersion_example"; // 

OAIPostingCategoryApi*apiInstance = [[OAIPostingCategoryApi alloc] init];

[apiInstance seedPostingCategoriesWithSkrVersion:skrVersion
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPostingCategoryApi->seedPostingCategories: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skrVersion** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePostingCategory**
```objc
-(NSURLSessionTask*) updatePostingCategoryWithCategoryId: (NSString*) categoryId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIPostingCategory* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* categoryId = @"categoryId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIPostingCategoryApi*apiInstance = [[OAIPostingCategoryApi alloc] init];

[apiInstance updatePostingCategoryWithCategoryId:categoryId
              body:body
          completionHandler: ^(OAIPostingCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPostingCategoryApi->updatePostingCategory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIPostingCategory***](OAIPostingCategory.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

