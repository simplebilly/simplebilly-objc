# OAIServiceAssignmentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createServiceAssignment**](OAIServiceAssignmentApi.md#createserviceassignment) | **POST** /api/v1/service-assignments | 
[**deleteServiceAssignment**](OAIServiceAssignmentApi.md#deleteserviceassignment) | **DELETE** /api/v1/service-assignments/{id} | 
[**getServiceAssignment**](OAIServiceAssignmentApi.md#getserviceassignment) | **GET** /api/v1/service-assignments/{id} | 
[**getServiceAssignments**](OAIServiceAssignmentApi.md#getserviceassignments) | **GET** /api/v1/service-assignments/ | 
[**updateServiceAssignment**](OAIServiceAssignmentApi.md#updateserviceassignment) | **PUT** /api/v1/service-assignments/{id} | 


# **createServiceAssignment**
```objc
-(NSURLSessionTask*) createServiceAssignmentWithServiceAssignmentCreate: (OAIServiceAssignmentCreate*) serviceAssignmentCreate
        completionHandler: (void (^)(OAIServiceAssignment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIServiceAssignmentCreate* serviceAssignmentCreate = [[OAIServiceAssignmentCreate alloc] init]; // 

OAIServiceAssignmentApi*apiInstance = [[OAIServiceAssignmentApi alloc] init];

[apiInstance createServiceAssignmentWithServiceAssignmentCreate:serviceAssignmentCreate
          completionHandler: ^(OAIServiceAssignment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIServiceAssignmentApi->createServiceAssignment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceAssignmentCreate** | [**OAIServiceAssignmentCreate***](OAIServiceAssignmentCreate.md)|  | 

### Return type

[**OAIServiceAssignment***](OAIServiceAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteServiceAssignment**
```objc
-(NSURLSessionTask*) deleteServiceAssignmentWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIServiceAssignmentApi*apiInstance = [[OAIServiceAssignmentApi alloc] init];

[apiInstance deleteServiceAssignmentWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIServiceAssignmentApi->deleteServiceAssignment: %@", error);
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

# **getServiceAssignment**
```objc
-(NSURLSessionTask*) getServiceAssignmentWithId: (NSString*) _id
        completionHandler: (void (^)(OAIServiceAssignment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIServiceAssignmentApi*apiInstance = [[OAIServiceAssignmentApi alloc] init];

[apiInstance getServiceAssignmentWithId:_id
          completionHandler: ^(OAIServiceAssignment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIServiceAssignmentApi->getServiceAssignment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIServiceAssignment***](OAIServiceAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServiceAssignments**
```objc
-(NSURLSessionTask*) getServiceAssignmentsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIServiceAssignment>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIServiceAssignmentApi*apiInstance = [[OAIServiceAssignmentApi alloc] init];

[apiInstance getServiceAssignmentsWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIServiceAssignment>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIServiceAssignmentApi->getServiceAssignments: %@", error);
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

[**NSArray<OAIServiceAssignment>***](OAIServiceAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateServiceAssignment**
```objc
-(NSURLSessionTask*) updateServiceAssignmentWithId: (NSString*) _id
    serviceAssignmentUpdate: (OAIServiceAssignmentUpdate*) serviceAssignmentUpdate
        completionHandler: (void (^)(OAIServiceAssignment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAIServiceAssignmentUpdate* serviceAssignmentUpdate = [[OAIServiceAssignmentUpdate alloc] init]; // 

OAIServiceAssignmentApi*apiInstance = [[OAIServiceAssignmentApi alloc] init];

[apiInstance updateServiceAssignmentWithId:_id
              serviceAssignmentUpdate:serviceAssignmentUpdate
          completionHandler: ^(OAIServiceAssignment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIServiceAssignmentApi->updateServiceAssignment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **serviceAssignmentUpdate** | [**OAIServiceAssignmentUpdate***](OAIServiceAssignmentUpdate.md)|  | 

### Return type

[**OAIServiceAssignment***](OAIServiceAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

