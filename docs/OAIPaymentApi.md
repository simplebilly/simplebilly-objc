# OAIPaymentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPayment**](OAIPaymentApi.md#createpayment) | **POST** /api/v1/payments | 
[**deletePayment**](OAIPaymentApi.md#deletepayment) | **DELETE** /api/v1/payments/{id} | 
[**getPayment**](OAIPaymentApi.md#getpayment) | **GET** /api/v1/payments/{id} | 
[**getPayments**](OAIPaymentApi.md#getpayments) | **GET** /api/v1/payments/ | 
[**paymentRestore**](OAIPaymentApi.md#paymentrestore) | **POST** /api/v1/payments/{id}/restore | 
[**updatePayment**](OAIPaymentApi.md#updatepayment) | **PUT** /api/v1/payments/{id} | 


# **createPayment**
```objc
-(NSURLSessionTask*) createPaymentWithPaymentCreate: (OAIPaymentCreate*) paymentCreate
        completionHandler: (void (^)(OAIPayment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIPaymentCreate* paymentCreate = [[OAIPaymentCreate alloc] init]; // 

OAIPaymentApi*apiInstance = [[OAIPaymentApi alloc] init];

[apiInstance createPaymentWithPaymentCreate:paymentCreate
          completionHandler: ^(OAIPayment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentApi->createPayment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentCreate** | [**OAIPaymentCreate***](OAIPaymentCreate.md)|  | 

### Return type

[**OAIPayment***](OAIPayment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePayment**
```objc
-(NSURLSessionTask*) deletePaymentWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIPaymentApi*apiInstance = [[OAIPaymentApi alloc] init];

[apiInstance deletePaymentWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPaymentApi->deletePayment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPayment**
```objc
-(NSURLSessionTask*) getPaymentWithId: (NSString*) _id
        completionHandler: (void (^)(OAIPayment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIPaymentApi*apiInstance = [[OAIPaymentApi alloc] init];

[apiInstance getPaymentWithId:_id
          completionHandler: ^(OAIPayment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentApi->getPayment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIPayment***](OAIPayment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPayments**
```objc
-(NSURLSessionTask*) getPaymentsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIPayment>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIPaymentApi*apiInstance = [[OAIPaymentApi alloc] init];

[apiInstance getPaymentsWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIPayment>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentApi->getPayments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **search** | **NSString***|  | [optional] 
 **includeDeleted** | **NSNumber***| Soft-delete entities: set true to include rows with &#x60;deleted_at&#x60; set. | [optional] 

### Return type

[**NSArray<OAIPayment>***](OAIPayment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentRestore**
```objc
-(NSURLSessionTask*) paymentRestoreWithId: (NSString*) _id
        completionHandler: (void (^)(OAIPayment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIPaymentApi*apiInstance = [[OAIPaymentApi alloc] init];

[apiInstance paymentRestoreWithId:_id
          completionHandler: ^(OAIPayment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentApi->paymentRestore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIPayment***](OAIPayment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePayment**
```objc
-(NSURLSessionTask*) updatePaymentWithId: (NSString*) _id
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIPayment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIPaymentApi*apiInstance = [[OAIPaymentApi alloc] init];

[apiInstance updatePaymentWithId:_id
              body:body
          completionHandler: ^(OAIPayment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentApi->updatePayment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIPayment***](OAIPayment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

