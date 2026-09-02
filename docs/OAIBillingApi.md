# OAIBillingApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPlans**](OAIBillingApi.md#getplans) | **GET** /api/v1/plans | All canonical plans (free/starter/business/enterprise) — the single source of truth lives in &#x60;crate::saasy::plans&#x60;, matching marketing.
[**getQuotaApi**](OAIBillingApi.md#getquotaapi) | **GET** /api/v1/quota | Effective limits + current usage for the calling tenant.
[**getSubscriptionApi**](OAIBillingApi.md#getsubscriptionapi) | **GET** /api/v1/subscription | 
[**getUsageApi**](OAIBillingApi.md#getusageapi) | **GET** /api/v1/usage | 
[**paddleSubscriptionWebhook**](OAIBillingApi.md#paddlesubscriptionwebhook) | **POST** /api/webhooks/paddle/subscription | Paddle Billing subscription webhook. Verifies the &#x60;Paddle-Signature&#x60; header (HMAC-SHA256 over &#x60;\&quot;{ts}:{raw_body}\&quot;&#x60; with the webhook secret), then updates &#x60;billing_info&#x60; and &#x60;tenants.plan&#x60; for the tenant identified by the subscription &#x60;custom_data&#x60; (JSON &#x60;{\&quot;tenant_id\&quot;: \&quot;...\&quot;}&#x60; or a bare tenant UUID).
[**putQuotaApi**](OAIBillingApi.md#putquotaapi) | **PUT** /api/v1/quota | Write the per-tenant quota override (&#x60;admin:settings&#x60;). An empty object clears the override.


# **getPlans**
```objc
-(NSURLSessionTask*) getPlansWithCompletionHandler: 
        (void (^)(OAIApiResponseVecPlan* output, NSError* error)) handler;
```

All canonical plans (free/starter/business/enterprise) — the single source of truth lives in `crate::saasy::plans`, matching marketing.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIBillingApi*apiInstance = [[OAIBillingApi alloc] init];

// All canonical plans (free/starter/business/enterprise) — the single source of truth lives in `crate::saasy::plans`, matching marketing.
[apiInstance getPlansWithCompletionHandler: 
          ^(OAIApiResponseVecPlan* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBillingApi->getPlans: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIApiResponseVecPlan***](OAIApiResponseVecPlan.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuotaApi**
```objc
-(NSURLSessionTask*) getQuotaApiWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Effective limits + current usage for the calling tenant.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIBillingApi*apiInstance = [[OAIBillingApi alloc] init];

// Effective limits + current usage for the calling tenant.
[apiInstance getQuotaApiWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIBillingApi->getQuotaApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionApi**
```objc
-(NSURLSessionTask*) getSubscriptionApiWithCompletionHandler: 
        (void (^)(OAIApiResponseSubscriptionOverview* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIBillingApi*apiInstance = [[OAIBillingApi alloc] init];

[apiInstance getSubscriptionApiWithCompletionHandler: 
          ^(OAIApiResponseSubscriptionOverview* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBillingApi->getSubscriptionApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIApiResponseSubscriptionOverview***](OAIApiResponseSubscriptionOverview.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsageApi**
```objc
-(NSURLSessionTask*) getUsageApiWithMeter: (NSString*) meter
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* meter = @"meter_example"; //  (optional)

OAIBillingApi*apiInstance = [[OAIBillingApi alloc] init];

[apiInstance getUsageApiWithMeter:meter
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIBillingApi->getUsageApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meter** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paddleSubscriptionWebhook**
```objc
-(NSURLSessionTask*) paddleSubscriptionWebhookWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Paddle Billing subscription webhook. Verifies the `Paddle-Signature` header (HMAC-SHA256 over `\"{ts}:{raw_body}\"` with the webhook secret), then updates `billing_info` and `tenants.plan` for the tenant identified by the subscription `custom_data` (JSON `{\"tenant_id\": \"...\"}` or a bare tenant UUID).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIBillingApi*apiInstance = [[OAIBillingApi alloc] init];

// Paddle Billing subscription webhook. Verifies the `Paddle-Signature` header (HMAC-SHA256 over `\"{ts}:{raw_body}\"` with the webhook secret), then updates `billing_info` and `tenants.plan` for the tenant identified by the subscription `custom_data` (JSON `{\"tenant_id\": \"...\"}` or a bare tenant UUID).
[apiInstance paddleSubscriptionWebhookWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIBillingApi->paddleSubscriptionWebhook: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putQuotaApi**
```objc
-(NSURLSessionTask*) putQuotaApiWithQuotaOverride: (OAIQuotaOverride*) quotaOverride
        completionHandler: (void (^)(NSError* error)) handler;
```

Write the per-tenant quota override (`admin:settings`). An empty object clears the override.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIQuotaOverride* quotaOverride = [[OAIQuotaOverride alloc] init]; // 

OAIBillingApi*apiInstance = [[OAIBillingApi alloc] init];

// Write the per-tenant quota override (`admin:settings`). An empty object clears the override.
[apiInstance putQuotaApiWithQuotaOverride:quotaOverride
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIBillingApi->putQuotaApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotaOverride** | [**OAIQuotaOverride***](OAIQuotaOverride.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

