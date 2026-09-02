# OAIKstApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**kstApi**](OAIKstApi.md#kstapi) | **GET** /api/v1/bookkeeping/kst | 


# **kstApi**
```objc
-(NSURLSessionTask*) kstApiWithYear: (NSNumber*) year
    gewinn: (NSString*) gewinn
        completionHandler: (void (^)(OAIKstErgebnis* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 
NSString* gewinn = @"gewinn_example"; //  (optional)

OAIKstApi*apiInstance = [[OAIKstApi alloc] init];

[apiInstance kstApiWithYear:year
              gewinn:gewinn
          completionHandler: ^(OAIKstErgebnis* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIKstApi->kstApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 
 **gewinn** | **NSString***|  | [optional] 

### Return type

[**OAIKstErgebnis***](OAIKstErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

