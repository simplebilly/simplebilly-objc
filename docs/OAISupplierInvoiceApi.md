# OAISupplierInvoiceApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSupplierInvoice**](OAISupplierInvoiceApi.md#createsupplierinvoice) | **POST** /api/v1/supplier-invoices | 
[**deleteSupplierInvoice**](OAISupplierInvoiceApi.md#deletesupplierinvoice) | **DELETE** /api/v1/supplier-invoices/{supplier_invoice_id} | 
[**getSupplierInvoice**](OAISupplierInvoiceApi.md#getsupplierinvoice) | **GET** /api/v1/supplier-invoices/{supplier_invoice_id} | 
[**listSupplierInvoices**](OAISupplierInvoiceApi.md#listsupplierinvoices) | **GET** /api/v1/supplier-invoices/ | 
[**updateSupplierInvoice**](OAISupplierInvoiceApi.md#updatesupplierinvoice) | **PUT** /api/v1/supplier-invoices/{supplier_invoice_id} | 
[**updateSupplierInvoiceStatus**](OAISupplierInvoiceApi.md#updatesupplierinvoicestatus) | **PUT** /api/v1/supplier-invoices/{supplier_invoice_id}/status | 


# **createSupplierInvoice**
```objc
-(NSURLSessionTask*) createSupplierInvoiceWithSupplierInvoice: (OAISupplierInvoice*) supplierInvoice
        completionHandler: (void (^)(OAISupplierInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAISupplierInvoice* supplierInvoice = [[OAISupplierInvoice alloc] init]; // 

OAISupplierInvoiceApi*apiInstance = [[OAISupplierInvoiceApi alloc] init];

[apiInstance createSupplierInvoiceWithSupplierInvoice:supplierInvoice
          completionHandler: ^(OAISupplierInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupplierInvoiceApi->createSupplierInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierInvoice** | [**OAISupplierInvoice***](OAISupplierInvoice.md)|  | 

### Return type

[**OAISupplierInvoice***](OAISupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSupplierInvoice**
```objc
-(NSURLSessionTask*) deleteSupplierInvoiceWithSupplierInvoiceId: (NSString*) supplierInvoiceId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* supplierInvoiceId = @"supplierInvoiceId_example"; // 

OAISupplierInvoiceApi*apiInstance = [[OAISupplierInvoiceApi alloc] init];

[apiInstance deleteSupplierInvoiceWithSupplierInvoiceId:supplierInvoiceId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAISupplierInvoiceApi->deleteSupplierInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierInvoiceId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSupplierInvoice**
```objc
-(NSURLSessionTask*) getSupplierInvoiceWithSupplierInvoiceId: (NSString*) supplierInvoiceId
        completionHandler: (void (^)(OAISupplierInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* supplierInvoiceId = @"supplierInvoiceId_example"; // 

OAISupplierInvoiceApi*apiInstance = [[OAISupplierInvoiceApi alloc] init];

[apiInstance getSupplierInvoiceWithSupplierInvoiceId:supplierInvoiceId
          completionHandler: ^(OAISupplierInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupplierInvoiceApi->getSupplierInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierInvoiceId** | **NSString***|  | 

### Return type

[**OAISupplierInvoice***](OAISupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSupplierInvoices**
```objc
-(NSURLSessionTask*) listSupplierInvoicesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    status: (NSString*) status
    purchaseOrderId: (NSString*) purchaseOrderId
    supplierName: (NSString*) supplierName
        completionHandler: (void (^)(NSArray<OAISupplierInvoice>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSString* purchaseOrderId = @"purchaseOrderId_example"; //  (optional)
NSString* supplierName = @"supplierName_example"; //  (optional)

OAISupplierInvoiceApi*apiInstance = [[OAISupplierInvoiceApi alloc] init];

[apiInstance listSupplierInvoicesWithPage:page
              pageSize:pageSize
              status:status
              purchaseOrderId:purchaseOrderId
              supplierName:supplierName
          completionHandler: ^(NSArray<OAISupplierInvoice>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupplierInvoiceApi->listSupplierInvoices: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **purchaseOrderId** | **NSString***|  | [optional] 
 **supplierName** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAISupplierInvoice>***](OAISupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSupplierInvoice**
```objc
-(NSURLSessionTask*) updateSupplierInvoiceWithSupplierInvoiceId: (NSString*) supplierInvoiceId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAISupplierInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* supplierInvoiceId = @"supplierInvoiceId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAISupplierInvoiceApi*apiInstance = [[OAISupplierInvoiceApi alloc] init];

[apiInstance updateSupplierInvoiceWithSupplierInvoiceId:supplierInvoiceId
              body:body
          completionHandler: ^(OAISupplierInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupplierInvoiceApi->updateSupplierInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierInvoiceId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAISupplierInvoice***](OAISupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSupplierInvoiceStatus**
```objc
-(NSURLSessionTask*) updateSupplierInvoiceStatusWithSupplierInvoiceId: (NSString*) supplierInvoiceId
    supplierInvoiceStatusUpdate: (OAISupplierInvoiceStatusUpdate*) supplierInvoiceStatusUpdate
        completionHandler: (void (^)(OAISupplierInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* supplierInvoiceId = @"supplierInvoiceId_example"; // 
OAISupplierInvoiceStatusUpdate* supplierInvoiceStatusUpdate = [[OAISupplierInvoiceStatusUpdate alloc] init]; // 

OAISupplierInvoiceApi*apiInstance = [[OAISupplierInvoiceApi alloc] init];

[apiInstance updateSupplierInvoiceStatusWithSupplierInvoiceId:supplierInvoiceId
              supplierInvoiceStatusUpdate:supplierInvoiceStatusUpdate
          completionHandler: ^(OAISupplierInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupplierInvoiceApi->updateSupplierInvoiceStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplierInvoiceId** | **NSString***|  | 
 **supplierInvoiceStatusUpdate** | [**OAISupplierInvoiceStatusUpdate***](OAISupplierInvoiceStatusUpdate.md)|  | 

### Return type

[**OAISupplierInvoice***](OAISupplierInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

