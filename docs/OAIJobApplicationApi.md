# OAIJobApplicationApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyPublic**](OAIJobApplicationApi.md#applypublic) | **POST** /api/v1/public/jobs/{posting_id}/apply | 
[**deleteJobApplication**](OAIJobApplicationApi.md#deletejobapplication) | **DELETE** /api/v1/job-applications/{application_id} | 
[**downloadCv**](OAIJobApplicationApi.md#downloadcv) | **GET** /api/v1/job-applications/{application_id}/cv | 
[**getJobApplication**](OAIJobApplicationApi.md#getjobapplication) | **GET** /api/v1/job-applications/{application_id} | 
[**inboundEmail**](OAIJobApplicationApi.md#inboundemail) | **POST** /api/v1/public/jobs/inbound-email | Inbound CV email, mailgun/sendgrid inbound-parse style: multipart form with &#x60;from&#x60;, &#x60;subject&#x60;, &#x60;body-plain&#x60; and one or more &#x60;attachment-N&#x60; file fields. The subject may reference a posting as &#x60;[JOB-&lt;posting_id&gt;]&#x60;; without one the application lands in the general inbox.
[**listJobApplications**](OAIJobApplicationApi.md#listjobapplications) | **GET** /api/v1/job-applications | 
[**listPublicPostings**](OAIJobApplicationApi.md#listpublicpostings) | **GET** /api/v1/public/jobs | 
[**scoreJobApplication**](OAIJobApplicationApi.md#scorejobapplication) | **POST** /api/v1/job-applications/{application_id}/score | 
[**updateJobApplicationStatus**](OAIJobApplicationApi.md#updatejobapplicationstatus) | **PATCH** /api/v1/job-applications/{application_id}/status | 


# **applyPublic**
```objc
-(NSURLSessionTask*) applyPublicWithPostingId: (NSString*) postingId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* postingId = @"postingId_example"; // 

OAIJobApplicationApi*apiInstance = [[OAIJobApplicationApi alloc] init];

[apiInstance applyPublicWithPostingId:postingId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIJobApplicationApi->applyPublic: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postingId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteJobApplication**
```objc
-(NSURLSessionTask*) deleteJobApplicationWithApplicationId: (NSString*) applicationId
        completionHandler: (void (^)(OAIJobApplication* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* applicationId = @"applicationId_example"; // 

OAIJobApplicationApi*apiInstance = [[OAIJobApplicationApi alloc] init];

[apiInstance deleteJobApplicationWithApplicationId:applicationId
          completionHandler: ^(OAIJobApplication* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJobApplicationApi->deleteJobApplication: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **NSString***|  | 

### Return type

[**OAIJobApplication***](OAIJobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadCv**
```objc
-(NSURLSessionTask*) downloadCvWithApplicationId: (NSString*) applicationId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* applicationId = @"applicationId_example"; // 

OAIJobApplicationApi*apiInstance = [[OAIJobApplicationApi alloc] init];

[apiInstance downloadCvWithApplicationId:applicationId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIJobApplicationApi->downloadCv: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobApplication**
```objc
-(NSURLSessionTask*) getJobApplicationWithApplicationId: (NSString*) applicationId
        completionHandler: (void (^)(OAIJobApplication* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* applicationId = @"applicationId_example"; // 

OAIJobApplicationApi*apiInstance = [[OAIJobApplicationApi alloc] init];

[apiInstance getJobApplicationWithApplicationId:applicationId
          completionHandler: ^(OAIJobApplication* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJobApplicationApi->getJobApplication: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **NSString***|  | 

### Return type

[**OAIJobApplication***](OAIJobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inboundEmail**
```objc
-(NSURLSessionTask*) inboundEmailWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Inbound CV email, mailgun/sendgrid inbound-parse style: multipart form with `from`, `subject`, `body-plain` and one or more `attachment-N` file fields. The subject may reference a posting as `[JOB-<posting_id>]`; without one the application lands in the general inbox.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIJobApplicationApi*apiInstance = [[OAIJobApplicationApi alloc] init];

// Inbound CV email, mailgun/sendgrid inbound-parse style: multipart form with `from`, `subject`, `body-plain` and one or more `attachment-N` file fields. The subject may reference a posting as `[JOB-<posting_id>]`; without one the application lands in the general inbox.
[apiInstance inboundEmailWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIJobApplicationApi->inboundEmail: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listJobApplications**
```objc
-(NSURLSessionTask*) listJobApplicationsWithPostingId: (NSString*) postingId
    status: (NSString*) status
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
        completionHandler: (void (^)(NSArray<OAIJobApplication>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* postingId = @"postingId_example"; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)

OAIJobApplicationApi*apiInstance = [[OAIJobApplicationApi alloc] init];

[apiInstance listJobApplicationsWithPostingId:postingId
              status:status
              page:page
              pageSize:pageSize
          completionHandler: ^(NSArray<OAIJobApplication>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJobApplicationApi->listJobApplications: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postingId** | **NSString***|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 

### Return type

[**NSArray<OAIJobApplication>***](OAIJobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPublicPostings**
```objc
-(NSURLSessionTask*) listPublicPostingsWithCompletionHandler: 
        (void (^)(NSArray<OAIPublicPosting>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIJobApplicationApi*apiInstance = [[OAIJobApplicationApi alloc] init];

[apiInstance listPublicPostingsWithCompletionHandler: 
          ^(NSArray<OAIPublicPosting>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJobApplicationApi->listPublicPostings: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIPublicPosting>***](OAIPublicPosting.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scoreJobApplication**
```objc
-(NSURLSessionTask*) scoreJobApplicationWithApplicationId: (NSString*) applicationId
        completionHandler: (void (^)(OAIJobApplication* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* applicationId = @"applicationId_example"; // 

OAIJobApplicationApi*apiInstance = [[OAIJobApplicationApi alloc] init];

[apiInstance scoreJobApplicationWithApplicationId:applicationId
          completionHandler: ^(OAIJobApplication* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJobApplicationApi->scoreJobApplication: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **NSString***|  | 

### Return type

[**OAIJobApplication***](OAIJobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateJobApplicationStatus**
```objc
-(NSURLSessionTask*) updateJobApplicationStatusWithApplicationId: (NSString*) applicationId
    applicationStatusDto: (OAIApplicationStatusDto*) applicationStatusDto
        completionHandler: (void (^)(OAIJobApplication* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* applicationId = @"applicationId_example"; // 
OAIApplicationStatusDto* applicationStatusDto = [[OAIApplicationStatusDto alloc] init]; // 

OAIJobApplicationApi*apiInstance = [[OAIJobApplicationApi alloc] init];

[apiInstance updateJobApplicationStatusWithApplicationId:applicationId
              applicationStatusDto:applicationStatusDto
          completionHandler: ^(OAIJobApplication* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJobApplicationApi->updateJobApplicationStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **NSString***|  | 
 **applicationStatusDto** | [**OAIApplicationStatusDto***](OAIApplicationStatusDto.md)|  | 

### Return type

[**OAIJobApplication***](OAIJobApplication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

