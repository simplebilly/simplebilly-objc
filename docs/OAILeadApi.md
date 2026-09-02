# OAILeadApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listLeadsApi**](OAILeadApi.md#listleadsapi) | **GET** /api/v1/support/leads | 
[**updateLeadApi**](OAILeadApi.md#updateleadapi) | **PUT** /api/v1/support/leads/{lead_id} | 


# **listLeadsApi**
```objc
-(NSURLSessionTask*) listLeadsApiWithStatus: (NSString*) status
    source: (NSString*) source
    search: (NSString*) search
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
        completionHandler: (void (^)(NSArray<OAILead>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* status = @"status_example"; //  (optional)
NSString* source = @"source_example"; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)

OAILeadApi*apiInstance = [[OAILeadApi alloc] init];

[apiInstance listLeadsApiWithStatus:status
              source:source
              search:search
              page:page
              pageSize:pageSize
          completionHandler: ^(NSArray<OAILead>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAILeadApi->listLeadsApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **NSString***|  | [optional] 
 **source** | **NSString***|  | [optional] 
 **search** | **NSString***|  | [optional] 
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 

### Return type

[**NSArray<OAILead>***](OAILead.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLeadApi**
```objc
-(NSURLSessionTask*) updateLeadApiWithLeadId: (NSString*) leadId
    leadUpdate: (OAILeadUpdate*) leadUpdate
        completionHandler: (void (^)(OAILead* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* leadId = @"leadId_example"; // 
OAILeadUpdate* leadUpdate = [[OAILeadUpdate alloc] init]; // 

OAILeadApi*apiInstance = [[OAILeadApi alloc] init];

[apiInstance updateLeadApiWithLeadId:leadId
              leadUpdate:leadUpdate
          completionHandler: ^(OAILead* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAILeadApi->updateLeadApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **leadId** | **NSString***|  | 
 **leadUpdate** | [**OAILeadUpdate***](OAILeadUpdate.md)|  | 

### Return type

[**OAILead***](OAILead.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

