# OAILegalDocumentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLegalDocuments**](OAILegalDocumentApi.md#getlegaldocuments) | **GET** /api/v1/legal/documents | List all legal documents of the tenant. Missing documents are seeded from the default texts (with tenant placeholders replaced) on first access.
[**resetLegalDocuments**](OAILegalDocumentApi.md#resetlegaldocuments) | **POST** /api/v1/legal/documents/reset | Restore default texts for all documents (or a single doc_type/lang when the optional filter is given). Returns the full tenant list.
[**upsertLegalDocuments**](OAILegalDocumentApi.md#upsertlegaldocuments) | **PUT** /api/v1/legal/documents | Upsert legal documents per (doc_type, lang). Returns the full tenant list.


# **getLegalDocuments**
```objc
-(NSURLSessionTask*) getLegalDocumentsWithCompletionHandler: 
        (void (^)(NSArray<OAILegalDocument>* output, NSError* error)) handler;
```

List all legal documents of the tenant. Missing documents are seeded from the default texts (with tenant placeholders replaced) on first access.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAILegalDocumentApi*apiInstance = [[OAILegalDocumentApi alloc] init];

// List all legal documents of the tenant. Missing documents are seeded from the default texts (with tenant placeholders replaced) on first access.
[apiInstance getLegalDocumentsWithCompletionHandler: 
          ^(NSArray<OAILegalDocument>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAILegalDocumentApi->getLegalDocuments: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAILegalDocument>***](OAILegalDocument.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetLegalDocuments**
```objc
-(NSURLSessionTask*) resetLegalDocumentsWithLegalDocumentReset: (OAILegalDocumentReset*) legalDocumentReset
        completionHandler: (void (^)(NSArray<OAILegalDocument>* output, NSError* error)) handler;
```

Restore default texts for all documents (or a single doc_type/lang when the optional filter is given). Returns the full tenant list.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAILegalDocumentReset* legalDocumentReset = [[OAILegalDocumentReset alloc] init]; // 

OAILegalDocumentApi*apiInstance = [[OAILegalDocumentApi alloc] init];

// Restore default texts for all documents (or a single doc_type/lang when the optional filter is given). Returns the full tenant list.
[apiInstance resetLegalDocumentsWithLegalDocumentReset:legalDocumentReset
          completionHandler: ^(NSArray<OAILegalDocument>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAILegalDocumentApi->resetLegalDocuments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **legalDocumentReset** | [**OAILegalDocumentReset***](OAILegalDocumentReset.md)|  | 

### Return type

[**NSArray<OAILegalDocument>***](OAILegalDocument.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsertLegalDocuments**
```objc
-(NSURLSessionTask*) upsertLegalDocumentsWithLegalDocumentUpsert: (NSArray<OAILegalDocumentUpsert>*) legalDocumentUpsert
        completionHandler: (void (^)(NSArray<OAILegalDocument>* output, NSError* error)) handler;
```

Upsert legal documents per (doc_type, lang). Returns the full tenant list.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSArray<OAILegalDocumentUpsert>* legalDocumentUpsert = @[[[OAILegalDocumentUpsert alloc] init]]; // 

OAILegalDocumentApi*apiInstance = [[OAILegalDocumentApi alloc] init];

// Upsert legal documents per (doc_type, lang). Returns the full tenant list.
[apiInstance upsertLegalDocumentsWithLegalDocumentUpsert:legalDocumentUpsert
          completionHandler: ^(NSArray<OAILegalDocument>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAILegalDocumentApi->upsertLegalDocuments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **legalDocumentUpsert** | [**NSArray&lt;OAILegalDocumentUpsert&gt;***](OAILegalDocumentUpsert.md)|  | 

### Return type

[**NSArray<OAILegalDocument>***](OAILegalDocument.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

