# OAIOnlineshopApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSmtpConfigApi**](OAIOnlineshopApi.md#getsmtpconfigapi) | **GET** /api/v1/settings/smtp | 
[**saveSmtpConfigApi**](OAIOnlineshopApi.md#savesmtpconfigapi) | **PUT** /api/v1/settings/smtp | 


# **getSmtpConfigApi**
```objc
-(NSURLSessionTask*) getSmtpConfigApiWithCompletionHandler: 
        (void (^)(OAISmtpConfig* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIOnlineshopApi*apiInstance = [[OAIOnlineshopApi alloc] init];

[apiInstance getSmtpConfigApiWithCompletionHandler: 
          ^(OAISmtpConfig* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOnlineshopApi->getSmtpConfigApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAISmtpConfig***](OAISmtpConfig.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveSmtpConfigApi**
```objc
-(NSURLSessionTask*) saveSmtpConfigApiWithSmtpConfig: (OAISmtpConfig*) smtpConfig
        completionHandler: (void (^)(OAISmtpConfig* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAISmtpConfig* smtpConfig = [[OAISmtpConfig alloc] init]; //  (optional)

OAIOnlineshopApi*apiInstance = [[OAIOnlineshopApi alloc] init];

[apiInstance saveSmtpConfigApiWithSmtpConfig:smtpConfig
          completionHandler: ^(OAISmtpConfig* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOnlineshopApi->saveSmtpConfigApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smtpConfig** | [**OAISmtpConfig***](OAISmtpConfig.md)|  | [optional] 

### Return type

[**OAISmtpConfig***](OAISmtpConfig.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

