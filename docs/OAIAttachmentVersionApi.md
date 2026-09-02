# OAIAttachmentVersionApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAttachmentVersion**](OAIAttachmentVersionApi.md#createattachmentversion) | **POST** /api/v1/attachments/{attachment_id}/versions | 
[**listAttachmentVersions**](OAIAttachmentVersionApi.md#listattachmentversions) | **GET** /api/v1/attachments/{attachment_id}/versions | 
[**restoreAttachmentVersion**](OAIAttachmentVersionApi.md#restoreattachmentversion) | **POST** /api/v1/attachments/{attachment_id}/versions/{version_id}/restore | 


# **createAttachmentVersion**
```objc
-(NSURLSessionTask*) createAttachmentVersionWithAttachmentId: (NSString*) attachmentId
    newVersionRequest: (OAINewVersionRequest*) newVersionRequest
        completionHandler: (void (^)(OAIAttachmentVersion* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* attachmentId = @"attachmentId_example"; // 
OAINewVersionRequest* newVersionRequest = [[OAINewVersionRequest alloc] init]; // 

OAIAttachmentVersionApi*apiInstance = [[OAIAttachmentVersionApi alloc] init];

[apiInstance createAttachmentVersionWithAttachmentId:attachmentId
              newVersionRequest:newVersionRequest
          completionHandler: ^(OAIAttachmentVersion* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentVersionApi->createAttachmentVersion: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **NSString***|  | 
 **newVersionRequest** | [**OAINewVersionRequest***](OAINewVersionRequest.md)|  | 

### Return type

[**OAIAttachmentVersion***](OAIAttachmentVersion.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAttachmentVersions**
```objc
-(NSURLSessionTask*) listAttachmentVersionsWithAttachmentId: (NSString*) attachmentId
        completionHandler: (void (^)(NSArray<OAIAttachmentVersion>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* attachmentId = @"attachmentId_example"; // 

OAIAttachmentVersionApi*apiInstance = [[OAIAttachmentVersionApi alloc] init];

[apiInstance listAttachmentVersionsWithAttachmentId:attachmentId
          completionHandler: ^(NSArray<OAIAttachmentVersion>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentVersionApi->listAttachmentVersions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **NSString***|  | 

### Return type

[**NSArray<OAIAttachmentVersion>***](OAIAttachmentVersion.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restoreAttachmentVersion**
```objc
-(NSURLSessionTask*) restoreAttachmentVersionWithAttachmentId: (NSString*) attachmentId
    versionId: (NSString*) versionId
        completionHandler: (void (^)(OAIAttachment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* attachmentId = @"attachmentId_example"; // 
NSString* versionId = @"versionId_example"; // 

OAIAttachmentVersionApi*apiInstance = [[OAIAttachmentVersionApi alloc] init];

[apiInstance restoreAttachmentVersionWithAttachmentId:attachmentId
              versionId:versionId
          completionHandler: ^(OAIAttachment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAttachmentVersionApi->restoreAttachmentVersion: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **NSString***|  | 
 **versionId** | **NSString***|  | 

### Return type

[**OAIAttachment***](OAIAttachment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

