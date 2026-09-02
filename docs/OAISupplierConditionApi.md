# OAISupplierConditionApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSupplierCondition**](OAISupplierConditionApi.md#createsuppliercondition) | **POST** /api/v1/supplier-conditions | 
[**deleteSupplierCondition**](OAISupplierConditionApi.md#deletesuppliercondition) | **DELETE** /api/v1/supplier-conditions/{supplier_condition_id} | 
[**getSupplierCondition**](OAISupplierConditionApi.md#getsuppliercondition) | **GET** /api/v1/supplier-conditions/{supplier_condition_id} | 
[**listSupplierConditions**](OAISupplierConditionApi.md#listsupplierconditions) | **GET** /api/v1/supplier-conditions/ | 
[**updateSupplierCondition**](OAISupplierConditionApi.md#updatesuppliercondition) | **PUT** /api/v1/supplier-conditions/{supplier_condition_id} | 


# **createSupplierCondition**
```objc
-(NSURLSessionTask*) createSupplierConditionWithSupplierConditionCreate: (OAISupplierConditionCreate*) supplierConditionCreate
        completionHandler: (void (^)(OAISupplierCondition* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAISupplierConditionCreate* supplierConditionCreate = [[OAISupplierConditionCreate alloc] init]; // 

OAISupplierConditionApi*apiInstance = [[OAISupplierConditionApi alloc] init];

[apiInstance createSupplierConditionWithSupplierConditionCreate:supplierConditionCreate
          completionHandler: ^(OAISupplierCondition* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupplierConditionApi->createSupplierCondition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierConditionCreate** | [**OAISupplierConditionCreate***](OAISupplierConditionCreate.md)|  | 

### Return type

[**OAISupplierCondition***](OAISupplierCondition.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSupplierCondition**
```objc
-(NSURLSessionTask*) deleteSupplierConditionWithSupplierConditionId: (NSString*) supplierConditionId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* supplierConditionId = @"supplierConditionId_example"; // 

OAISupplierConditionApi*apiInstance = [[OAISupplierConditionApi alloc] init];

[apiInstance deleteSupplierConditionWithSupplierConditionId:supplierConditionId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAISupplierConditionApi->deleteSupplierCondition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierConditionId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSupplierCondition**
```objc
-(NSURLSessionTask*) getSupplierConditionWithSupplierConditionId: (NSString*) supplierConditionId
        completionHandler: (void (^)(OAISupplierCondition* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* supplierConditionId = @"supplierConditionId_example"; // 

OAISupplierConditionApi*apiInstance = [[OAISupplierConditionApi alloc] init];

[apiInstance getSupplierConditionWithSupplierConditionId:supplierConditionId
          completionHandler: ^(OAISupplierCondition* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupplierConditionApi->getSupplierCondition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierConditionId** | **NSString***|  | 

### Return type

[**OAISupplierCondition***](OAISupplierCondition.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSupplierConditions**
```objc
-(NSURLSessionTask*) listSupplierConditionsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    supplierContactId: (NSString*) supplierContactId
    search: (NSString*) search
        completionHandler: (void (^)(NSArray<OAISupplierCondition>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* supplierContactId = @"supplierContactId_example"; //  (optional)
NSString* search = @"search_example"; //  (optional)

OAISupplierConditionApi*apiInstance = [[OAISupplierConditionApi alloc] init];

[apiInstance listSupplierConditionsWithPage:page
              pageSize:pageSize
              supplierContactId:supplierContactId
              search:search
          completionHandler: ^(NSArray<OAISupplierCondition>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupplierConditionApi->listSupplierConditions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **supplierContactId** | **NSString***|  | [optional] 
 **search** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAISupplierCondition>***](OAISupplierCondition.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSupplierCondition**
```objc
-(NSURLSessionTask*) updateSupplierConditionWithSupplierConditionId: (NSString*) supplierConditionId
    supplierConditionUpdate: (OAISupplierConditionUpdate*) supplierConditionUpdate
        completionHandler: (void (^)(OAISupplierCondition* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* supplierConditionId = @"supplierConditionId_example"; // 
OAISupplierConditionUpdate* supplierConditionUpdate = [[OAISupplierConditionUpdate alloc] init]; // 

OAISupplierConditionApi*apiInstance = [[OAISupplierConditionApi alloc] init];

[apiInstance updateSupplierConditionWithSupplierConditionId:supplierConditionId
              supplierConditionUpdate:supplierConditionUpdate
          completionHandler: ^(OAISupplierCondition* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupplierConditionApi->updateSupplierCondition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierConditionId** | **NSString***|  | 
 **supplierConditionUpdate** | [**OAISupplierConditionUpdate***](OAISupplierConditionUpdate.md)|  | 

### Return type

[**OAISupplierCondition***](OAISupplierCondition.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

