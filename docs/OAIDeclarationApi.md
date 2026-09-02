# OAIDeclarationApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeclaration**](OAIDeclarationApi.md#createdeclaration) | **POST** /api/v1/declarations | 
[**declarationRestore**](OAIDeclarationApi.md#declarationrestore) | **POST** /api/v1/declarations/{id}/restore | 
[**deleteDeclaration**](OAIDeclarationApi.md#deletedeclaration) | **DELETE** /api/v1/declarations/{id} | 
[**getDeclaration**](OAIDeclarationApi.md#getdeclaration) | **GET** /api/v1/declarations/{id} | 
[**getDeclarations**](OAIDeclarationApi.md#getdeclarations) | **GET** /api/v1/declarations/ | 
[**updateDeclaration**](OAIDeclarationApi.md#updatedeclaration) | **PUT** /api/v1/declarations/{id} | 


# **createDeclaration**
```objc
-(NSURLSessionTask*) createDeclarationWithDeclarationCreate: (OAIDeclarationCreate*) declarationCreate
        completionHandler: (void (^)(OAIDeclaration* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIDeclarationCreate* declarationCreate = [[OAIDeclarationCreate alloc] init]; // 

OAIDeclarationApi*apiInstance = [[OAIDeclarationApi alloc] init];

[apiInstance createDeclarationWithDeclarationCreate:declarationCreate
          completionHandler: ^(OAIDeclaration* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeclarationApi->createDeclaration: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **declarationCreate** | [**OAIDeclarationCreate***](OAIDeclarationCreate.md)|  | 

### Return type

[**OAIDeclaration***](OAIDeclaration.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **declarationRestore**
```objc
-(NSURLSessionTask*) declarationRestoreWithId: (NSString*) _id
        completionHandler: (void (^)(OAIDeclaration* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIDeclarationApi*apiInstance = [[OAIDeclarationApi alloc] init];

[apiInstance declarationRestoreWithId:_id
          completionHandler: ^(OAIDeclaration* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeclarationApi->declarationRestore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIDeclaration***](OAIDeclaration.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDeclaration**
```objc
-(NSURLSessionTask*) deleteDeclarationWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIDeclarationApi*apiInstance = [[OAIDeclarationApi alloc] init];

[apiInstance deleteDeclarationWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDeclarationApi->deleteDeclaration: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeclaration**
```objc
-(NSURLSessionTask*) getDeclarationWithId: (NSString*) _id
        completionHandler: (void (^)(OAIDeclaration* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIDeclarationApi*apiInstance = [[OAIDeclarationApi alloc] init];

[apiInstance getDeclarationWithId:_id
          completionHandler: ^(OAIDeclaration* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeclarationApi->getDeclaration: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIDeclaration***](OAIDeclaration.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeclarations**
```objc
-(NSURLSessionTask*) getDeclarationsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIDeclaration>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIDeclarationApi*apiInstance = [[OAIDeclarationApi alloc] init];

[apiInstance getDeclarationsWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIDeclaration>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeclarationApi->getDeclarations: %@", error);
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

[**NSArray<OAIDeclaration>***](OAIDeclaration.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeclaration**
```objc
-(NSURLSessionTask*) updateDeclarationWithId: (NSString*) _id
    declarationUpdate: (OAIDeclarationUpdate*) declarationUpdate
        completionHandler: (void (^)(OAIDeclaration* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAIDeclarationUpdate* declarationUpdate = [[OAIDeclarationUpdate alloc] init]; // 

OAIDeclarationApi*apiInstance = [[OAIDeclarationApi alloc] init];

[apiInstance updateDeclarationWithId:_id
              declarationUpdate:declarationUpdate
          completionHandler: ^(OAIDeclaration* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeclarationApi->updateDeclaration: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **declarationUpdate** | [**OAIDeclarationUpdate***](OAIDeclarationUpdate.md)|  | 

### Return type

[**OAIDeclaration***](OAIDeclaration.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

