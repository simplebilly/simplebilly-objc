# OAICustomerCommunicationApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCommunication**](OAICustomerCommunicationApi.md#createcommunication) | **POST** /api/v1/communications | 
[**customercommunicationRestore**](OAICustomerCommunicationApi.md#customercommunicationrestore) | **POST** /api/v1/communications/{communication_id}/restore | 
[**deleteCommunication**](OAICustomerCommunicationApi.md#deletecommunication) | **DELETE** /api/v1/communications/{communication_id} | 
[**getCommunication**](OAICustomerCommunicationApi.md#getcommunication) | **GET** /api/v1/communications/{communication_id} | 
[**getContactHistory**](OAICustomerCommunicationApi.md#getcontacthistory) | **GET** /api/v1/contacts/{contact_id}/communications | 
[**listCommunications**](OAICustomerCommunicationApi.md#listcommunications) | **GET** /api/v1/communications/ | 
[**updateCommunication**](OAICustomerCommunicationApi.md#updatecommunication) | **PUT** /api/v1/communications/{communication_id} | 


# **createCommunication**
```objc
-(NSURLSessionTask*) createCommunicationWithCustomerCommunicationCreate: (OAICustomerCommunicationCreate*) customerCommunicationCreate
        completionHandler: (void (^)(OAICustomerCommunication* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAICustomerCommunicationCreate* customerCommunicationCreate = [[OAICustomerCommunicationCreate alloc] init]; // 

OAICustomerCommunicationApi*apiInstance = [[OAICustomerCommunicationApi alloc] init];

[apiInstance createCommunicationWithCustomerCommunicationCreate:customerCommunicationCreate
          completionHandler: ^(OAICustomerCommunication* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerCommunicationApi->createCommunication: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerCommunicationCreate** | [**OAICustomerCommunicationCreate***](OAICustomerCommunicationCreate.md)|  | 

### Return type

[**OAICustomerCommunication***](OAICustomerCommunication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customercommunicationRestore**
```objc
-(NSURLSessionTask*) customercommunicationRestoreWithCommunicationId: (NSString*) communicationId
        completionHandler: (void (^)(OAICustomerCommunication* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* communicationId = @"communicationId_example"; // 

OAICustomerCommunicationApi*apiInstance = [[OAICustomerCommunicationApi alloc] init];

[apiInstance customercommunicationRestoreWithCommunicationId:communicationId
          completionHandler: ^(OAICustomerCommunication* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerCommunicationApi->customercommunicationRestore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communicationId** | **NSString***|  | 

### Return type

[**OAICustomerCommunication***](OAICustomerCommunication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCommunication**
```objc
-(NSURLSessionTask*) deleteCommunicationWithCommunicationId: (NSString*) communicationId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* communicationId = @"communicationId_example"; // 

OAICustomerCommunicationApi*apiInstance = [[OAICustomerCommunicationApi alloc] init];

[apiInstance deleteCommunicationWithCommunicationId:communicationId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICustomerCommunicationApi->deleteCommunication: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communicationId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommunication**
```objc
-(NSURLSessionTask*) getCommunicationWithCommunicationId: (NSString*) communicationId
        completionHandler: (void (^)(OAICustomerCommunication* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* communicationId = @"communicationId_example"; // 

OAICustomerCommunicationApi*apiInstance = [[OAICustomerCommunicationApi alloc] init];

[apiInstance getCommunicationWithCommunicationId:communicationId
          completionHandler: ^(OAICustomerCommunication* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerCommunicationApi->getCommunication: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communicationId** | **NSString***|  | 

### Return type

[**OAICustomerCommunication***](OAICustomerCommunication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContactHistory**
```objc
-(NSURLSessionTask*) getContactHistoryWithContactId: (NSString*) contactId
        completionHandler: (void (^)(OAIContactHistoryResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* contactId = @"contactId_example"; // 

OAICustomerCommunicationApi*apiInstance = [[OAICustomerCommunicationApi alloc] init];

[apiInstance getContactHistoryWithContactId:contactId
          completionHandler: ^(OAIContactHistoryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerCommunicationApi->getContactHistory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **NSString***|  | 

### Return type

[**OAIContactHistoryResponse***](OAIContactHistoryResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCommunications**
```objc
-(NSURLSessionTask*) listCommunicationsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    contactId: (NSString*) contactId
    channel: (OAICommunicationChannel*) channel
    direction: (OAICommunicationDirection*) direction
    from: (NSDate*) from
    to: (NSDate*) to
        completionHandler: (void (^)(NSArray<OAICustomerCommunication>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* contactId = @"contactId_example"; // Filter history to a single contact. (optional)
OAICommunicationChannel* channel = [[OAICommunicationChannel alloc] init]; //  (optional)
OAICommunicationDirection* direction = [[OAICommunicationDirection alloc] init]; //  (optional)
NSDate* from = @"2013-10-20T19:20:30+01:00"; // Only include communications after this ISO date (inclusive). (optional)
NSDate* to = @"2013-10-20T19:20:30+01:00"; // Only include communications before this ISO date (inclusive). (optional)

OAICustomerCommunicationApi*apiInstance = [[OAICustomerCommunicationApi alloc] init];

[apiInstance listCommunicationsWithPage:page
              pageSize:pageSize
              contactId:contactId
              channel:channel
              direction:direction
              from:from
              to:to
          completionHandler: ^(NSArray<OAICustomerCommunication>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerCommunicationApi->listCommunications: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **contactId** | **NSString***| Filter history to a single contact. | [optional] 
 **channel** | [**OAICommunicationChannel***](.md)|  | [optional] 
 **direction** | [**OAICommunicationDirection***](.md)|  | [optional] 
 **from** | **NSDate***| Only include communications after this ISO date (inclusive). | [optional] 
 **to** | **NSDate***| Only include communications before this ISO date (inclusive). | [optional] 

### Return type

[**NSArray<OAICustomerCommunication>***](OAICustomerCommunication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCommunication**
```objc
-(NSURLSessionTask*) updateCommunicationWithCommunicationId: (NSString*) communicationId
    customerCommunicationUpdate: (OAICustomerCommunicationUpdate*) customerCommunicationUpdate
        completionHandler: (void (^)(OAICustomerCommunication* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* communicationId = @"communicationId_example"; // 
OAICustomerCommunicationUpdate* customerCommunicationUpdate = [[OAICustomerCommunicationUpdate alloc] init]; // 

OAICustomerCommunicationApi*apiInstance = [[OAICustomerCommunicationApi alloc] init];

[apiInstance updateCommunicationWithCommunicationId:communicationId
              customerCommunicationUpdate:customerCommunicationUpdate
          completionHandler: ^(OAICustomerCommunication* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerCommunicationApi->updateCommunication: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communicationId** | **NSString***|  | 
 **customerCommunicationUpdate** | [**OAICustomerCommunicationUpdate***](OAICustomerCommunicationUpdate.md)|  | 

### Return type

[**OAICustomerCommunication***](OAICustomerCommunication.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

