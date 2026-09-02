# OAIBookkeepingApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**allocatePaymentApi**](OAIBookkeepingApi.md#allocatepaymentapi) | **POST** /api/v1/payments/allocate | Allocate a payment to an invoice
[**bwaReportApi**](OAIBookkeepingApi.md#bwareportapi) | **GET** /api/v1/bookkeeping/bwa | Get BWA (Betriebswirtschaftliche Auswertung) report
[**elsterStatusApi**](OAIBookkeepingApi.md#elsterstatusapi) | **GET** /api/v1/bookkeeping/elster/status | 
[**elsterValidateApi**](OAIBookkeepingApi.md#elstervalidateapi) | **POST** /api/v1/bookkeeping/ustva/elster-validate | 
[**elsterXmlApi**](OAIBookkeepingApi.md#elsterxmlapi) | **GET** /api/v1/bookkeeping/ustva/elster-xml | 
[**getCashflow**](OAIBookkeepingApi.md#getcashflow) | **GET** /api/v1/bookkeeping/cashflow | GET /api/v1/bookkeeping/cashflow Returns operating, investing, and financing cashflow for the given period.
[**getLiquidity**](OAIBookkeepingApi.md#getliquidity) | **GET** /api/v1/bookkeeping/liquidity | GET /api/v1/bookkeeping/liquidity Returns current liquidity position with ratios.
[**getOpenInvoicesApi**](OAIBookkeepingApi.md#getopeninvoicesapi) | **GET** /api/v1/payments/open-invoices/{customer_id} | Get open invoices for a customer
[**getVerfahrensdokumentation**](OAIBookkeepingApi.md#getverfahrensdokumentation) | **GET** /api/v1/bookkeeping/verfahrensdokumentation | GET /api/v1/bookkeeping/verfahrensdokumentation Returns the complete compliance catalog of all documented modules.
[**runDunningApi**](OAIBookkeepingApi.md#rundunningapi) | **POST** /api/v1/bookkeeping/dunning | 


# **allocatePaymentApi**
```objc
-(NSURLSessionTask*) allocatePaymentApiWithAllocatePaymentRequest: (OAIAllocatePaymentRequest*) allocatePaymentRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Allocate a payment to an invoice

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAllocatePaymentRequest* allocatePaymentRequest = [[OAIAllocatePaymentRequest alloc] init]; // 

OAIBookkeepingApi*apiInstance = [[OAIBookkeepingApi alloc] init];

// Allocate a payment to an invoice
[apiInstance allocatePaymentApiWithAllocatePaymentRequest:allocatePaymentRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIBookkeepingApi->allocatePaymentApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allocatePaymentRequest** | [**OAIAllocatePaymentRequest***](OAIAllocatePaymentRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bwaReportApi**
```objc
-(NSURLSessionTask*) bwaReportApiWithYear: (NSNumber*) year
    month: (NSNumber*) month
        completionHandler: (void (^)(OAIBWAReport* output, NSError* error)) handler;
```

Get BWA (Betriebswirtschaftliche Auswertung) report

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; //  (optional)
NSNumber* month = @56; //  (optional)

OAIBookkeepingApi*apiInstance = [[OAIBookkeepingApi alloc] init];

// Get BWA (Betriebswirtschaftliche Auswertung) report
[apiInstance bwaReportApiWithYear:year
              month:month
          completionHandler: ^(OAIBWAReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBookkeepingApi->bwaReportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | [optional] 
 **month** | **NSNumber***|  | [optional] 

### Return type

[**OAIBWAReport***](OAIBWAReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **elsterStatusApi**
```objc
-(NSURLSessionTask*) elsterStatusApiWithCompletionHandler: 
        (void (^)(OAIElsterStatus* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIBookkeepingApi*apiInstance = [[OAIBookkeepingApi alloc] init];

[apiInstance elsterStatusApiWithCompletionHandler: 
          ^(OAIElsterStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBookkeepingApi->elsterStatusApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIElsterStatus***](OAIElsterStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **elsterValidateApi**
```objc
-(NSURLSessionTask*) elsterValidateApiWithZeitraum: (NSString*) zeitraum
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* zeitraum = @"zeitraum_example"; // 

OAIBookkeepingApi*apiInstance = [[OAIBookkeepingApi alloc] init];

[apiInstance elsterValidateApiWithZeitraum:zeitraum
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIBookkeepingApi->elsterValidateApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zeitraum** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **elsterXmlApi**
```objc
-(NSURLSessionTask*) elsterXmlApiWithZeitraum: (NSString*) zeitraum
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* zeitraum = @"zeitraum_example"; // 

OAIBookkeepingApi*apiInstance = [[OAIBookkeepingApi alloc] init];

[apiInstance elsterXmlApiWithZeitraum:zeitraum
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIBookkeepingApi->elsterXmlApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zeitraum** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCashflow**
```objc
-(NSURLSessionTask*) getCashflowWithYear: (NSNumber*) year
    month: (NSNumber*) month
        completionHandler: (void (^)(OAICashflowReport* output, NSError* error)) handler;
```

GET /api/v1/bookkeeping/cashflow Returns operating, investing, and financing cashflow for the given period.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; //  (optional)
NSNumber* month = @56; //  (optional)

OAIBookkeepingApi*apiInstance = [[OAIBookkeepingApi alloc] init];

// GET /api/v1/bookkeeping/cashflow Returns operating, investing, and financing cashflow for the given period.
[apiInstance getCashflowWithYear:year
              month:month
          completionHandler: ^(OAICashflowReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBookkeepingApi->getCashflow: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | [optional] 
 **month** | **NSNumber***|  | [optional] 

### Return type

[**OAICashflowReport***](OAICashflowReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLiquidity**
```objc
-(NSURLSessionTask*) getLiquidityWithCompletionHandler: 
        (void (^)(OAILiquidityPosition* output, NSError* error)) handler;
```

GET /api/v1/bookkeeping/liquidity Returns current liquidity position with ratios.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIBookkeepingApi*apiInstance = [[OAIBookkeepingApi alloc] init];

// GET /api/v1/bookkeeping/liquidity Returns current liquidity position with ratios.
[apiInstance getLiquidityWithCompletionHandler: 
          ^(OAILiquidityPosition* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBookkeepingApi->getLiquidity: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAILiquidityPosition***](OAILiquidityPosition.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOpenInvoicesApi**
```objc
-(NSURLSessionTask*) getOpenInvoicesApiWithCustomerId: (NSString*) customerId
        completionHandler: (void (^)(NSArray<OAIInvoice>* output, NSError* error)) handler;
```

Get open invoices for a customer

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* customerId = @"customerId_example"; // 

OAIBookkeepingApi*apiInstance = [[OAIBookkeepingApi alloc] init];

// Get open invoices for a customer
[apiInstance getOpenInvoicesApiWithCustomerId:customerId
          completionHandler: ^(NSArray<OAIInvoice>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBookkeepingApi->getOpenInvoicesApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***|  | 

### Return type

[**NSArray<OAIInvoice>***](OAIInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVerfahrensdokumentation**
```objc
-(NSURLSessionTask*) getVerfahrensdokumentationWithCompletionHandler: 
        (void (^)(OAIVerfahrensdokumentation* output, NSError* error)) handler;
```

GET /api/v1/bookkeeping/verfahrensdokumentation Returns the complete compliance catalog of all documented modules.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIBookkeepingApi*apiInstance = [[OAIBookkeepingApi alloc] init];

// GET /api/v1/bookkeeping/verfahrensdokumentation Returns the complete compliance catalog of all documented modules.
[apiInstance getVerfahrensdokumentationWithCompletionHandler: 
          ^(OAIVerfahrensdokumentation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBookkeepingApi->getVerfahrensdokumentation: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIVerfahrensdokumentation***](OAIVerfahrensdokumentation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runDunningApi**
```objc
-(NSURLSessionTask*) runDunningApiWithCompletionHandler: 
        (void (^)(OAIDunningResult* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIBookkeepingApi*apiInstance = [[OAIBookkeepingApi alloc] init];

[apiInstance runDunningApiWithCompletionHandler: 
          ^(OAIDunningResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBookkeepingApi->runDunningApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIDunningResult***](OAIDunningResult.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

