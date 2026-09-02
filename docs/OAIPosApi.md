# OAIPosApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**posBilling**](OAIPosApi.md#posbilling) | **GET** /api/pos/billing | 
[**posCreateOrder**](OAIPosApi.md#poscreateorder) | **POST** /api/pos/orders | 
[**posCreateRegister**](OAIPosApi.md#poscreateregister) | **POST** /api/pos/registers | 
[**posCreateTable**](OAIPosApi.md#poscreatetable) | **POST** /api/pos/tables | 
[**posDisableRegister**](OAIPosApi.md#posdisableregister) | **POST** /api/pos/registers/{id}/disable | 
[**posFreeTable**](OAIPosApi.md#posfreetable) | **POST** /api/pos/tables/{id}/free | 
[**posKasseClosing**](OAIPosApi.md#poskasseclosing) | **POST** /api/pos/kasse/closing | 
[**posKasseEntries**](OAIPosApi.md#poskasseentries) | **GET** /api/pos/kasse/entries | 
[**posKasseExport**](OAIPosApi.md#poskasseexport) | **GET** /api/pos/kasse/export | 
[**posKassePayInOut**](OAIPosApi.md#poskassepayinout) | **POST** /api/pos/kasse/pay-in-out | 
[**posListOrders**](OAIPosApi.md#poslistorders) | **GET** /api/pos/orders | 
[**posListProducts**](OAIPosApi.md#poslistproducts) | **GET** /api/pos/products | 
[**posListRegisters**](OAIPosApi.md#poslistregisters) | **GET** /api/pos/registers | 
[**posListTables**](OAIPosApi.md#poslisttables) | **GET** /api/pos/tables | 
[**posOrderPrint**](OAIPosApi.md#posorderprint) | **GET** /api/pos/orders/{order_number}/print | 
[**posOrderReceipt**](OAIPosApi.md#posorderreceipt) | **GET** /api/pos/orders/{order_number}/receipt | 
[**posPayOrder**](OAIPosApi.md#pospayorder) | **POST** /api/pos/orders/{order_number}/pay | 
[**posSumupCheckout**](OAIPosApi.md#possumupcheckout) | **POST** /api/pos/sumup/checkout | 


# **posBilling**
```objc
-(NSURLSessionTask*) posBillingWithCompletionHandler: 
        (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posBillingWithCompletionHandler: 
          ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posBilling: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posCreateOrder**
```objc
-(NSURLSessionTask*) posCreateOrderWithBody: (OAIAnyType*) body
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posCreateOrderWithBody:body
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posCreateOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posCreateRegister**
```objc
-(NSURLSessionTask*) posCreateRegisterWithPosRegisterCreate: (OAIPosRegisterCreate*) posRegisterCreate
        completionHandler: (void (^)(OAIPosRegister* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIPosRegisterCreate* posRegisterCreate = [[OAIPosRegisterCreate alloc] init]; // 

OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posCreateRegisterWithPosRegisterCreate:posRegisterCreate
          completionHandler: ^(OAIPosRegister* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posCreateRegister: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **posRegisterCreate** | [**OAIPosRegisterCreate***](OAIPosRegisterCreate.md)|  | 

### Return type

[**OAIPosRegister***](OAIPosRegister.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posCreateTable**
```objc
-(NSURLSessionTask*) posCreateTableWithPosTableCreate: (OAIPosTableCreate*) posTableCreate
        completionHandler: (void (^)(OAIPosTable* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIPosTableCreate* posTableCreate = [[OAIPosTableCreate alloc] init]; // 

OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posCreateTableWithPosTableCreate:posTableCreate
          completionHandler: ^(OAIPosTable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posCreateTable: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **posTableCreate** | [**OAIPosTableCreate***](OAIPosTableCreate.md)|  | 

### Return type

[**OAIPosTable***](OAIPosTable.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posDisableRegister**
```objc
-(NSURLSessionTask*) posDisableRegisterWithId: (NSString*) _id
        completionHandler: (void (^)(OAIPosRegister* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posDisableRegisterWithId:_id
          completionHandler: ^(OAIPosRegister* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posDisableRegister: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIPosRegister***](OAIPosRegister.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posFreeTable**
```objc
-(NSURLSessionTask*) posFreeTableWithId: (NSString*) _id
        completionHandler: (void (^)(OAIPosTable* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posFreeTableWithId:_id
          completionHandler: ^(OAIPosTable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posFreeTable: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIPosTable***](OAIPosTable.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posKasseClosing**
```objc
-(NSURLSessionTask*) posKasseClosingWithBody: (OAIAnyType*) body
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posKasseClosingWithBody:body
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posKasseClosing: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posKasseEntries**
```objc
-(NSURLSessionTask*) posKasseEntriesWithCompletionHandler: 
        (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posKasseEntriesWithCompletionHandler: 
          ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posKasseEntries: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posKasseExport**
```objc
-(NSURLSessionTask*) posKasseExportWithCompletionHandler: 
        (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posKasseExportWithCompletionHandler: 
          ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posKasseExport: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posKassePayInOut**
```objc
-(NSURLSessionTask*) posKassePayInOutWithBody: (OAIAnyType*) body
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posKassePayInOutWithBody:body
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posKassePayInOut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posListOrders**
```objc
-(NSURLSessionTask*) posListOrdersWithStatus: (NSString*) status
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* status = @"status_example"; // Filter by order status (optional)

OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posListOrdersWithStatus:status
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posListOrders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **NSString***| Filter by order status | [optional] 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posListProducts**
```objc
-(NSURLSessionTask*) posListProductsWithQ: (NSString*) q
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* q = @"q_example"; // Product search (optional)

OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posListProductsWithQ:q
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posListProducts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **NSString***| Product search | [optional] 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posListRegisters**
```objc
-(NSURLSessionTask*) posListRegistersWithCompletionHandler: 
        (void (^)(NSArray<OAIPosRegister>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posListRegistersWithCompletionHandler: 
          ^(NSArray<OAIPosRegister>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posListRegisters: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIPosRegister>***](OAIPosRegister.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posListTables**
```objc
-(NSURLSessionTask*) posListTablesWithCompletionHandler: 
        (void (^)(NSArray<OAIPosTable>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posListTablesWithCompletionHandler: 
          ^(NSArray<OAIPosTable>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posListTables: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIPosTable>***](OAIPosTable.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posOrderPrint**
```objc
-(NSURLSessionTask*) posOrderPrintWithOrderNumber: (NSString*) orderNumber
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* orderNumber = @"orderNumber_example"; // 

OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posOrderPrintWithOrderNumber:orderNumber
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posOrderPrint: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **NSString***|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posOrderReceipt**
```objc
-(NSURLSessionTask*) posOrderReceiptWithOrderNumber: (NSString*) orderNumber
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* orderNumber = @"orderNumber_example"; // 

OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posOrderReceiptWithOrderNumber:orderNumber
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posOrderReceipt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **NSString***|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posPayOrder**
```objc
-(NSURLSessionTask*) posPayOrderWithOrderNumber: (NSString*) orderNumber
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* orderNumber = @"orderNumber_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posPayOrderWithOrderNumber:orderNumber
              body:body
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posPayOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **posSumupCheckout**
```objc
-(NSURLSessionTask*) posSumupCheckoutWithBody: (OAIAnyType*) body
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIPosApi*apiInstance = [[OAIPosApi alloc] init];

[apiInstance posSumupCheckoutWithBody:body
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPosApi->posSumupCheckout: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

