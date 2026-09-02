# OAIEmailTemplateApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmailTemplate**](OAIEmailTemplateApi.md#createemailtemplate) | **POST** /api/v1/email-templates | 
[**deleteEmailTemplate**](OAIEmailTemplateApi.md#deleteemailtemplate) | **DELETE** /api/v1/email-templates/{email_template_id} | 
[**getEmailTemplate**](OAIEmailTemplateApi.md#getemailtemplate) | **GET** /api/v1/email-templates/{email_template_id} | 
[**listEmailTemplates**](OAIEmailTemplateApi.md#listemailtemplates) | **GET** /api/v1/email-templates/ | 
[**renderEmailTemplate**](OAIEmailTemplateApi.md#renderemailtemplate) | **POST** /api/v1/email-templates/{email_template_id}/render | 
[**updateEmailTemplate**](OAIEmailTemplateApi.md#updateemailtemplate) | **PUT** /api/v1/email-templates/{email_template_id} | 


# **createEmailTemplate**
```objc
-(NSURLSessionTask*) createEmailTemplateWithEmailTemplateCreate: (OAIEmailTemplateCreate*) emailTemplateCreate
        completionHandler: (void (^)(OAIEmailTemplate* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIEmailTemplateCreate* emailTemplateCreate = [[OAIEmailTemplateCreate alloc] init]; // 

OAIEmailTemplateApi*apiInstance = [[OAIEmailTemplateApi alloc] init];

[apiInstance createEmailTemplateWithEmailTemplateCreate:emailTemplateCreate
          completionHandler: ^(OAIEmailTemplate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailTemplateApi->createEmailTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTemplateCreate** | [**OAIEmailTemplateCreate***](OAIEmailTemplateCreate.md)|  | 

### Return type

[**OAIEmailTemplate***](OAIEmailTemplate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEmailTemplate**
```objc
-(NSURLSessionTask*) deleteEmailTemplateWithEmailTemplateId: (NSString*) emailTemplateId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* emailTemplateId = @"emailTemplateId_example"; // 

OAIEmailTemplateApi*apiInstance = [[OAIEmailTemplateApi alloc] init];

[apiInstance deleteEmailTemplateWithEmailTemplateId:emailTemplateId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEmailTemplateApi->deleteEmailTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTemplateId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmailTemplate**
```objc
-(NSURLSessionTask*) getEmailTemplateWithEmailTemplateId: (NSString*) emailTemplateId
        completionHandler: (void (^)(OAIEmailTemplate* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* emailTemplateId = @"emailTemplateId_example"; // 

OAIEmailTemplateApi*apiInstance = [[OAIEmailTemplateApi alloc] init];

[apiInstance getEmailTemplateWithEmailTemplateId:emailTemplateId
          completionHandler: ^(OAIEmailTemplate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailTemplateApi->getEmailTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTemplateId** | **NSString***|  | 

### Return type

[**OAIEmailTemplate***](OAIEmailTemplate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEmailTemplates**
```objc
-(NSURLSessionTask*) listEmailTemplatesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    status: (NSString*) status
    search: (NSString*) search
        completionHandler: (void (^)(NSArray<OAIEmailTemplate>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSString* search = @"search_example"; //  (optional)

OAIEmailTemplateApi*apiInstance = [[OAIEmailTemplateApi alloc] init];

[apiInstance listEmailTemplatesWithPage:page
              pageSize:pageSize
              status:status
              search:search
          completionHandler: ^(NSArray<OAIEmailTemplate>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailTemplateApi->listEmailTemplates: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **search** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIEmailTemplate>***](OAIEmailTemplate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **renderEmailTemplate**
```objc
-(NSURLSessionTask*) renderEmailTemplateWithEmailTemplateId: (NSString*) emailTemplateId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* emailTemplateId = @"emailTemplateId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIEmailTemplateApi*apiInstance = [[OAIEmailTemplateApi alloc] init];

[apiInstance renderEmailTemplateWithEmailTemplateId:emailTemplateId
              body:body
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailTemplateApi->renderEmailTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTemplateId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEmailTemplate**
```objc
-(NSURLSessionTask*) updateEmailTemplateWithEmailTemplateId: (NSString*) emailTemplateId
    emailTemplateUpdate: (OAIEmailTemplateUpdate*) emailTemplateUpdate
        completionHandler: (void (^)(OAIEmailTemplate* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* emailTemplateId = @"emailTemplateId_example"; // 
OAIEmailTemplateUpdate* emailTemplateUpdate = [[OAIEmailTemplateUpdate alloc] init]; // 

OAIEmailTemplateApi*apiInstance = [[OAIEmailTemplateApi alloc] init];

[apiInstance updateEmailTemplateWithEmailTemplateId:emailTemplateId
              emailTemplateUpdate:emailTemplateUpdate
          completionHandler: ^(OAIEmailTemplate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailTemplateApi->updateEmailTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTemplateId** | **NSString***|  | 
 **emailTemplateUpdate** | [**OAIEmailTemplateUpdate***](OAIEmailTemplateUpdate.md)|  | 

### Return type

[**OAIEmailTemplate***](OAIEmailTemplate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

