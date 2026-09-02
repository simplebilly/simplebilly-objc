# OAIProformaInvoiceApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertProformaToInvoice**](OAIProformaInvoiceApi.md#convertproformatoinvoice) | **POST** /api/v1/proforma-invoices/{proforma_id}/convert | 
[**createProformaInvoice**](OAIProformaInvoiceApi.md#createproformainvoice) | **POST** /api/v1/proforma-invoices | 
[**deleteProformaInvoice**](OAIProformaInvoiceApi.md#deleteproformainvoice) | **DELETE** /api/v1/proforma-invoices/{proforma_id} | 
[**getProformaInvoice**](OAIProformaInvoiceApi.md#getproformainvoice) | **GET** /api/v1/proforma-invoices/{proforma_id} | 
[**listProformaInvoices**](OAIProformaInvoiceApi.md#listproformainvoices) | **GET** /api/v1/proforma-invoices/ | 
[**updateProformaInvoice**](OAIProformaInvoiceApi.md#updateproformainvoice) | **PUT** /api/v1/proforma-invoices/{proforma_id} | 


# **convertProformaToInvoice**
```objc
-(NSURLSessionTask*) convertProformaToInvoiceWithProformaId: (NSString*) proformaId
        completionHandler: (void (^)(OAIConvertResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* proformaId = @"proformaId_example"; // 

OAIProformaInvoiceApi*apiInstance = [[OAIProformaInvoiceApi alloc] init];

[apiInstance convertProformaToInvoiceWithProformaId:proformaId
          completionHandler: ^(OAIConvertResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProformaInvoiceApi->convertProformaToInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proformaId** | **NSString***|  | 

### Return type

[**OAIConvertResponse***](OAIConvertResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProformaInvoice**
```objc
-(NSURLSessionTask*) createProformaInvoiceWithProformaInvoice: (OAIProformaInvoice*) proformaInvoice
        completionHandler: (void (^)(OAIProformaInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIProformaInvoice* proformaInvoice = [[OAIProformaInvoice alloc] init]; // 

OAIProformaInvoiceApi*apiInstance = [[OAIProformaInvoiceApi alloc] init];

[apiInstance createProformaInvoiceWithProformaInvoice:proformaInvoice
          completionHandler: ^(OAIProformaInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProformaInvoiceApi->createProformaInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proformaInvoice** | [**OAIProformaInvoice***](OAIProformaInvoice.md)|  | 

### Return type

[**OAIProformaInvoice***](OAIProformaInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProformaInvoice**
```objc
-(NSURLSessionTask*) deleteProformaInvoiceWithProformaId: (NSString*) proformaId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* proformaId = @"proformaId_example"; // 

OAIProformaInvoiceApi*apiInstance = [[OAIProformaInvoiceApi alloc] init];

[apiInstance deleteProformaInvoiceWithProformaId:proformaId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIProformaInvoiceApi->deleteProformaInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proformaId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProformaInvoice**
```objc
-(NSURLSessionTask*) getProformaInvoiceWithProformaId: (NSString*) proformaId
        completionHandler: (void (^)(OAIProformaInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* proformaId = @"proformaId_example"; // 

OAIProformaInvoiceApi*apiInstance = [[OAIProformaInvoiceApi alloc] init];

[apiInstance getProformaInvoiceWithProformaId:proformaId
          completionHandler: ^(OAIProformaInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProformaInvoiceApi->getProformaInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proformaId** | **NSString***|  | 

### Return type

[**OAIProformaInvoice***](OAIProformaInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProformaInvoices**
```objc
-(NSURLSessionTask*) listProformaInvoicesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    status: (NSString*) status
    customerId: (NSString*) customerId
    orderNumber: (NSString*) orderNumber
        completionHandler: (void (^)(NSArray<OAIProformaInvoice>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSString* customerId = @"customerId_example"; //  (optional)
NSString* orderNumber = @"orderNumber_example"; //  (optional)

OAIProformaInvoiceApi*apiInstance = [[OAIProformaInvoiceApi alloc] init];

[apiInstance listProformaInvoicesWithPage:page
              pageSize:pageSize
              status:status
              customerId:customerId
              orderNumber:orderNumber
          completionHandler: ^(NSArray<OAIProformaInvoice>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProformaInvoiceApi->listProformaInvoices: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **customerId** | **NSString***|  | [optional] 
 **orderNumber** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIProformaInvoice>***](OAIProformaInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProformaInvoice**
```objc
-(NSURLSessionTask*) updateProformaInvoiceWithProformaId: (NSString*) proformaId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIProformaInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* proformaId = @"proformaId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIProformaInvoiceApi*apiInstance = [[OAIProformaInvoiceApi alloc] init];

[apiInstance updateProformaInvoiceWithProformaId:proformaId
              body:body
          completionHandler: ^(OAIProformaInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProformaInvoiceApi->updateProformaInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proformaId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIProformaInvoice***](OAIProformaInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

