# OAIParticipationApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createParticipation**](OAIParticipationApi.md#createparticipation) | **POST** /api/v1/participations | 
[**deleteParticipation**](OAIParticipationApi.md#deleteparticipation) | **DELETE** /api/v1/participations/{id} | 
[**getParticipation**](OAIParticipationApi.md#getparticipation) | **GET** /api/v1/participations/{id} | 
[**getParticipations**](OAIParticipationApi.md#getparticipations) | **GET** /api/v1/participations/ | 
[**updateParticipation**](OAIParticipationApi.md#updateparticipation) | **PUT** /api/v1/participations/{id} | 


# **createParticipation**
```objc
-(NSURLSessionTask*) createParticipationWithParticipationCreate: (OAIParticipationCreate*) participationCreate
        completionHandler: (void (^)(OAIParticipation* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIParticipationCreate* participationCreate = [[OAIParticipationCreate alloc] init]; // 

OAIParticipationApi*apiInstance = [[OAIParticipationApi alloc] init];

[apiInstance createParticipationWithParticipationCreate:participationCreate
          completionHandler: ^(OAIParticipation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIParticipationApi->createParticipation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **participationCreate** | [**OAIParticipationCreate***](OAIParticipationCreate.md)|  | 

### Return type

[**OAIParticipation***](OAIParticipation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteParticipation**
```objc
-(NSURLSessionTask*) deleteParticipationWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIParticipationApi*apiInstance = [[OAIParticipationApi alloc] init];

[apiInstance deleteParticipationWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIParticipationApi->deleteParticipation: %@", error);
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

# **getParticipation**
```objc
-(NSURLSessionTask*) getParticipationWithId: (NSString*) _id
        completionHandler: (void (^)(OAIParticipation* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIParticipationApi*apiInstance = [[OAIParticipationApi alloc] init];

[apiInstance getParticipationWithId:_id
          completionHandler: ^(OAIParticipation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIParticipationApi->getParticipation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIParticipation***](OAIParticipation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getParticipations**
```objc
-(NSURLSessionTask*) getParticipationsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIParticipation>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIParticipationApi*apiInstance = [[OAIParticipationApi alloc] init];

[apiInstance getParticipationsWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIParticipation>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIParticipationApi->getParticipations: %@", error);
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

[**NSArray<OAIParticipation>***](OAIParticipation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateParticipation**
```objc
-(NSURLSessionTask*) updateParticipationWithId: (NSString*) _id
    participationUpdate: (OAIParticipationUpdate*) participationUpdate
        completionHandler: (void (^)(OAIParticipation* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAIParticipationUpdate* participationUpdate = [[OAIParticipationUpdate alloc] init]; // 

OAIParticipationApi*apiInstance = [[OAIParticipationApi alloc] init];

[apiInstance updateParticipationWithId:_id
              participationUpdate:participationUpdate
          completionHandler: ^(OAIParticipation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIParticipationApi->updateParticipation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **participationUpdate** | [**OAIParticipationUpdate***](OAIParticipationUpdate.md)|  | 

### Return type

[**OAIParticipation***](OAIParticipation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

