# OAIPlausibilityApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**plausibilityCheckApi**](OAIPlausibilityApi.md#plausibilitycheckapi) | **GET** /api/v1/bookkeeping/plausibility | 


# **plausibilityCheckApi**
```objc
-(NSURLSessionTask*) plausibilityCheckApiWithDateFrom: (NSString*) dateFrom
    dateTo: (NSString*) dateTo
        completionHandler: (void (^)(OAIPlausibilityReport* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* dateFrom = @"dateFrom_example"; //  (optional)
NSString* dateTo = @"dateTo_example"; //  (optional)

OAIPlausibilityApi*apiInstance = [[OAIPlausibilityApi alloc] init];

[apiInstance plausibilityCheckApiWithDateFrom:dateFrom
              dateTo:dateTo
          completionHandler: ^(OAIPlausibilityReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPlausibilityApi->plausibilityCheckApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dateFrom** | **NSString***|  | [optional] 
 **dateTo** | **NSString***|  | [optional] 

### Return type

[**OAIPlausibilityReport***](OAIPlausibilityReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

