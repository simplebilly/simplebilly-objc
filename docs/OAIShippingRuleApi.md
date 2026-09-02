# OAIShippingRuleApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShippingRule**](OAIShippingRuleApi.md#createshippingrule) | **POST** /api/v1/shipping-rules | 
[**deleteShippingRule**](OAIShippingRuleApi.md#deleteshippingrule) | **DELETE** /api/v1/shipping-rules/{rule_id} | 
[**getShippingRule**](OAIShippingRuleApi.md#getshippingrule) | **GET** /api/v1/shipping-rules/{rule_id} | 
[**listShippingRules**](OAIShippingRuleApi.md#listshippingrules) | **GET** /api/v1/shipping-rules/ | 
[**updateShippingRule**](OAIShippingRuleApi.md#updateshippingrule) | **PUT** /api/v1/shipping-rules/{rule_id} | 


# **createShippingRule**
```objc
-(NSURLSessionTask*) createShippingRuleWithShippingRuleCreate: (OAIShippingRuleCreate*) shippingRuleCreate
        completionHandler: (void (^)(OAIShippingRule* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIShippingRuleCreate* shippingRuleCreate = [[OAIShippingRuleCreate alloc] init]; // 

OAIShippingRuleApi*apiInstance = [[OAIShippingRuleApi alloc] init];

[apiInstance createShippingRuleWithShippingRuleCreate:shippingRuleCreate
          completionHandler: ^(OAIShippingRule* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShippingRuleApi->createShippingRule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shippingRuleCreate** | [**OAIShippingRuleCreate***](OAIShippingRuleCreate.md)|  | 

### Return type

[**OAIShippingRule***](OAIShippingRule.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteShippingRule**
```objc
-(NSURLSessionTask*) deleteShippingRuleWithRuleId: (NSString*) ruleId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* ruleId = @"ruleId_example"; // 

OAIShippingRuleApi*apiInstance = [[OAIShippingRuleApi alloc] init];

[apiInstance deleteShippingRuleWithRuleId:ruleId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIShippingRuleApi->deleteShippingRule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShippingRule**
```objc
-(NSURLSessionTask*) getShippingRuleWithRuleId: (NSString*) ruleId
        completionHandler: (void (^)(OAIShippingRule* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* ruleId = @"ruleId_example"; // 

OAIShippingRuleApi*apiInstance = [[OAIShippingRuleApi alloc] init];

[apiInstance getShippingRuleWithRuleId:ruleId
          completionHandler: ^(OAIShippingRule* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShippingRuleApi->getShippingRule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **NSString***|  | 

### Return type

[**OAIShippingRule***](OAIShippingRule.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listShippingRules**
```objc
-(NSURLSessionTask*) listShippingRulesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    country: (NSString*) country
        completionHandler: (void (^)(NSArray<OAIShippingRule>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* country = @"country_example"; //  (optional)

OAIShippingRuleApi*apiInstance = [[OAIShippingRuleApi alloc] init];

[apiInstance listShippingRulesWithPage:page
              pageSize:pageSize
              country:country
          completionHandler: ^(NSArray<OAIShippingRule>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShippingRuleApi->listShippingRules: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **country** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIShippingRule>***](OAIShippingRule.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateShippingRule**
```objc
-(NSURLSessionTask*) updateShippingRuleWithRuleId: (NSString*) ruleId
    shippingRuleUpdate: (OAIShippingRuleUpdate*) shippingRuleUpdate
        completionHandler: (void (^)(OAIShippingRule* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* ruleId = @"ruleId_example"; // 
OAIShippingRuleUpdate* shippingRuleUpdate = [[OAIShippingRuleUpdate alloc] init]; // 

OAIShippingRuleApi*apiInstance = [[OAIShippingRuleApi alloc] init];

[apiInstance updateShippingRuleWithRuleId:ruleId
              shippingRuleUpdate:shippingRuleUpdate
          completionHandler: ^(OAIShippingRule* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShippingRuleApi->updateShippingRule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **NSString***|  | 
 **shippingRuleUpdate** | [**OAIShippingRuleUpdate***](OAIShippingRuleUpdate.md)|  | 

### Return type

[**OAIShippingRule***](OAIShippingRule.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

