# OAIInvoiceApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInvoice**](OAIInvoiceApi.md#createinvoice) | **POST** /api/v1/invoices | 
[**deleteInvoice**](OAIInvoiceApi.md#deleteinvoice) | **DELETE** /api/v1/invoices/{id} | 
[**downloadInvoicePdf**](OAIInvoiceApi.md#downloadinvoicepdf) | **GET** /api/v1/invoices/{id}/pdf | 
[**getInvoice**](OAIInvoiceApi.md#getinvoice) | **GET** /api/v1/invoices/{id} | 
[**getInvoicePdfUrl**](OAIInvoiceApi.md#getinvoicepdfurl) | **GET** /api/v1/invoices/{id}/pdf-url | 
[**getInvoices**](OAIInvoiceApi.md#getinvoices) | **GET** /api/v1/invoices/ | 
[**invoiceRestore**](OAIInvoiceApi.md#invoicerestore) | **POST** /api/v1/invoices/{id}/restore | 
[**updateInvoice**](OAIInvoiceApi.md#updateinvoice) | **PUT** /api/v1/invoices/{id} | 


# **createInvoice**
```objc
-(NSURLSessionTask*) createInvoiceWithInvoiceCreate: (OAIInvoiceCreate*) invoiceCreate
        completionHandler: (void (^)(OAIInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIInvoiceCreate* invoiceCreate = [[OAIInvoiceCreate alloc] init]; // 

OAIInvoiceApi*apiInstance = [[OAIInvoiceApi alloc] init];

[apiInstance createInvoiceWithInvoiceCreate:invoiceCreate
          completionHandler: ^(OAIInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInvoiceApi->createInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceCreate** | [**OAIInvoiceCreate***](OAIInvoiceCreate.md)|  | 

### Return type

[**OAIInvoice***](OAIInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInvoice**
```objc
-(NSURLSessionTask*) deleteInvoiceWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIInvoiceApi*apiInstance = [[OAIInvoiceApi alloc] init];

[apiInstance deleteInvoiceWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInvoiceApi->deleteInvoice: %@", error);
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

# **downloadInvoicePdf**
```objc
-(NSURLSessionTask*) downloadInvoicePdfWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIInvoiceApi*apiInstance = [[OAIInvoiceApi alloc] init];

[apiInstance downloadInvoicePdfWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIInvoiceApi->downloadInvoicePdf: %@", error);
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
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoice**
```objc
-(NSURLSessionTask*) getInvoiceWithId: (NSString*) _id
        completionHandler: (void (^)(OAIInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIInvoiceApi*apiInstance = [[OAIInvoiceApi alloc] init];

[apiInstance getInvoiceWithId:_id
          completionHandler: ^(OAIInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInvoiceApi->getInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIInvoice***](OAIInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoicePdfUrl**
```objc
-(NSURLSessionTask*) getInvoicePdfUrlWithId: (NSString*) _id
        completionHandler: (void (^)(OAIInvoicePdfUrlResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIInvoiceApi*apiInstance = [[OAIInvoiceApi alloc] init];

[apiInstance getInvoicePdfUrlWithId:_id
          completionHandler: ^(OAIInvoicePdfUrlResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInvoiceApi->getInvoicePdfUrl: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIInvoicePdfUrlResponse***](OAIInvoicePdfUrlResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoices**
```objc
-(NSURLSessionTask*) getInvoicesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIInvoice>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIInvoiceApi*apiInstance = [[OAIInvoiceApi alloc] init];

[apiInstance getInvoicesWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIInvoice>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInvoiceApi->getInvoices: %@", error);
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

[**NSArray<OAIInvoice>***](OAIInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoiceRestore**
```objc
-(NSURLSessionTask*) invoiceRestoreWithId: (NSString*) _id
        completionHandler: (void (^)(OAIInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIInvoiceApi*apiInstance = [[OAIInvoiceApi alloc] init];

[apiInstance invoiceRestoreWithId:_id
          completionHandler: ^(OAIInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInvoiceApi->invoiceRestore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIInvoice***](OAIInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInvoice**
```objc
-(NSURLSessionTask*) updateInvoiceWithId: (NSString*) _id
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIInvoiceApi*apiInstance = [[OAIInvoiceApi alloc] init];

[apiInstance updateInvoiceWithId:_id
              body:body
          completionHandler: ^(OAIInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInvoiceApi->updateInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIInvoice***](OAIInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

