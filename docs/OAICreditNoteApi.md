# OAICreditNoteApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCreditNote**](OAICreditNoteApi.md#createcreditnote) | **POST** /api/v1/credit-notes | 
[**downloadCreditNotePdf**](OAICreditNoteApi.md#downloadcreditnotepdf) | **GET** /api/v1/credit-notes/{credit_note_id}/pdf | 
[**getCreditNote**](OAICreditNoteApi.md#getcreditnote) | **GET** /api/v1/credit-notes/{credit_note_id} | 
[**listCreditNotes**](OAICreditNoteApi.md#listcreditnotes) | **GET** /api/v1/credit-notes/ | 


# **createCreditNote**
```objc
-(NSURLSessionTask*) createCreditNoteWithBody: (OAIAnyType*) body
        completionHandler: (void (^)(OAIInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAICreditNoteApi*apiInstance = [[OAICreditNoteApi alloc] init];

[apiInstance createCreditNoteWithBody:body
          completionHandler: ^(OAIInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICreditNoteApi->createCreditNote: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIInvoice***](OAIInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadCreditNotePdf**
```objc
-(NSURLSessionTask*) downloadCreditNotePdfWithCreditNoteId: (NSString*) creditNoteId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* creditNoteId = @"creditNoteId_example"; // 

OAICreditNoteApi*apiInstance = [[OAICreditNoteApi alloc] init];

[apiInstance downloadCreditNotePdfWithCreditNoteId:creditNoteId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICreditNoteApi->downloadCreditNotePdf: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **creditNoteId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCreditNote**
```objc
-(NSURLSessionTask*) getCreditNoteWithCreditNoteId: (NSString*) creditNoteId
        completionHandler: (void (^)(OAIInvoice* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* creditNoteId = @"creditNoteId_example"; // 

OAICreditNoteApi*apiInstance = [[OAICreditNoteApi alloc] init];

[apiInstance getCreditNoteWithCreditNoteId:creditNoteId
          completionHandler: ^(OAIInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICreditNoteApi->getCreditNote: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **creditNoteId** | **NSString***|  | 

### Return type

[**OAIInvoice***](OAIInvoice.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCreditNotes**
```objc
-(NSURLSessionTask*) listCreditNotesWithPage: (NSNumber*) page
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

OAICreditNoteApi*apiInstance = [[OAICreditNoteApi alloc] init];

[apiInstance listCreditNotesWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIInvoice>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICreditNoteApi->listCreditNotes: %@", error);
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

