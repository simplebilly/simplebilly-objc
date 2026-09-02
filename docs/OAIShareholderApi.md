# OAIShareholderApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShareholder**](OAIShareholderApi.md#createshareholder) | **POST** /api/v1/shareholders | 
[**deleteShareholder**](OAIShareholderApi.md#deleteshareholder) | **DELETE** /api/v1/shareholders/{id} | 
[**getShareholder**](OAIShareholderApi.md#getshareholder) | **GET** /api/v1/shareholders/{id} | 
[**getShareholders**](OAIShareholderApi.md#getshareholders) | **GET** /api/v1/shareholders/ | 
[**updateShareholder**](OAIShareholderApi.md#updateshareholder) | **PUT** /api/v1/shareholders/{id} | 


# **createShareholder**
```objc
-(NSURLSessionTask*) createShareholderWithShareholderCreate: (OAIShareholderCreate*) shareholderCreate
        completionHandler: (void (^)(OAIShareholder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIShareholderCreate* shareholderCreate = [[OAIShareholderCreate alloc] init]; // 

OAIShareholderApi*apiInstance = [[OAIShareholderApi alloc] init];

[apiInstance createShareholderWithShareholderCreate:shareholderCreate
          completionHandler: ^(OAIShareholder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShareholderApi->createShareholder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shareholderCreate** | [**OAIShareholderCreate***](OAIShareholderCreate.md)|  | 

### Return type

[**OAIShareholder***](OAIShareholder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteShareholder**
```objc
-(NSURLSessionTask*) deleteShareholderWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIShareholderApi*apiInstance = [[OAIShareholderApi alloc] init];

[apiInstance deleteShareholderWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIShareholderApi->deleteShareholder: %@", error);
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

# **getShareholder**
```objc
-(NSURLSessionTask*) getShareholderWithId: (NSString*) _id
        completionHandler: (void (^)(OAIShareholder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIShareholderApi*apiInstance = [[OAIShareholderApi alloc] init];

[apiInstance getShareholderWithId:_id
          completionHandler: ^(OAIShareholder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShareholderApi->getShareholder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIShareholder***](OAIShareholder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShareholders**
```objc
-(NSURLSessionTask*) getShareholdersWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIShareholder>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIShareholderApi*apiInstance = [[OAIShareholderApi alloc] init];

[apiInstance getShareholdersWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIShareholder>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShareholderApi->getShareholders: %@", error);
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

[**NSArray<OAIShareholder>***](OAIShareholder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateShareholder**
```objc
-(NSURLSessionTask*) updateShareholderWithId: (NSString*) _id
    shareholderUpdate: (OAIShareholderUpdate*) shareholderUpdate
        completionHandler: (void (^)(OAIShareholder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAIShareholderUpdate* shareholderUpdate = [[OAIShareholderUpdate alloc] init]; // 

OAIShareholderApi*apiInstance = [[OAIShareholderApi alloc] init];

[apiInstance updateShareholderWithId:_id
              shareholderUpdate:shareholderUpdate
          completionHandler: ^(OAIShareholder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShareholderApi->updateShareholder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **shareholderUpdate** | [**OAIShareholderUpdate***](OAIShareholderUpdate.md)|  | 

### Return type

[**OAIShareholder***](OAIShareholder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

