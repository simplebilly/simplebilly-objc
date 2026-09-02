# OAIQuotationApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createQuotation**](OAIQuotationApi.md#createquotation) | **POST** /api/v1/quotations | 
[**deleteQuotation**](OAIQuotationApi.md#deletequotation) | **DELETE** /api/v1/quotations/{quotation_id} | 
[**downloadQuotationPdf**](OAIQuotationApi.md#downloadquotationpdf) | **GET** /api/v1/quotations/{quotation_id}/pdf | 
[**getQuotation**](OAIQuotationApi.md#getquotation) | **GET** /api/v1/quotations/{quotation_id} | 
[**listQuotations**](OAIQuotationApi.md#listquotations) | **GET** /api/v1/quotations/ | 
[**pursueQuotation**](OAIQuotationApi.md#pursuequotation) | **POST** /api/v1/quotations/{quotation_id}/pursue | 
[**quotationRestore**](OAIQuotationApi.md#quotationrestore) | **POST** /api/v1/quotations/{quotation_id}/restore | 
[**updateQuotation**](OAIQuotationApi.md#updatequotation) | **PUT** /api/v1/quotations/{quotation_id} | 


# **createQuotation**
```objc
-(NSURLSessionTask*) createQuotationWithQuotationCreate: (OAIQuotationCreate*) quotationCreate
        completionHandler: (void (^)(OAIQuotation* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIQuotationCreate* quotationCreate = [[OAIQuotationCreate alloc] init]; // 

OAIQuotationApi*apiInstance = [[OAIQuotationApi alloc] init];

[apiInstance createQuotationWithQuotationCreate:quotationCreate
          completionHandler: ^(OAIQuotation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIQuotationApi->createQuotation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotationCreate** | [**OAIQuotationCreate***](OAIQuotationCreate.md)|  | 

### Return type

[**OAIQuotation***](OAIQuotation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteQuotation**
```objc
-(NSURLSessionTask*) deleteQuotationWithQuotationId: (NSString*) quotationId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* quotationId = @"quotationId_example"; // 

OAIQuotationApi*apiInstance = [[OAIQuotationApi alloc] init];

[apiInstance deleteQuotationWithQuotationId:quotationId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIQuotationApi->deleteQuotation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotationId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadQuotationPdf**
```objc
-(NSURLSessionTask*) downloadQuotationPdfWithQuotationId: (NSString*) quotationId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* quotationId = @"quotationId_example"; // 

OAIQuotationApi*apiInstance = [[OAIQuotationApi alloc] init];

[apiInstance downloadQuotationPdfWithQuotationId:quotationId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIQuotationApi->downloadQuotationPdf: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotationId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQuotation**
```objc
-(NSURLSessionTask*) getQuotationWithQuotationId: (NSString*) quotationId
        completionHandler: (void (^)(OAIQuotation* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* quotationId = @"quotationId_example"; // 

OAIQuotationApi*apiInstance = [[OAIQuotationApi alloc] init];

[apiInstance getQuotationWithQuotationId:quotationId
          completionHandler: ^(OAIQuotation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIQuotationApi->getQuotation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotationId** | **NSString***|  | 

### Return type

[**OAIQuotation***](OAIQuotation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listQuotations**
```objc
-(NSURLSessionTask*) listQuotationsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIQuotation>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIQuotationApi*apiInstance = [[OAIQuotationApi alloc] init];

[apiInstance listQuotationsWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIQuotation>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIQuotationApi->listQuotations: %@", error);
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

[**NSArray<OAIQuotation>***](OAIQuotation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pursueQuotation**
```objc
-(NSURLSessionTask*) pursueQuotationWithQuotationId: (NSString*) quotationId
        completionHandler: (void (^)(OAIOrderConfirmation* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* quotationId = @"quotationId_example"; // 

OAIQuotationApi*apiInstance = [[OAIQuotationApi alloc] init];

[apiInstance pursueQuotationWithQuotationId:quotationId
          completionHandler: ^(OAIOrderConfirmation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIQuotationApi->pursueQuotation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotationId** | **NSString***|  | 

### Return type

[**OAIOrderConfirmation***](OAIOrderConfirmation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quotationRestore**
```objc
-(NSURLSessionTask*) quotationRestoreWithQuotationId: (NSString*) quotationId
        completionHandler: (void (^)(OAIQuotation* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* quotationId = @"quotationId_example"; // 

OAIQuotationApi*apiInstance = [[OAIQuotationApi alloc] init];

[apiInstance quotationRestoreWithQuotationId:quotationId
          completionHandler: ^(OAIQuotation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIQuotationApi->quotationRestore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotationId** | **NSString***|  | 

### Return type

[**OAIQuotation***](OAIQuotation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateQuotation**
```objc
-(NSURLSessionTask*) updateQuotationWithQuotationId: (NSString*) quotationId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIQuotation* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* quotationId = @"quotationId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIQuotationApi*apiInstance = [[OAIQuotationApi alloc] init];

[apiInstance updateQuotationWithQuotationId:quotationId
              body:body
          completionHandler: ^(OAIQuotation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIQuotationApi->updateQuotation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quotationId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIQuotation***](OAIQuotation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

