# OAIKycRecordApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createKycRecord**](OAIKycRecordApi.md#createkycrecord) | **POST** /api/v1/kyc-records | 
[**deleteKycRecord**](OAIKycRecordApi.md#deletekycrecord) | **DELETE** /api/v1/kyc-records/{id} | 
[**getKycRecord**](OAIKycRecordApi.md#getkycrecord) | **GET** /api/v1/kyc-records/{id} | 
[**getKycRecords**](OAIKycRecordApi.md#getkycrecords) | **GET** /api/v1/kyc-records/ | 
[**updateKycRecord**](OAIKycRecordApi.md#updatekycrecord) | **PUT** /api/v1/kyc-records/{id} | 


# **createKycRecord**
```objc
-(NSURLSessionTask*) createKycRecordWithKycRecordCreate: (OAIKycRecordCreate*) kycRecordCreate
        completionHandler: (void (^)(OAIKycRecord* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIKycRecordCreate* kycRecordCreate = [[OAIKycRecordCreate alloc] init]; // 

OAIKycRecordApi*apiInstance = [[OAIKycRecordApi alloc] init];

[apiInstance createKycRecordWithKycRecordCreate:kycRecordCreate
          completionHandler: ^(OAIKycRecord* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIKycRecordApi->createKycRecord: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kycRecordCreate** | [**OAIKycRecordCreate***](OAIKycRecordCreate.md)|  | 

### Return type

[**OAIKycRecord***](OAIKycRecord.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteKycRecord**
```objc
-(NSURLSessionTask*) deleteKycRecordWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIKycRecordApi*apiInstance = [[OAIKycRecordApi alloc] init];

[apiInstance deleteKycRecordWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIKycRecordApi->deleteKycRecord: %@", error);
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

# **getKycRecord**
```objc
-(NSURLSessionTask*) getKycRecordWithId: (NSString*) _id
        completionHandler: (void (^)(OAIKycRecord* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIKycRecordApi*apiInstance = [[OAIKycRecordApi alloc] init];

[apiInstance getKycRecordWithId:_id
          completionHandler: ^(OAIKycRecord* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIKycRecordApi->getKycRecord: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIKycRecord***](OAIKycRecord.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getKycRecords**
```objc
-(NSURLSessionTask*) getKycRecordsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIKycRecord>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIKycRecordApi*apiInstance = [[OAIKycRecordApi alloc] init];

[apiInstance getKycRecordsWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIKycRecord>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIKycRecordApi->getKycRecords: %@", error);
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

[**NSArray<OAIKycRecord>***](OAIKycRecord.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateKycRecord**
```objc
-(NSURLSessionTask*) updateKycRecordWithId: (NSString*) _id
    kycRecordUpdate: (OAIKycRecordUpdate*) kycRecordUpdate
        completionHandler: (void (^)(OAIKycRecord* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAIKycRecordUpdate* kycRecordUpdate = [[OAIKycRecordUpdate alloc] init]; // 

OAIKycRecordApi*apiInstance = [[OAIKycRecordApi alloc] init];

[apiInstance updateKycRecordWithId:_id
              kycRecordUpdate:kycRecordUpdate
          completionHandler: ^(OAIKycRecord* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIKycRecordApi->updateKycRecord: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **kycRecordUpdate** | [**OAIKycRecordUpdate***](OAIKycRecordUpdate.md)|  | 

### Return type

[**OAIKycRecord***](OAIKycRecord.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

