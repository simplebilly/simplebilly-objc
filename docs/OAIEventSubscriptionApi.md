# OAIEventSubscriptionApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEventSubscription**](OAIEventSubscriptionApi.md#createeventsubscription) | **POST** /api/v1/event-subscriptions | 
[**deleteEventSubscription**](OAIEventSubscriptionApi.md#deleteeventsubscription) | **DELETE** /api/v1/event-subscriptions/{subscription_id} | 
[**listEventSubscriptions**](OAIEventSubscriptionApi.md#listeventsubscriptions) | **GET** /api/v1/event-subscriptions/ | 


# **createEventSubscription**
```objc
-(NSURLSessionTask*) createEventSubscriptionWithBody: (OAIAnyType*) body
        completionHandler: (void (^)(OAIEventSubscription* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIEventSubscriptionApi*apiInstance = [[OAIEventSubscriptionApi alloc] init];

[apiInstance createEventSubscriptionWithBody:body
          completionHandler: ^(OAIEventSubscription* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEventSubscriptionApi->createEventSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIEventSubscription***](OAIEventSubscription.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEventSubscription**
```objc
-(NSURLSessionTask*) deleteEventSubscriptionWithSubscriptionId: (NSString*) subscriptionId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* subscriptionId = @"subscriptionId_example"; // 

OAIEventSubscriptionApi*apiInstance = [[OAIEventSubscriptionApi alloc] init];

[apiInstance deleteEventSubscriptionWithSubscriptionId:subscriptionId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEventSubscriptionApi->deleteEventSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEventSubscriptions**
```objc
-(NSURLSessionTask*) listEventSubscriptionsWithCompletionHandler: 
        (void (^)(NSArray<OAIEventSubscription>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIEventSubscriptionApi*apiInstance = [[OAIEventSubscriptionApi alloc] init];

[apiInstance listEventSubscriptionsWithCompletionHandler: 
          ^(NSArray<OAIEventSubscription>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEventSubscriptionApi->listEventSubscriptions: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIEventSubscription>***](OAIEventSubscription.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

