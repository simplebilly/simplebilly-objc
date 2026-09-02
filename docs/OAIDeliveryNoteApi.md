# OAIDeliveryNoteApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeliveryNote**](OAIDeliveryNoteApi.md#createdeliverynote) | **POST** /api/v1/delivery-notes | 
[**deleteDeliveryNote**](OAIDeliveryNoteApi.md#deletedeliverynote) | **DELETE** /api/v1/delivery-notes/{delivery_note_id} | 
[**deliverynoteRestore**](OAIDeliveryNoteApi.md#deliverynoterestore) | **POST** /api/v1/delivery-notes/{delivery_note_id}/restore | 
[**downloadDeliveryNotePdf**](OAIDeliveryNoteApi.md#downloaddeliverynotepdf) | **GET** /api/v1/delivery-notes/{delivery_note_id}/pdf | 
[**getDeliveryNote**](OAIDeliveryNoteApi.md#getdeliverynote) | **GET** /api/v1/delivery-notes/{delivery_note_id} | 
[**listDeliveryNotes**](OAIDeliveryNoteApi.md#listdeliverynotes) | **GET** /api/v1/delivery-notes/ | 
[**pursueDeliveryNote**](OAIDeliveryNoteApi.md#pursuedeliverynote) | **POST** /api/v1/delivery-notes/{delivery_note_id}/pursue | 


# **createDeliveryNote**
```objc
-(NSURLSessionTask*) createDeliveryNoteWithDeliveryNoteCreate: (OAIDeliveryNoteCreate*) deliveryNoteCreate
        completionHandler: (void (^)(OAIDeliveryNote* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIDeliveryNoteCreate* deliveryNoteCreate = [[OAIDeliveryNoteCreate alloc] init]; // 

OAIDeliveryNoteApi*apiInstance = [[OAIDeliveryNoteApi alloc] init];

[apiInstance createDeliveryNoteWithDeliveryNoteCreate:deliveryNoteCreate
          completionHandler: ^(OAIDeliveryNote* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryNoteApi->createDeliveryNote: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryNoteCreate** | [**OAIDeliveryNoteCreate***](OAIDeliveryNoteCreate.md)|  | 

### Return type

[**OAIDeliveryNote***](OAIDeliveryNote.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDeliveryNote**
```objc
-(NSURLSessionTask*) deleteDeliveryNoteWithDeliveryNoteId: (NSString*) deliveryNoteId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* deliveryNoteId = @"deliveryNoteId_example"; // 

OAIDeliveryNoteApi*apiInstance = [[OAIDeliveryNoteApi alloc] init];

[apiInstance deleteDeliveryNoteWithDeliveryNoteId:deliveryNoteId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryNoteApi->deleteDeliveryNote: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryNoteId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deliverynoteRestore**
```objc
-(NSURLSessionTask*) deliverynoteRestoreWithDeliveryNoteId: (NSString*) deliveryNoteId
        completionHandler: (void (^)(OAIDeliveryNote* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* deliveryNoteId = @"deliveryNoteId_example"; // 

OAIDeliveryNoteApi*apiInstance = [[OAIDeliveryNoteApi alloc] init];

[apiInstance deliverynoteRestoreWithDeliveryNoteId:deliveryNoteId
          completionHandler: ^(OAIDeliveryNote* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryNoteApi->deliverynoteRestore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryNoteId** | **NSString***|  | 

### Return type

[**OAIDeliveryNote***](OAIDeliveryNote.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadDeliveryNotePdf**
```objc
-(NSURLSessionTask*) downloadDeliveryNotePdfWithDeliveryNoteId: (NSString*) deliveryNoteId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* deliveryNoteId = @"deliveryNoteId_example"; // 

OAIDeliveryNoteApi*apiInstance = [[OAIDeliveryNoteApi alloc] init];

[apiInstance downloadDeliveryNotePdfWithDeliveryNoteId:deliveryNoteId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryNoteApi->downloadDeliveryNotePdf: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryNoteId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeliveryNote**
```objc
-(NSURLSessionTask*) getDeliveryNoteWithDeliveryNoteId: (NSString*) deliveryNoteId
        completionHandler: (void (^)(OAIDeliveryNote* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* deliveryNoteId = @"deliveryNoteId_example"; // 

OAIDeliveryNoteApi*apiInstance = [[OAIDeliveryNoteApi alloc] init];

[apiInstance getDeliveryNoteWithDeliveryNoteId:deliveryNoteId
          completionHandler: ^(OAIDeliveryNote* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryNoteApi->getDeliveryNote: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryNoteId** | **NSString***|  | 

### Return type

[**OAIDeliveryNote***](OAIDeliveryNote.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeliveryNotes**
```objc
-(NSURLSessionTask*) listDeliveryNotesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIDeliveryNote>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIDeliveryNoteApi*apiInstance = [[OAIDeliveryNoteApi alloc] init];

[apiInstance listDeliveryNotesWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIDeliveryNote>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryNoteApi->listDeliveryNotes: %@", error);
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

[**NSArray<OAIDeliveryNote>***](OAIDeliveryNote.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pursueDeliveryNote**
```objc
-(NSURLSessionTask*) pursueDeliveryNoteWithDeliveryNoteId: (NSString*) deliveryNoteId
        completionHandler: (void (^)(OAIInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* deliveryNoteId = @"deliveryNoteId_example"; // 

OAIDeliveryNoteApi*apiInstance = [[OAIDeliveryNoteApi alloc] init];

[apiInstance pursueDeliveryNoteWithDeliveryNoteId:deliveryNoteId
          completionHandler: ^(OAIInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryNoteApi->pursueDeliveryNote: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryNoteId** | **NSString***|  | 

### Return type

[**OAIInvoice***](OAIInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

