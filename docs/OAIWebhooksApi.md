# OAIWebhooksApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubscription**](OAIWebhooksApi.md#createsubscription) | **POST** /api/v1/webhook-subscriptions | Create a webhook subscription (outbound hook).
[**deleteSubscription**](OAIWebhooksApi.md#deletesubscription) | **DELETE** /api/v1/webhook-subscriptions/{subscription_id} | Delete a webhook subscription.
[**emitApi**](OAIWebhooksApi.md#emitapi) | **POST** /api/v1/webhooks/emit | Manually fire an event against matching hooks (for testing/flows).
[**listEvent**](OAIWebhooksApi.md#listevent) | **GET** /api/v1/webhook-events | List webhook events (inbound + outbound log).
[**listSubscriptions**](OAIWebhooksApi.md#listsubscriptions) | **GET** /api/v1/webhook-subscriptions | List webhook subscriptions for the tenant.
[**updateSubscription**](OAIWebhooksApi.md#updatesubscription) | **PUT** /api/v1/webhook-subscriptions/{subscription_id} | Update a webhook subscription.


# **createSubscription**
```objc
-(NSURLSessionTask*) createSubscriptionWithCreateSubscriptionRequest: (OAICreateSubscriptionRequest*) createSubscriptionRequest
        completionHandler: (void (^)(OAIWebhookSubscription* output, NSError* error)) handler;
```

Create a webhook subscription (outbound hook).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAICreateSubscriptionRequest* createSubscriptionRequest = [[OAICreateSubscriptionRequest alloc] init]; // 

OAIWebhooksApi*apiInstance = [[OAIWebhooksApi alloc] init];

// Create a webhook subscription (outbound hook).
[apiInstance createSubscriptionWithCreateSubscriptionRequest:createSubscriptionRequest
          completionHandler: ^(OAIWebhookSubscription* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhooksApi->createSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createSubscriptionRequest** | [**OAICreateSubscriptionRequest***](OAICreateSubscriptionRequest.md)|  | 

### Return type

[**OAIWebhookSubscription***](OAIWebhookSubscription.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSubscription**
```objc
-(NSURLSessionTask*) deleteSubscriptionWithSubscriptionId: (NSString*) subscriptionId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete a webhook subscription.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* subscriptionId = @"subscriptionId_example"; // 

OAIWebhooksApi*apiInstance = [[OAIWebhooksApi alloc] init];

// Delete a webhook subscription.
[apiInstance deleteSubscriptionWithSubscriptionId:subscriptionId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIWebhooksApi->deleteSubscription: %@", error);
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emitApi**
```objc
-(NSURLSessionTask*) emitApiWithEmitEventRequest: (OAIEmitEventRequest*) emitEventRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Manually fire an event against matching hooks (for testing/flows).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIEmitEventRequest* emitEventRequest = [[OAIEmitEventRequest alloc] init]; // 

OAIWebhooksApi*apiInstance = [[OAIWebhooksApi alloc] init];

// Manually fire an event against matching hooks (for testing/flows).
[apiInstance emitApiWithEmitEventRequest:emitEventRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIWebhooksApi->emitApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emitEventRequest** | [**OAIEmitEventRequest***](OAIEmitEventRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEvent**
```objc
-(NSURLSessionTask*) listEventWithCompletionHandler: 
        (void (^)(NSArray<OAIWebhookEvent>* output, NSError* error)) handler;
```

List webhook events (inbound + outbound log).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIWebhooksApi*apiInstance = [[OAIWebhooksApi alloc] init];

// List webhook events (inbound + outbound log).
[apiInstance listEventWithCompletionHandler: 
          ^(NSArray<OAIWebhookEvent>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhooksApi->listEvent: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIWebhookEvent>***](OAIWebhookEvent.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSubscriptions**
```objc
-(NSURLSessionTask*) listSubscriptionsWithCompletionHandler: 
        (void (^)(NSArray<OAIWebhookSubscription>* output, NSError* error)) handler;
```

List webhook subscriptions for the tenant.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIWebhooksApi*apiInstance = [[OAIWebhooksApi alloc] init];

// List webhook subscriptions for the tenant.
[apiInstance listSubscriptionsWithCompletionHandler: 
          ^(NSArray<OAIWebhookSubscription>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhooksApi->listSubscriptions: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIWebhookSubscription>***](OAIWebhookSubscription.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSubscription**
```objc
-(NSURLSessionTask*) updateSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    updateSubscriptionRequest: (OAIUpdateSubscriptionRequest*) updateSubscriptionRequest
        completionHandler: (void (^)(OAIWebhookSubscription* output, NSError* error)) handler;
```

Update a webhook subscription.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* subscriptionId = @"subscriptionId_example"; // 
OAIUpdateSubscriptionRequest* updateSubscriptionRequest = [[OAIUpdateSubscriptionRequest alloc] init]; // 

OAIWebhooksApi*apiInstance = [[OAIWebhooksApi alloc] init];

// Update a webhook subscription.
[apiInstance updateSubscriptionWithSubscriptionId:subscriptionId
              updateSubscriptionRequest:updateSubscriptionRequest
          completionHandler: ^(OAIWebhookSubscription* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIWebhooksApi->updateSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***|  | 
 **updateSubscriptionRequest** | [**OAIUpdateSubscriptionRequest***](OAIUpdateSubscriptionRequest.md)|  | 

### Return type

[**OAIWebhookSubscription***](OAIWebhookSubscription.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

