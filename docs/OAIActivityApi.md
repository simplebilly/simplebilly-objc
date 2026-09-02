# OAIActivityApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createActivity**](OAIActivityApi.md#createactivity) | **POST** /api/v1/activities | 
[**deleteActivity**](OAIActivityApi.md#deleteactivity) | **DELETE** /api/v1/activities/{activity_id} | 
[**getActivity**](OAIActivityApi.md#getactivity) | **GET** /api/v1/activities/{activity_id} | 
[**listActivities**](OAIActivityApi.md#listactivities) | **GET** /api/v1/activities/ | 
[**updateActivity**](OAIActivityApi.md#updateactivity) | **PUT** /api/v1/activities/{activity_id} | 
[**updateActivityStatus**](OAIActivityApi.md#updateactivitystatus) | **PUT** /api/v1/activities/{activity_id}/status | 


# **createActivity**
```objc
-(NSURLSessionTask*) createActivityWithActivity: (OAIActivity*) activity
        completionHandler: (void (^)(OAIActivity* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIActivity* activity = [[OAIActivity alloc] init]; // 

OAIActivityApi*apiInstance = [[OAIActivityApi alloc] init];

[apiInstance createActivityWithActivity:activity
          completionHandler: ^(OAIActivity* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIActivityApi->createActivity: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity** | [**OAIActivity***](OAIActivity.md)|  | 

### Return type

[**OAIActivity***](OAIActivity.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteActivity**
```objc
-(NSURLSessionTask*) deleteActivityWithActivityId: (NSString*) activityId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* activityId = @"activityId_example"; // 

OAIActivityApi*apiInstance = [[OAIActivityApi alloc] init];

[apiInstance deleteActivityWithActivityId:activityId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIActivityApi->deleteActivity: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActivity**
```objc
-(NSURLSessionTask*) getActivityWithActivityId: (NSString*) activityId
        completionHandler: (void (^)(OAIActivity* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* activityId = @"activityId_example"; // 

OAIActivityApi*apiInstance = [[OAIActivityApi alloc] init];

[apiInstance getActivityWithActivityId:activityId
          completionHandler: ^(OAIActivity* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIActivityApi->getActivity: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **NSString***|  | 

### Return type

[**OAIActivity***](OAIActivity.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listActivities**
```objc
-(NSURLSessionTask*) listActivitiesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    contactId: (NSString*) contactId
    activityType: (NSString*) activityType
    status: (NSString*) status
    assignedTo: (NSString*) assignedTo
    overdueOnly: (NSNumber*) overdueOnly
        completionHandler: (void (^)(NSArray<OAIActivity>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* contactId = @"contactId_example"; //  (optional)
NSString* activityType = @"activityType_example"; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSString* assignedTo = @"assignedTo_example"; //  (optional)
NSNumber* overdueOnly = @56; // Only show overdue follow-ups. (optional)

OAIActivityApi*apiInstance = [[OAIActivityApi alloc] init];

[apiInstance listActivitiesWithPage:page
              pageSize:pageSize
              contactId:contactId
              activityType:activityType
              status:status
              assignedTo:assignedTo
              overdueOnly:overdueOnly
          completionHandler: ^(NSArray<OAIActivity>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIActivityApi->listActivities: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **contactId** | **NSString***|  | [optional] 
 **activityType** | **NSString***|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **assignedTo** | **NSString***|  | [optional] 
 **overdueOnly** | **NSNumber***| Only show overdue follow-ups. | [optional] 

### Return type

[**NSArray<OAIActivity>***](OAIActivity.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateActivity**
```objc
-(NSURLSessionTask*) updateActivityWithActivityId: (NSString*) activityId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIActivity* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* activityId = @"activityId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIActivityApi*apiInstance = [[OAIActivityApi alloc] init];

[apiInstance updateActivityWithActivityId:activityId
              body:body
          completionHandler: ^(OAIActivity* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIActivityApi->updateActivity: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIActivity***](OAIActivity.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateActivityStatus**
```objc
-(NSURLSessionTask*) updateActivityStatusWithActivityId: (NSString*) activityId
    activityStatusUpdate: (OAIActivityStatusUpdate*) activityStatusUpdate
        completionHandler: (void (^)(OAIActivity* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* activityId = @"activityId_example"; // 
OAIActivityStatusUpdate* activityStatusUpdate = [[OAIActivityStatusUpdate alloc] init]; // 

OAIActivityApi*apiInstance = [[OAIActivityApi alloc] init];

[apiInstance updateActivityStatusWithActivityId:activityId
              activityStatusUpdate:activityStatusUpdate
          completionHandler: ^(OAIActivity* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIActivityApi->updateActivityStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **NSString***|  | 
 **activityStatusUpdate** | [**OAIActivityStatusUpdate***](OAIActivityStatusUpdate.md)|  | 

### Return type

[**OAIActivity***](OAIActivity.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

