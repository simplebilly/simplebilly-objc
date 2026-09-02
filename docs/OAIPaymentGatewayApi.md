# OAIPaymentGatewayApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPaymentGatewayApi**](OAIPaymentGatewayApi.md#createpaymentgatewayapi) | **POST** /api/v1/payment-gateways | 
[**deletePaymentGatewayApi**](OAIPaymentGatewayApi.md#deletepaymentgatewayapi) | **DELETE** /api/v1/payment-gateways/{gateway_id} | 
[**listPaymentGatewaysApi**](OAIPaymentGatewayApi.md#listpaymentgatewaysapi) | **GET** /api/v1/payment-gateways/ | 
[**oauthAuthorizeApi**](OAIPaymentGatewayApi.md#oauthauthorizeapi) | **POST** /api/v1/payment-gateways/oauth/authorize | 
[**oauthCallbackApi**](OAIPaymentGatewayApi.md#oauthcallbackapi) | **POST** /api/v1/payment-gateways/oauth/callback | 
[**updatePaymentGatewayApi**](OAIPaymentGatewayApi.md#updatepaymentgatewayapi) | **PUT** /api/v1/payment-gateways/{gateway_id} | 


# **createPaymentGatewayApi**
```objc
-(NSURLSessionTask*) createPaymentGatewayApiWithBody: (OAIAnyType*) body
        completionHandler: (void (^)(OAIPaymentGateway* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIPaymentGatewayApi*apiInstance = [[OAIPaymentGatewayApi alloc] init];

[apiInstance createPaymentGatewayApiWithBody:body
          completionHandler: ^(OAIPaymentGateway* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentGatewayApi->createPaymentGatewayApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIPaymentGateway***](OAIPaymentGateway.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePaymentGatewayApi**
```objc
-(NSURLSessionTask*) deletePaymentGatewayApiWithGatewayId: (NSString*) gatewayId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* gatewayId = @"gatewayId_example"; // 

OAIPaymentGatewayApi*apiInstance = [[OAIPaymentGatewayApi alloc] init];

[apiInstance deletePaymentGatewayApiWithGatewayId:gatewayId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPaymentGatewayApi->deletePaymentGatewayApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gatewayId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPaymentGatewaysApi**
```objc
-(NSURLSessionTask*) listPaymentGatewaysApiWithCompletionHandler: 
        (void (^)(NSArray<OAIPaymentGateway>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIPaymentGatewayApi*apiInstance = [[OAIPaymentGatewayApi alloc] init];

[apiInstance listPaymentGatewaysApiWithCompletionHandler: 
          ^(NSArray<OAIPaymentGateway>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentGatewayApi->listPaymentGatewaysApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIPaymentGateway>***](OAIPaymentGateway.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthAuthorizeApi**
```objc
-(NSURLSessionTask*) oauthAuthorizeApiWithGatewayOAuthAuthorizeRequest: (OAIGatewayOAuthAuthorizeRequest*) gatewayOAuthAuthorizeRequest
        completionHandler: (void (^)(OAIGatewayOAuthAuthorizeResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIGatewayOAuthAuthorizeRequest* gatewayOAuthAuthorizeRequest = [[OAIGatewayOAuthAuthorizeRequest alloc] init]; // 

OAIPaymentGatewayApi*apiInstance = [[OAIPaymentGatewayApi alloc] init];

[apiInstance oauthAuthorizeApiWithGatewayOAuthAuthorizeRequest:gatewayOAuthAuthorizeRequest
          completionHandler: ^(OAIGatewayOAuthAuthorizeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentGatewayApi->oauthAuthorizeApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gatewayOAuthAuthorizeRequest** | [**OAIGatewayOAuthAuthorizeRequest***](OAIGatewayOAuthAuthorizeRequest.md)|  | 

### Return type

[**OAIGatewayOAuthAuthorizeResponse***](OAIGatewayOAuthAuthorizeResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthCallbackApi**
```objc
-(NSURLSessionTask*) oauthCallbackApiWithGatewayOAuthCallbackRequest: (OAIGatewayOAuthCallbackRequest*) gatewayOAuthCallbackRequest
        completionHandler: (void (^)(OAIPaymentGateway* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIGatewayOAuthCallbackRequest* gatewayOAuthCallbackRequest = [[OAIGatewayOAuthCallbackRequest alloc] init]; // 

OAIPaymentGatewayApi*apiInstance = [[OAIPaymentGatewayApi alloc] init];

[apiInstance oauthCallbackApiWithGatewayOAuthCallbackRequest:gatewayOAuthCallbackRequest
          completionHandler: ^(OAIPaymentGateway* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentGatewayApi->oauthCallbackApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gatewayOAuthCallbackRequest** | [**OAIGatewayOAuthCallbackRequest***](OAIGatewayOAuthCallbackRequest.md)|  | 

### Return type

[**OAIPaymentGateway***](OAIPaymentGateway.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePaymentGatewayApi**
```objc
-(NSURLSessionTask*) updatePaymentGatewayApiWithGatewayId: (NSString*) gatewayId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIPaymentGateway* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* gatewayId = @"gatewayId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIPaymentGatewayApi*apiInstance = [[OAIPaymentGatewayApi alloc] init];

[apiInstance updatePaymentGatewayApiWithGatewayId:gatewayId
              body:body
          completionHandler: ^(OAIPaymentGateway* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentGatewayApi->updatePaymentGatewayApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gatewayId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIPaymentGateway***](OAIPaymentGateway.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

