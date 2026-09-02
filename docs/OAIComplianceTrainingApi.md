# OAIComplianceTrainingApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createComplianceTraining**](OAIComplianceTrainingApi.md#createcompliancetraining) | **POST** /api/v1/compliance-trainings | 
[**deleteComplianceTraining**](OAIComplianceTrainingApi.md#deletecompliancetraining) | **DELETE** /api/v1/compliance-trainings/{id} | 
[**getComplianceTraining**](OAIComplianceTrainingApi.md#getcompliancetraining) | **GET** /api/v1/compliance-trainings/{id} | 
[**getComplianceTrainings**](OAIComplianceTrainingApi.md#getcompliancetrainings) | **GET** /api/v1/compliance-trainings/ | 
[**updateComplianceTraining**](OAIComplianceTrainingApi.md#updatecompliancetraining) | **PUT** /api/v1/compliance-trainings/{id} | 


# **createComplianceTraining**
```objc
-(NSURLSessionTask*) createComplianceTrainingWithComplianceTrainingCreate: (OAIComplianceTrainingCreate*) complianceTrainingCreate
        completionHandler: (void (^)(OAIComplianceTraining* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIComplianceTrainingCreate* complianceTrainingCreate = [[OAIComplianceTrainingCreate alloc] init]; // 

OAIComplianceTrainingApi*apiInstance = [[OAIComplianceTrainingApi alloc] init];

[apiInstance createComplianceTrainingWithComplianceTrainingCreate:complianceTrainingCreate
          completionHandler: ^(OAIComplianceTraining* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIComplianceTrainingApi->createComplianceTraining: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **complianceTrainingCreate** | [**OAIComplianceTrainingCreate***](OAIComplianceTrainingCreate.md)|  | 

### Return type

[**OAIComplianceTraining***](OAIComplianceTraining.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteComplianceTraining**
```objc
-(NSURLSessionTask*) deleteComplianceTrainingWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIComplianceTrainingApi*apiInstance = [[OAIComplianceTrainingApi alloc] init];

[apiInstance deleteComplianceTrainingWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIComplianceTrainingApi->deleteComplianceTraining: %@", error);
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

# **getComplianceTraining**
```objc
-(NSURLSessionTask*) getComplianceTrainingWithId: (NSString*) _id
        completionHandler: (void (^)(OAIComplianceTraining* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIComplianceTrainingApi*apiInstance = [[OAIComplianceTrainingApi alloc] init];

[apiInstance getComplianceTrainingWithId:_id
          completionHandler: ^(OAIComplianceTraining* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIComplianceTrainingApi->getComplianceTraining: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIComplianceTraining***](OAIComplianceTraining.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComplianceTrainings**
```objc
-(NSURLSessionTask*) getComplianceTrainingsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIComplianceTraining>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIComplianceTrainingApi*apiInstance = [[OAIComplianceTrainingApi alloc] init];

[apiInstance getComplianceTrainingsWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIComplianceTraining>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIComplianceTrainingApi->getComplianceTrainings: %@", error);
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

[**NSArray<OAIComplianceTraining>***](OAIComplianceTraining.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateComplianceTraining**
```objc
-(NSURLSessionTask*) updateComplianceTrainingWithId: (NSString*) _id
    complianceTrainingUpdate: (OAIComplianceTrainingUpdate*) complianceTrainingUpdate
        completionHandler: (void (^)(OAIComplianceTraining* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAIComplianceTrainingUpdate* complianceTrainingUpdate = [[OAIComplianceTrainingUpdate alloc] init]; // 

OAIComplianceTrainingApi*apiInstance = [[OAIComplianceTrainingApi alloc] init];

[apiInstance updateComplianceTrainingWithId:_id
              complianceTrainingUpdate:complianceTrainingUpdate
          completionHandler: ^(OAIComplianceTraining* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIComplianceTrainingApi->updateComplianceTraining: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **complianceTrainingUpdate** | [**OAIComplianceTrainingUpdate***](OAIComplianceTrainingUpdate.md)|  | 

### Return type

[**OAIComplianceTraining***](OAIComplianceTraining.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

