# OAIPurchaseOrderApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPurchaseOrder**](OAIPurchaseOrderApi.md#createpurchaseorder) | **POST** /api/v1/purchase-orders | 
[**deletePurchaseOrder**](OAIPurchaseOrderApi.md#deletepurchaseorder) | **DELETE** /api/v1/purchase-orders/{purchase_order_id} | 
[**getPurchaseOrder**](OAIPurchaseOrderApi.md#getpurchaseorder) | **GET** /api/v1/purchase-orders/{purchase_order_id} | 
[**listPurchaseOrders**](OAIPurchaseOrderApi.md#listpurchaseorders) | **GET** /api/v1/purchase-orders/ | 
[**matchInvoice**](OAIPurchaseOrderApi.md#matchinvoice) | **POST** /api/v1/purchase-orders/{purchase_order_id}/match-invoice | 3-way invoice check (Rechnungsprüfung): compares the purchase order line items, the quantities received via goods receipts, and the supplier invoice line items, reporting quantity and price variances per product.
[**updatePurchaseOrder**](OAIPurchaseOrderApi.md#updatepurchaseorder) | **PUT** /api/v1/purchase-orders/{purchase_order_id} | 
[**updatePurchaseOrderStatus**](OAIPurchaseOrderApi.md#updatepurchaseorderstatus) | **PUT** /api/v1/purchase-orders/{purchase_order_id}/status | 


# **createPurchaseOrder**
```objc
-(NSURLSessionTask*) createPurchaseOrderWithPurchaseOrder: (OAIPurchaseOrder*) purchaseOrder
        completionHandler: (void (^)(OAIPurchaseOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIPurchaseOrder* purchaseOrder = [[OAIPurchaseOrder alloc] init]; // 

OAIPurchaseOrderApi*apiInstance = [[OAIPurchaseOrderApi alloc] init];

[apiInstance createPurchaseOrderWithPurchaseOrder:purchaseOrder
          completionHandler: ^(OAIPurchaseOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPurchaseOrderApi->createPurchaseOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchaseOrder** | [**OAIPurchaseOrder***](OAIPurchaseOrder.md)|  | 

### Return type

[**OAIPurchaseOrder***](OAIPurchaseOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePurchaseOrder**
```objc
-(NSURLSessionTask*) deletePurchaseOrderWithPurchaseOrderId: (NSString*) purchaseOrderId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* purchaseOrderId = @"purchaseOrderId_example"; // 

OAIPurchaseOrderApi*apiInstance = [[OAIPurchaseOrderApi alloc] init];

[apiInstance deletePurchaseOrderWithPurchaseOrderId:purchaseOrderId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPurchaseOrderApi->deletePurchaseOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchaseOrderId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPurchaseOrder**
```objc
-(NSURLSessionTask*) getPurchaseOrderWithPurchaseOrderId: (NSString*) purchaseOrderId
        completionHandler: (void (^)(OAIPurchaseOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* purchaseOrderId = @"purchaseOrderId_example"; // 

OAIPurchaseOrderApi*apiInstance = [[OAIPurchaseOrderApi alloc] init];

[apiInstance getPurchaseOrderWithPurchaseOrderId:purchaseOrderId
          completionHandler: ^(OAIPurchaseOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPurchaseOrderApi->getPurchaseOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchaseOrderId** | **NSString***|  | 

### Return type

[**OAIPurchaseOrder***](OAIPurchaseOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPurchaseOrders**
```objc
-(NSURLSessionTask*) listPurchaseOrdersWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    status: (NSString*) status
    supplierName: (NSString*) supplierName
    search: (NSString*) search
        completionHandler: (void (^)(NSArray<OAIPurchaseOrder>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSString* supplierName = @"supplierName_example"; //  (optional)
NSString* search = @"search_example"; //  (optional)

OAIPurchaseOrderApi*apiInstance = [[OAIPurchaseOrderApi alloc] init];

[apiInstance listPurchaseOrdersWithPage:page
              pageSize:pageSize
              status:status
              supplierName:supplierName
              search:search
          completionHandler: ^(NSArray<OAIPurchaseOrder>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPurchaseOrderApi->listPurchaseOrders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **supplierName** | **NSString***|  | [optional] 
 **search** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIPurchaseOrder>***](OAIPurchaseOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **matchInvoice**
```objc
-(NSURLSessionTask*) matchInvoiceWithPurchaseOrderId: (NSString*) purchaseOrderId
    invoiceMatchRequest: (OAIInvoiceMatchRequest*) invoiceMatchRequest
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```

3-way invoice check (Rechnungsprüfung): compares the purchase order line items, the quantities received via goods receipts, and the supplier invoice line items, reporting quantity and price variances per product.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* purchaseOrderId = @"purchaseOrderId_example"; // 
OAIInvoiceMatchRequest* invoiceMatchRequest = [[OAIInvoiceMatchRequest alloc] init]; // 

OAIPurchaseOrderApi*apiInstance = [[OAIPurchaseOrderApi alloc] init];

// 3-way invoice check (Rechnungsprüfung): compares the purchase order line items, the quantities received via goods receipts, and the supplier invoice line items, reporting quantity and price variances per product.
[apiInstance matchInvoiceWithPurchaseOrderId:purchaseOrderId
              invoiceMatchRequest:invoiceMatchRequest
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPurchaseOrderApi->matchInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchaseOrderId** | **NSString***|  | 
 **invoiceMatchRequest** | [**OAIInvoiceMatchRequest***](OAIInvoiceMatchRequest.md)|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePurchaseOrder**
```objc
-(NSURLSessionTask*) updatePurchaseOrderWithPurchaseOrderId: (NSString*) purchaseOrderId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIPurchaseOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* purchaseOrderId = @"purchaseOrderId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIPurchaseOrderApi*apiInstance = [[OAIPurchaseOrderApi alloc] init];

[apiInstance updatePurchaseOrderWithPurchaseOrderId:purchaseOrderId
              body:body
          completionHandler: ^(OAIPurchaseOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPurchaseOrderApi->updatePurchaseOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchaseOrderId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIPurchaseOrder***](OAIPurchaseOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePurchaseOrderStatus**
```objc
-(NSURLSessionTask*) updatePurchaseOrderStatusWithPurchaseOrderId: (NSString*) purchaseOrderId
    purchaseOrderStatusUpdate: (OAIPurchaseOrderStatusUpdate*) purchaseOrderStatusUpdate
        completionHandler: (void (^)(OAIPurchaseOrder* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* purchaseOrderId = @"purchaseOrderId_example"; // 
OAIPurchaseOrderStatusUpdate* purchaseOrderStatusUpdate = [[OAIPurchaseOrderStatusUpdate alloc] init]; // 

OAIPurchaseOrderApi*apiInstance = [[OAIPurchaseOrderApi alloc] init];

[apiInstance updatePurchaseOrderStatusWithPurchaseOrderId:purchaseOrderId
              purchaseOrderStatusUpdate:purchaseOrderStatusUpdate
          completionHandler: ^(OAIPurchaseOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPurchaseOrderApi->updatePurchaseOrderStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchaseOrderId** | **NSString***|  | 
 **purchaseOrderStatusUpdate** | [**OAIPurchaseOrderStatusUpdate***](OAIPurchaseOrderStatusUpdate.md)|  | 

### Return type

[**OAIPurchaseOrder***](OAIPurchaseOrder.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

