# OAIShippingApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCredentialsApi**](OAIShippingApi.md#getcredentialsapi) | **GET** /api/v1/shipping/credentials | 
[**getRatesApi**](OAIShippingApi.md#getratesapi) | **POST** /api/v1/shipping/rates | 
[**listProvidersApi**](OAIShippingApi.md#listprovidersapi) | **GET** /api/v1/shipping/providers | 
[**saveCredentialsApi**](OAIShippingApi.md#savecredentialsapi) | **PUT** /api/v1/shipping/credentials | 


# **getCredentialsApi**
```objc
-(NSURLSessionTask*) getCredentialsApiWithCompletionHandler: 
        (void (^)(OAIShippingCredentials* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIShippingApi*apiInstance = [[OAIShippingApi alloc] init];

[apiInstance getCredentialsApiWithCompletionHandler: 
          ^(OAIShippingCredentials* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShippingApi->getCredentialsApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIShippingCredentials***](OAIShippingCredentials.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRatesApi**
```objc
-(NSURLSessionTask*) getRatesApiWithRateRequest: (OAIRateRequest*) rateRequest
        completionHandler: (void (^)(OAIRateResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIRateRequest* rateRequest = [[OAIRateRequest alloc] init]; // 

OAIShippingApi*apiInstance = [[OAIShippingApi alloc] init];

[apiInstance getRatesApiWithRateRequest:rateRequest
          completionHandler: ^(OAIRateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShippingApi->getRatesApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rateRequest** | [**OAIRateRequest***](OAIRateRequest.md)|  | 

### Return type

[**OAIRateResponse***](OAIRateResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProvidersApi**
```objc
-(NSURLSessionTask*) listProvidersApiWithCompletionHandler: 
        (void (^)(NSArray<OAIProviderInfo>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIShippingApi*apiInstance = [[OAIShippingApi alloc] init];

[apiInstance listProvidersApiWithCompletionHandler: 
          ^(NSArray<OAIProviderInfo>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShippingApi->listProvidersApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIProviderInfo>***](OAIProviderInfo.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveCredentialsApi**
```objc
-(NSURLSessionTask*) saveCredentialsApiWithShippingCredentials: (OAIShippingCredentials*) shippingCredentials
        completionHandler: (void (^)(OAIShippingCredentials* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIShippingCredentials* shippingCredentials = [[OAIShippingCredentials alloc] init]; // 

OAIShippingApi*apiInstance = [[OAIShippingApi alloc] init];

[apiInstance saveCredentialsApiWithShippingCredentials:shippingCredentials
          completionHandler: ^(OAIShippingCredentials* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIShippingApi->saveCredentialsApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shippingCredentials** | [**OAIShippingCredentials***](OAIShippingCredentials.md)|  | 

### Return type

[**OAIShippingCredentials***](OAIShippingCredentials.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

