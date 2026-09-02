# OAIPeppolApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**peppolApi**](OAIPeppolApi.md#peppolapi) | **GET** /api/v1/invoices/{id}/peppol | 


# **peppolApi**
```objc
-(NSURLSessionTask*) peppolApiWithId: (NSString*) _id
        completionHandler: (void (^)(OAIPeppolResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIPeppolApi*apiInstance = [[OAIPeppolApi alloc] init];

[apiInstance peppolApiWithId:_id
          completionHandler: ^(OAIPeppolResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPeppolApi->peppolApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIPeppolResponse***](OAIPeppolResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

