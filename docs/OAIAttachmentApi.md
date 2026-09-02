# OAIAttachmentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachmentRestore**](OAIAttachmentApi.md#attachmentrestore) | **POST** /api/v1/attachments/{id}/restore | 
[**createAttachment**](OAIAttachmentApi.md#createattachment) | **POST** /api/v1/attachments | 
[**deleteAttachment**](OAIAttachmentApi.md#deleteattachment) | **DELETE** /api/v1/attachments/{id} | 
[**getAttachment**](OAIAttachmentApi.md#getattachment) | **GET** /api/v1/attachments/{id} | 
[**listAttachments**](OAIAttachmentApi.md#listattachments) | **GET** /api/v1/attachments/ | 
[**saveAttachmentOcrText**](OAIAttachmentApi.md#saveattachmentocrtext) | **PUT** /api/v1/attachments/{attachment_id}/ocr-text | Persist client-side OCR output for an attachment.


# **attachmentRestore**
```objc
-(NSURLSessionTask*) attachmentRestoreWithId: (NSString*) _id
        completionHandler: (void (^)(OAIAttachment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIAttachmentApi*apiInstance = [[OAIAttachmentApi alloc] init];

[apiInstance attachmentRestoreWithId:_id
          completionHandler: ^(OAIAttachment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentApi->attachmentRestore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIAttachment***](OAIAttachment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAttachment**
```objc
-(NSURLSessionTask*) createAttachmentWithAttachmentCreate: (OAIAttachmentCreate*) attachmentCreate
        completionHandler: (void (^)(OAIAttachment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAttachmentCreate* attachmentCreate = [[OAIAttachmentCreate alloc] init]; // 

OAIAttachmentApi*apiInstance = [[OAIAttachmentApi alloc] init];

[apiInstance createAttachmentWithAttachmentCreate:attachmentCreate
          completionHandler: ^(OAIAttachment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentApi->createAttachment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentCreate** | [**OAIAttachmentCreate***](OAIAttachmentCreate.md)|  | 

### Return type

[**OAIAttachment***](OAIAttachment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAttachment**
```objc
-(NSURLSessionTask*) deleteAttachmentWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIAttachmentApi*apiInstance = [[OAIAttachmentApi alloc] init];

[apiInstance deleteAttachmentWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentApi->deleteAttachment: %@", error);
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

# **getAttachment**
```objc
-(NSURLSessionTask*) getAttachmentWithId: (NSString*) _id
        completionHandler: (void (^)(OAIAttachment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIAttachmentApi*apiInstance = [[OAIAttachmentApi alloc] init];

[apiInstance getAttachmentWithId:_id
          completionHandler: ^(OAIAttachment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentApi->getAttachment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIAttachment***](OAIAttachment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAttachments**
```objc
-(NSURLSessionTask*) listAttachmentsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    contactId: (NSString*) contactId
        completionHandler: (void (^)(NSArray<OAIAttachment>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* contactId = @"contactId_example"; //  (optional)

OAIAttachmentApi*apiInstance = [[OAIAttachmentApi alloc] init];

[apiInstance listAttachmentsWithPage:page
              pageSize:pageSize
              contactId:contactId
          completionHandler: ^(NSArray<OAIAttachment>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentApi->listAttachments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **contactId** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIAttachment>***](OAIAttachment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveAttachmentOcrText**
```objc
-(NSURLSessionTask*) saveAttachmentOcrTextWithAttachmentId: (NSString*) attachmentId
    ocrTextRequest: (OAIOcrTextRequest*) ocrTextRequest
        completionHandler: (void (^)(OAIAttachment* output, NSError* error)) handler;
```

Persist client-side OCR output for an attachment.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* attachmentId = @"attachmentId_example"; // 
OAIOcrTextRequest* ocrTextRequest = [[OAIOcrTextRequest alloc] init]; // 

OAIAttachmentApi*apiInstance = [[OAIAttachmentApi alloc] init];

// Persist client-side OCR output for an attachment.
[apiInstance saveAttachmentOcrTextWithAttachmentId:attachmentId
              ocrTextRequest:ocrTextRequest
          completionHandler: ^(OAIAttachment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentApi->saveAttachmentOcrText: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **NSString***|  | 
 **ocrTextRequest** | [**OAIOcrTextRequest***](OAIOcrTextRequest.md)|  | 

### Return type

[**OAIAttachment***](OAIAttachment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

