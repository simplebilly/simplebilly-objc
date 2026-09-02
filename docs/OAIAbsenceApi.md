# OAIAbsenceApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAbsence**](OAIAbsenceApi.md#createabsence) | **POST** /api/v1/absences | 
[**deleteAbsence**](OAIAbsenceApi.md#deleteabsence) | **DELETE** /api/v1/absences/{id} | 
[**getAbsence**](OAIAbsenceApi.md#getabsence) | **GET** /api/v1/absences/{id} | 
[**getAbsences**](OAIAbsenceApi.md#getabsences) | **GET** /api/v1/absences/ | 
[**updateAbsence**](OAIAbsenceApi.md#updateabsence) | **PUT** /api/v1/absences/{id} | 


# **createAbsence**
```objc
-(NSURLSessionTask*) createAbsenceWithAbsenceCreate: (OAIAbsenceCreate*) absenceCreate
        completionHandler: (void (^)(OAIAbsence* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAbsenceCreate* absenceCreate = [[OAIAbsenceCreate alloc] init]; // 

OAIAbsenceApi*apiInstance = [[OAIAbsenceApi alloc] init];

[apiInstance createAbsenceWithAbsenceCreate:absenceCreate
          completionHandler: ^(OAIAbsence* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAbsenceApi->createAbsence: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **absenceCreate** | [**OAIAbsenceCreate***](OAIAbsenceCreate.md)|  | 

### Return type

[**OAIAbsence***](OAIAbsence.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAbsence**
```objc
-(NSURLSessionTask*) deleteAbsenceWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIAbsenceApi*apiInstance = [[OAIAbsenceApi alloc] init];

[apiInstance deleteAbsenceWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAbsenceApi->deleteAbsence: %@", error);
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

# **getAbsence**
```objc
-(NSURLSessionTask*) getAbsenceWithId: (NSString*) _id
        completionHandler: (void (^)(OAIAbsence* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIAbsenceApi*apiInstance = [[OAIAbsenceApi alloc] init];

[apiInstance getAbsenceWithId:_id
          completionHandler: ^(OAIAbsence* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAbsenceApi->getAbsence: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIAbsence***](OAIAbsence.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAbsences**
```objc
-(NSURLSessionTask*) getAbsencesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIAbsence>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIAbsenceApi*apiInstance = [[OAIAbsenceApi alloc] init];

[apiInstance getAbsencesWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIAbsence>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAbsenceApi->getAbsences: %@", error);
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

[**NSArray<OAIAbsence>***](OAIAbsence.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAbsence**
```objc
-(NSURLSessionTask*) updateAbsenceWithId: (NSString*) _id
    absenceUpdate: (OAIAbsenceUpdate*) absenceUpdate
        completionHandler: (void (^)(OAIAbsence* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAIAbsenceUpdate* absenceUpdate = [[OAIAbsenceUpdate alloc] init]; // 

OAIAbsenceApi*apiInstance = [[OAIAbsenceApi alloc] init];

[apiInstance updateAbsenceWithId:_id
              absenceUpdate:absenceUpdate
          completionHandler: ^(OAIAbsence* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAbsenceApi->updateAbsence: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **absenceUpdate** | [**OAIAbsenceUpdate***](OAIAbsenceUpdate.md)|  | 

### Return type

[**OAIAbsence***](OAIAbsence.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

