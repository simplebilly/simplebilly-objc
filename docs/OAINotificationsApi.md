# OAINotificationsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteNotification**](OAINotificationsApi.md#deletenotification) | **DELETE** /api/v1/notifications/{id} | 
[**listNotifications**](OAINotificationsApi.md#listnotifications) | **GET** /api/v1/notifications | 
[**markAllRead**](OAINotificationsApi.md#markallread) | **PUT** /api/v1/notifications/read-all | 
[**markAsRead**](OAINotificationsApi.md#markasread) | **PUT** /api/v1/notifications/{id}/read | 
[**unreadCount**](OAINotificationsApi.md#unreadcount) | **GET** /api/v1/notifications/unread-count | 


# **deleteNotification**
```objc
-(NSURLSessionTask*) deleteNotificationWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAINotificationsApi*apiInstance = [[OAINotificationsApi alloc] init];

[apiInstance deleteNotificationWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAINotificationsApi->deleteNotification: %@", error);
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNotifications**
```objc
-(NSURLSessionTask*) listNotificationsWithCompletionHandler: 
        (void (^)(NSArray<OAINotificationDto>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAINotificationsApi*apiInstance = [[OAINotificationsApi alloc] init];

[apiInstance listNotificationsWithCompletionHandler: 
          ^(NSArray<OAINotificationDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINotificationsApi->listNotifications: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAINotificationDto>***](OAINotificationDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markAllRead**
```objc
-(NSURLSessionTask*) markAllReadWithCompletionHandler: 
        (void (^)(NSNumber* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAINotificationsApi*apiInstance = [[OAINotificationsApi alloc] init];

[apiInstance markAllReadWithCompletionHandler: 
          ^(NSNumber* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINotificationsApi->markAllRead: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSNumber***

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markAsRead**
```objc
-(NSURLSessionTask*) markAsReadWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAINotificationsApi*apiInstance = [[OAINotificationsApi alloc] init];

[apiInstance markAsReadWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAINotificationsApi->markAsRead: %@", error);
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unreadCount**
```objc
-(NSURLSessionTask*) unreadCountWithCompletionHandler: 
        (void (^)(NSNumber* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAINotificationsApi*apiInstance = [[OAINotificationsApi alloc] init];

[apiInstance unreadCountWithCompletionHandler: 
          ^(NSNumber* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINotificationsApi->unreadCount: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSNumber***

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

