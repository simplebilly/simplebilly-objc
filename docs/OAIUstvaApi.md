# OAIUstvaApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**jahresustApi**](OAIUstvaApi.md#jahresustapi) | **GET** /api/v1/bookkeeping/jahresust | 
[**ustvaApi**](OAIUstvaApi.md#ustvaapi) | **GET** /api/v1/bookkeeping/ustva | 


# **jahresustApi**
```objc
-(NSURLSessionTask*) jahresustApiWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIJahresUstErgebnis* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIUstvaApi*apiInstance = [[OAIUstvaApi alloc] init];

[apiInstance jahresustApiWithYear:year
          completionHandler: ^(OAIJahresUstErgebnis* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIUstvaApi->jahresustApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIJahresUstErgebnis***](OAIJahresUstErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ustvaApi**
```objc
-(NSURLSessionTask*) ustvaApiWithZeitraum: (NSString*) zeitraum
        completionHandler: (void (^)(OAIUstvaErgebnis* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* zeitraum = @"zeitraum_example"; // 

OAIUstvaApi*apiInstance = [[OAIUstvaApi alloc] init];

[apiInstance ustvaApiWithZeitraum:zeitraum
          completionHandler: ^(OAIUstvaErgebnis* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIUstvaApi->ustvaApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zeitraum** | **NSString***|  | 

### Return type

[**OAIUstvaErgebnis***](OAIUstvaErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

