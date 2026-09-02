# OAIServiceJobApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createServiceJob**](OAIServiceJobApi.md#createservicejob) | **POST** /api/v1/service-jobs | 
[**deleteServiceJob**](OAIServiceJobApi.md#deleteservicejob) | **DELETE** /api/v1/service-jobs/{id} | 
[**getServiceJob**](OAIServiceJobApi.md#getservicejob) | **GET** /api/v1/service-jobs/{id} | 
[**getServiceJobs**](OAIServiceJobApi.md#getservicejobs) | **GET** /api/v1/service-jobs/ | 
[**updateServiceJob**](OAIServiceJobApi.md#updateservicejob) | **PUT** /api/v1/service-jobs/{id} | 


# **createServiceJob**
```objc
-(NSURLSessionTask*) createServiceJobWithServiceJobCreate: (OAIServiceJobCreate*) serviceJobCreate
        completionHandler: (void (^)(OAIServiceJob* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIServiceJobCreate* serviceJobCreate = [[OAIServiceJobCreate alloc] init]; // 

OAIServiceJobApi*apiInstance = [[OAIServiceJobApi alloc] init];

[apiInstance createServiceJobWithServiceJobCreate:serviceJobCreate
          completionHandler: ^(OAIServiceJob* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIServiceJobApi->createServiceJob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceJobCreate** | [**OAIServiceJobCreate***](OAIServiceJobCreate.md)|  | 

### Return type

[**OAIServiceJob***](OAIServiceJob.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteServiceJob**
```objc
-(NSURLSessionTask*) deleteServiceJobWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIServiceJobApi*apiInstance = [[OAIServiceJobApi alloc] init];

[apiInstance deleteServiceJobWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIServiceJobApi->deleteServiceJob: %@", error);
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

# **getServiceJob**
```objc
-(NSURLSessionTask*) getServiceJobWithId: (NSString*) _id
        completionHandler: (void (^)(OAIServiceJob* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIServiceJobApi*apiInstance = [[OAIServiceJobApi alloc] init];

[apiInstance getServiceJobWithId:_id
          completionHandler: ^(OAIServiceJob* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIServiceJobApi->getServiceJob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIServiceJob***](OAIServiceJob.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServiceJobs**
```objc
-(NSURLSessionTask*) getServiceJobsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIServiceJob>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIServiceJobApi*apiInstance = [[OAIServiceJobApi alloc] init];

[apiInstance getServiceJobsWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIServiceJob>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIServiceJobApi->getServiceJobs: %@", error);
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

[**NSArray<OAIServiceJob>***](OAIServiceJob.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateServiceJob**
```objc
-(NSURLSessionTask*) updateServiceJobWithId: (NSString*) _id
    serviceJobUpdate: (OAIServiceJobUpdate*) serviceJobUpdate
        completionHandler: (void (^)(OAIServiceJob* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAIServiceJobUpdate* serviceJobUpdate = [[OAIServiceJobUpdate alloc] init]; // 

OAIServiceJobApi*apiInstance = [[OAIServiceJobApi alloc] init];

[apiInstance updateServiceJobWithId:_id
              serviceJobUpdate:serviceJobUpdate
          completionHandler: ^(OAIServiceJob* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIServiceJobApi->updateServiceJob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **serviceJobUpdate** | [**OAIServiceJobUpdate***](OAIServiceJobUpdate.md)|  | 

### Return type

[**OAIServiceJob***](OAIServiceJob.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

