# OAIJobPostingApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJobPosting**](OAIJobPostingApi.md#createjobposting) | **POST** /api/v1/job-postings | 
[**deleteJobPosting**](OAIJobPostingApi.md#deletejobposting) | **DELETE** /api/v1/job-postings/{id} | 
[**getJobPosting**](OAIJobPostingApi.md#getjobposting) | **GET** /api/v1/job-postings/{id} | 
[**listJobPostings**](OAIJobPostingApi.md#listjobpostings) | **GET** /api/v1/job-postings | 
[**updateJobPosting**](OAIJobPostingApi.md#updatejobposting) | **PUT** /api/v1/job-postings/{id} | 


# **createJobPosting**
```objc
-(NSURLSessionTask*) createJobPostingWithJobPostingCreate: (OAIJobPostingCreate*) jobPostingCreate
        completionHandler: (void (^)(OAIJobPosting* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIJobPostingCreate* jobPostingCreate = [[OAIJobPostingCreate alloc] init]; // 

OAIJobPostingApi*apiInstance = [[OAIJobPostingApi alloc] init];

[apiInstance createJobPostingWithJobPostingCreate:jobPostingCreate
          completionHandler: ^(OAIJobPosting* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJobPostingApi->createJobPosting: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobPostingCreate** | [**OAIJobPostingCreate***](OAIJobPostingCreate.md)|  | 

### Return type

[**OAIJobPosting***](OAIJobPosting.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteJobPosting**
```objc
-(NSURLSessionTask*) deleteJobPostingWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIJobPostingApi*apiInstance = [[OAIJobPostingApi alloc] init];

[apiInstance deleteJobPostingWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIJobPostingApi->deleteJobPosting: %@", error);
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

# **getJobPosting**
```objc
-(NSURLSessionTask*) getJobPostingWithId: (NSString*) _id
        completionHandler: (void (^)(OAIJobPosting* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIJobPostingApi*apiInstance = [[OAIJobPostingApi alloc] init];

[apiInstance getJobPostingWithId:_id
          completionHandler: ^(OAIJobPosting* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJobPostingApi->getJobPosting: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIJobPosting***](OAIJobPosting.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listJobPostings**
```objc
-(NSURLSessionTask*) listJobPostingsWithStatus: (NSString*) status
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
        completionHandler: (void (^)(NSArray<OAIJobPosting>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* status = @"status_example"; //  (optional)
NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)

OAIJobPostingApi*apiInstance = [[OAIJobPostingApi alloc] init];

[apiInstance listJobPostingsWithStatus:status
              page:page
              pageSize:pageSize
          completionHandler: ^(NSArray<OAIJobPosting>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJobPostingApi->listJobPostings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **NSString***|  | [optional] 
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 

### Return type

[**NSArray<OAIJobPosting>***](OAIJobPosting.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateJobPosting**
```objc
-(NSURLSessionTask*) updateJobPostingWithId: (NSString*) _id
    jobPostingUpdate: (OAIJobPostingUpdate*) jobPostingUpdate
        completionHandler: (void (^)(OAIJobPosting* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAIJobPostingUpdate* jobPostingUpdate = [[OAIJobPostingUpdate alloc] init]; // 

OAIJobPostingApi*apiInstance = [[OAIJobPostingApi alloc] init];

[apiInstance updateJobPostingWithId:_id
              jobPostingUpdate:jobPostingUpdate
          completionHandler: ^(OAIJobPosting* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJobPostingApi->updateJobPosting: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **jobPostingUpdate** | [**OAIJobPostingUpdate***](OAIJobPostingUpdate.md)|  | 

### Return type

[**OAIJobPosting***](OAIJobPosting.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

