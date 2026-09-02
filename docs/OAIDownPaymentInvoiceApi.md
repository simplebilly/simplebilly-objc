# OAIDownPaymentInvoiceApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadDownPaymentInvoicePdf**](OAIDownPaymentInvoiceApi.md#downloaddownpaymentinvoicepdf) | **GET** /api/v1/down-payment-invoices/{id}/pdf | 
[**getDownPaymentInvoice**](OAIDownPaymentInvoiceApi.md#getdownpaymentinvoice) | **GET** /api/v1/down-payment-invoices/{id} | 
[**listDownPaymentInvoices**](OAIDownPaymentInvoiceApi.md#listdownpaymentinvoices) | **GET** /api/v1/down-payment-invoices/ | 


# **downloadDownPaymentInvoicePdf**
```objc
-(NSURLSessionTask*) downloadDownPaymentInvoicePdfWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIDownPaymentInvoiceApi*apiInstance = [[OAIDownPaymentInvoiceApi alloc] init];

[apiInstance downloadDownPaymentInvoicePdfWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDownPaymentInvoiceApi->downloadDownPaymentInvoicePdf: %@", error);
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

# **getDownPaymentInvoice**
```objc
-(NSURLSessionTask*) getDownPaymentInvoiceWithId: (NSString*) _id
        completionHandler: (void (^)(OAIDownPaymentInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIDownPaymentInvoiceApi*apiInstance = [[OAIDownPaymentInvoiceApi alloc] init];

[apiInstance getDownPaymentInvoiceWithId:_id
          completionHandler: ^(OAIDownPaymentInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDownPaymentInvoiceApi->getDownPaymentInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIDownPaymentInvoice***](OAIDownPaymentInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDownPaymentInvoices**
```objc
-(NSURLSessionTask*) listDownPaymentInvoicesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIDownPaymentInvoice>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIDownPaymentInvoiceApi*apiInstance = [[OAIDownPaymentInvoiceApi alloc] init];

[apiInstance listDownPaymentInvoicesWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIDownPaymentInvoice>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDownPaymentInvoiceApi->listDownPaymentInvoices: %@", error);
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

[**NSArray<OAIDownPaymentInvoice>***](OAIDownPaymentInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

