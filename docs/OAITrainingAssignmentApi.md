# OAITrainingAssignmentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTrainingAssignment**](OAITrainingAssignmentApi.md#createtrainingassignment) | **POST** /api/v1/training-assignments | 
[**deleteTrainingAssignment**](OAITrainingAssignmentApi.md#deletetrainingassignment) | **DELETE** /api/v1/training-assignments/{id} | 
[**getTrainingAssignment**](OAITrainingAssignmentApi.md#gettrainingassignment) | **GET** /api/v1/training-assignments/{id} | 
[**getTrainingAssignments**](OAITrainingAssignmentApi.md#gettrainingassignments) | **GET** /api/v1/training-assignments/ | 
[**updateTrainingAssignment**](OAITrainingAssignmentApi.md#updatetrainingassignment) | **PUT** /api/v1/training-assignments/{id} | 


# **createTrainingAssignment**
```objc
-(NSURLSessionTask*) createTrainingAssignmentWithTrainingAssignmentCreate: (OAITrainingAssignmentCreate*) trainingAssignmentCreate
        completionHandler: (void (^)(OAITrainingAssignment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAITrainingAssignmentCreate* trainingAssignmentCreate = [[OAITrainingAssignmentCreate alloc] init]; // 

OAITrainingAssignmentApi*apiInstance = [[OAITrainingAssignmentApi alloc] init];

[apiInstance createTrainingAssignmentWithTrainingAssignmentCreate:trainingAssignmentCreate
          completionHandler: ^(OAITrainingAssignment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITrainingAssignmentApi->createTrainingAssignment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trainingAssignmentCreate** | [**OAITrainingAssignmentCreate***](OAITrainingAssignmentCreate.md)|  | 

### Return type

[**OAITrainingAssignment***](OAITrainingAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTrainingAssignment**
```objc
-(NSURLSessionTask*) deleteTrainingAssignmentWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAITrainingAssignmentApi*apiInstance = [[OAITrainingAssignmentApi alloc] init];

[apiInstance deleteTrainingAssignmentWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAITrainingAssignmentApi->deleteTrainingAssignment: %@", error);
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

# **getTrainingAssignment**
```objc
-(NSURLSessionTask*) getTrainingAssignmentWithId: (NSString*) _id
        completionHandler: (void (^)(OAITrainingAssignment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAITrainingAssignmentApi*apiInstance = [[OAITrainingAssignmentApi alloc] init];

[apiInstance getTrainingAssignmentWithId:_id
          completionHandler: ^(OAITrainingAssignment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITrainingAssignmentApi->getTrainingAssignment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAITrainingAssignment***](OAITrainingAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrainingAssignments**
```objc
-(NSURLSessionTask*) getTrainingAssignmentsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAITrainingAssignment>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAITrainingAssignmentApi*apiInstance = [[OAITrainingAssignmentApi alloc] init];

[apiInstance getTrainingAssignmentsWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAITrainingAssignment>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITrainingAssignmentApi->getTrainingAssignments: %@", error);
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

[**NSArray<OAITrainingAssignment>***](OAITrainingAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTrainingAssignment**
```objc
-(NSURLSessionTask*) updateTrainingAssignmentWithId: (NSString*) _id
    trainingAssignmentUpdate: (OAITrainingAssignmentUpdate*) trainingAssignmentUpdate
        completionHandler: (void (^)(OAITrainingAssignment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAITrainingAssignmentUpdate* trainingAssignmentUpdate = [[OAITrainingAssignmentUpdate alloc] init]; // 

OAITrainingAssignmentApi*apiInstance = [[OAITrainingAssignmentApi alloc] init];

[apiInstance updateTrainingAssignmentWithId:_id
              trainingAssignmentUpdate:trainingAssignmentUpdate
          completionHandler: ^(OAITrainingAssignment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITrainingAssignmentApi->updateTrainingAssignment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **trainingAssignmentUpdate** | [**OAITrainingAssignmentUpdate***](OAITrainingAssignmentUpdate.md)|  | 

### Return type

[**OAITrainingAssignment***](OAITrainingAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

