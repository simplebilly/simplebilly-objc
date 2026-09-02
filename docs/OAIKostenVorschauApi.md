# OAIKostenVorschauApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**kostenVorschauApi**](OAIKostenVorschauApi.md#kostenvorschauapi) | **GET** /api/v1/bookkeeping/kosten-vorschau | 


# **kostenVorschauApi**
```objc
-(NSURLSessionTask*) kostenVorschauApiWithYear: (NSNumber*) year
    month: (NSNumber*) month
        completionHandler: (void (^)(OAIKostenVorschau* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 
NSNumber* month = @56; // 

OAIKostenVorschauApi*apiInstance = [[OAIKostenVorschauApi alloc] init];

[apiInstance kostenVorschauApiWithYear:year
              month:month
          completionHandler: ^(OAIKostenVorschau* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIKostenVorschauApi->kostenVorschauApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 
 **month** | **NSNumber***|  | 

### Return type

[**OAIKostenVorschau***](OAIKostenVorschau.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

