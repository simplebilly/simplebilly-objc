# OAIPayrollApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**payrollApprove**](OAIPayrollApi.md#payrollapprove) | **POST** /api/v1/payroll/{id}/approve | 
[**payrollAutopay**](OAIPayrollApi.md#payrollautopay) | **POST** /api/v1/payroll/{id}/autopay | 
[**payrollCalculate**](OAIPayrollApi.md#payrollcalculate) | **POST** /api/v1/payroll/{id}/calculate | 
[**payrollCreate**](OAIPayrollApi.md#payrollcreate) | **POST** /api/v1/payroll | 
[**payrollDelete**](OAIPayrollApi.md#payrolldelete) | **DELETE** /api/v1/payroll/{id} | 
[**payrollElsterExport**](OAIPayrollApi.md#payrollelsterexport) | **POST** /api/v1/payroll/{id}/elster-export | 
[**payrollEmail**](OAIPayrollApi.md#payrollemail) | **POST** /api/v1/payroll/{id}/email | 
[**payrollEntryPdf**](OAIPayrollApi.md#payrollentrypdf) | **GET** /api/v1/payroll/{id}/entries/{entry_id}/pdf | 
[**payrollGet**](OAIPayrollApi.md#payrollget) | **GET** /api/v1/payroll/{id} | 
[**payrollList**](OAIPayrollApi.md#payrolllist) | **GET** /api/v1/payroll | 
[**payrollPay**](OAIPayrollApi.md#payrollpay) | **POST** /api/v1/payroll/{id}/pay | 
[**payrollPdf**](OAIPayrollApi.md#payrollpdf) | **GET** /api/v1/payroll/{id}/pdf | 
[**payrollSummary**](OAIPayrollApi.md#payrollsummary) | **GET** /api/v1/payroll/summary/{year} | 
[**payrollSvMeldungen**](OAIPayrollApi.md#payrollsvmeldungen) | **POST** /api/v1/payroll/{id}/sv-meldungen | 


# **payrollApprove**
```objc
-(NSURLSessionTask*) payrollApproveWithId: (NSString*) _id
        completionHandler: (void (^)(OAIPayrollRunApi* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIPayrollApi*apiInstance = [[OAIPayrollApi alloc] init];

[apiInstance payrollApproveWithId:_id
          completionHandler: ^(OAIPayrollRunApi* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPayrollApi->payrollApprove: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIPayrollRunApi***](OAIPayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payrollAutopay**
```objc
-(NSURLSessionTask*) payrollAutopayWithId: (NSString*) _id
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; //  (optional)

OAIPayrollApi*apiInstance = [[OAIPayrollApi alloc] init];

[apiInstance payrollAutopayWithId:_id
              body:body
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPayrollApi->payrollAutopay: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **body** | **OAIAnyType***|  | [optional] 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payrollCalculate**
```objc
-(NSURLSessionTask*) payrollCalculateWithId: (NSString*) _id
        completionHandler: (void (^)(OAIPayrollRunApi* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIPayrollApi*apiInstance = [[OAIPayrollApi alloc] init];

[apiInstance payrollCalculateWithId:_id
          completionHandler: ^(OAIPayrollRunApi* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPayrollApi->payrollCalculate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIPayrollRunApi***](OAIPayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payrollCreate**
```objc
-(NSURLSessionTask*) payrollCreateWithPayrollCreatePayload: (OAIPayrollCreatePayload*) payrollCreatePayload
        completionHandler: (void (^)(OAIPayrollRunApi* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIPayrollCreatePayload* payrollCreatePayload = [[OAIPayrollCreatePayload alloc] init]; // 

OAIPayrollApi*apiInstance = [[OAIPayrollApi alloc] init];

[apiInstance payrollCreateWithPayrollCreatePayload:payrollCreatePayload
          completionHandler: ^(OAIPayrollRunApi* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPayrollApi->payrollCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payrollCreatePayload** | [**OAIPayrollCreatePayload***](OAIPayrollCreatePayload.md)|  | 

### Return type

[**OAIPayrollRunApi***](OAIPayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payrollDelete**
```objc
-(NSURLSessionTask*) payrollDeleteWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIPayrollApi*apiInstance = [[OAIPayrollApi alloc] init];

[apiInstance payrollDeleteWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPayrollApi->payrollDelete: %@", error);
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payrollElsterExport**
```objc
-(NSURLSessionTask*) payrollElsterExportWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIPayrollApi*apiInstance = [[OAIPayrollApi alloc] init];

[apiInstance payrollElsterExportWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPayrollApi->payrollElsterExport: %@", error);
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payrollEmail**
```objc
-(NSURLSessionTask*) payrollEmailWithId: (NSString*) _id
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIPayrollApi*apiInstance = [[OAIPayrollApi alloc] init];

[apiInstance payrollEmailWithId:_id
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPayrollApi->payrollEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payrollEntryPdf**
```objc
-(NSURLSessionTask*) payrollEntryPdfWithId: (NSString*) _id
    entryId: (NSString*) entryId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
NSString* entryId = @"entryId_example"; // 

OAIPayrollApi*apiInstance = [[OAIPayrollApi alloc] init];

[apiInstance payrollEntryPdfWithId:_id
              entryId:entryId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPayrollApi->payrollEntryPdf: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **entryId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payrollGet**
```objc
-(NSURLSessionTask*) payrollGetWithId: (NSString*) _id
        completionHandler: (void (^)(OAIPayrollRunApi* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIPayrollApi*apiInstance = [[OAIPayrollApi alloc] init];

[apiInstance payrollGetWithId:_id
          completionHandler: ^(OAIPayrollRunApi* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPayrollApi->payrollGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIPayrollRunApi***](OAIPayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payrollList**
```objc
-(NSURLSessionTask*) payrollListWithYear: (NSNumber*) year
    status: (NSString*) status
        completionHandler: (void (^)(NSArray<OAIPayrollRunApi>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; //  (optional)
NSString* status = @"status_example"; //  (optional)

OAIPayrollApi*apiInstance = [[OAIPayrollApi alloc] init];

[apiInstance payrollListWithYear:year
              status:status
          completionHandler: ^(NSArray<OAIPayrollRunApi>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPayrollApi->payrollList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | [optional] 
 **status** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIPayrollRunApi>***](OAIPayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payrollPay**
```objc
-(NSURLSessionTask*) payrollPayWithId: (NSString*) _id
    payrollPayPayload: (OAIPayrollPayPayload*) payrollPayPayload
        completionHandler: (void (^)(OAIPayrollRunApi* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAIPayrollPayPayload* payrollPayPayload = [[OAIPayrollPayPayload alloc] init]; // 

OAIPayrollApi*apiInstance = [[OAIPayrollApi alloc] init];

[apiInstance payrollPayWithId:_id
              payrollPayPayload:payrollPayPayload
          completionHandler: ^(OAIPayrollRunApi* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPayrollApi->payrollPay: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **payrollPayPayload** | [**OAIPayrollPayPayload***](OAIPayrollPayPayload.md)|  | 

### Return type

[**OAIPayrollRunApi***](OAIPayrollRunApi.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payrollPdf**
```objc
-(NSURLSessionTask*) payrollPdfWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIPayrollApi*apiInstance = [[OAIPayrollApi alloc] init];

[apiInstance payrollPdfWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPayrollApi->payrollPdf: %@", error);
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
 - **Accept**: application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payrollSummary**
```objc
-(NSURLSessionTask*) payrollSummaryWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIYearlyPayrollSummary* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIPayrollApi*apiInstance = [[OAIPayrollApi alloc] init];

[apiInstance payrollSummaryWithYear:year
          completionHandler: ^(OAIYearlyPayrollSummary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPayrollApi->payrollSummary: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIYearlyPayrollSummary***](OAIYearlyPayrollSummary.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payrollSvMeldungen**
```objc
-(NSURLSessionTask*) payrollSvMeldungenWithId: (NSString*) _id
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIPayrollApi*apiInstance = [[OAIPayrollApi alloc] init];

[apiInstance payrollSvMeldungenWithId:_id
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPayrollApi->payrollSvMeldungen: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

