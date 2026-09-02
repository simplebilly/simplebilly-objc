# OAITenantSettingsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTenantSettings**](OAITenantSettingsApi.md#gettenantsettings) | **GET** /api/v1/settings/tenant | 
[**updateTenantSettings**](OAITenantSettingsApi.md#updatetenantsettings) | **PUT** /api/v1/settings/tenant | 


# **getTenantSettings**
```objc
-(NSURLSessionTask*) getTenantSettingsWithCompletionHandler: 
        (void (^)(OAITenantSettings* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAITenantSettingsApi*apiInstance = [[OAITenantSettingsApi alloc] init];

[apiInstance getTenantSettingsWithCompletionHandler: 
          ^(OAITenantSettings* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITenantSettingsApi->getTenantSettings: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAITenantSettings***](OAITenantSettings.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTenantSettings**
```objc
-(NSURLSessionTask*) updateTenantSettingsWithUpdateTenantSettings: (OAIUpdateTenantSettings*) updateTenantSettings
        completionHandler: (void (^)(OAITenantSettings* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIUpdateTenantSettings* updateTenantSettings = [[OAIUpdateTenantSettings alloc] init]; // 

OAITenantSettingsApi*apiInstance = [[OAITenantSettingsApi alloc] init];

[apiInstance updateTenantSettingsWithUpdateTenantSettings:updateTenantSettings
          completionHandler: ^(OAITenantSettings* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITenantSettingsApi->updateTenantSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateTenantSettings** | [**OAIUpdateTenantSettings***](OAIUpdateTenantSettings.md)|  | 

### Return type

[**OAITenantSettings***](OAITenantSettings.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

