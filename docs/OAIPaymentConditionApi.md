# OAIPaymentConditionApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listPaymentConditionsApi**](OAIPaymentConditionApi.md#listpaymentconditionsapi) | **GET** /api/v1/payment-conditions | 


# **listPaymentConditionsApi**
```objc
-(NSURLSessionTask*) listPaymentConditionsApiWithCompletionHandler: 
        (void (^)(NSArray<OAIPaymentCondition>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIPaymentConditionApi*apiInstance = [[OAIPaymentConditionApi alloc] init];

[apiInstance listPaymentConditionsApiWithCompletionHandler: 
          ^(NSArray<OAIPaymentCondition>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentConditionApi->listPaymentConditionsApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIPaymentCondition>***](OAIPaymentCondition.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

