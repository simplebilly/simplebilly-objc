# OAIContactApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contactSchema**](OAIContactApi.md#contactschema) | **GET** /api/v1/contacts/schema | Serve JSON Schema for client-side validation
[**contactTimeline**](OAIContactApi.md#contacttimeline) | **GET** /api/v1/contacts/{contact_id}/timeline | Get the full per-contact timeline (Xentral §4.6/4.7).
[**createContact**](OAIContactApi.md#createcontact) | **POST** /api/v1/contacts | Create contact
[**deleteContact**](OAIContactApi.md#deletecontact) | **DELETE** /api/v1/contacts/{contact_id} | Soft-delete contact
[**getContact**](OAIContactApi.md#getcontact) | **GET** /api/v1/contacts/{contact_id} | Get single contact
[**listContacts**](OAIContactApi.md#listcontacts) | **GET** /api/v1/contacts | List contacts with search, type filter, and pagination
[**salesVolume**](OAIContactApi.md#salesvolume) | **GET** /api/v1/contacts/sales-volume | Sales volume per contact
[**updateContact**](OAIContactApi.md#updatecontact) | **PUT** /api/v1/contacts/{contact_id} | Update contact


# **contactSchema**
```objc
-(NSURLSessionTask*) contactSchemaWithCompletionHandler: 
        (void (^)(OAIAnyType* output, NSError* error)) handler;
```

Serve JSON Schema for client-side validation

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIContactApi*apiInstance = [[OAIContactApi alloc] init];

// Serve JSON Schema for client-side validation
[apiInstance contactSchemaWithCompletionHandler: 
          ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIContactApi->contactSchema: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactTimeline**
```objc
-(NSURLSessionTask*) contactTimelineWithContactId: (NSString*) contactId
        completionHandler: (void (^)(OAIContactTimelineResponse* output, NSError* error)) handler;
```

Get the full per-contact timeline (Xentral §4.6/4.7).

Aggregates communications, quotations, orders, invoices and uploaded documents for a contact, merged into a single reverse-chronological feed.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* contactId = @"contactId_example"; // 

OAIContactApi*apiInstance = [[OAIContactApi alloc] init];

// Get the full per-contact timeline (Xentral §4.6/4.7).
[apiInstance contactTimelineWithContactId:contactId
          completionHandler: ^(OAIContactTimelineResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIContactApi->contactTimeline: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **NSString***|  | 

### Return type

[**OAIContactTimelineResponse***](OAIContactTimelineResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createContact**
```objc
-(NSURLSessionTask*) createContactWithBody: (OAIAnyType*) body
        completionHandler: (void (^)(OAIContact* output, NSError* error)) handler;
```

Create contact

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIContactApi*apiInstance = [[OAIContactApi alloc] init];

// Create contact
[apiInstance createContactWithBody:body
          completionHandler: ^(OAIContact* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIContactApi->createContact: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIContact***](OAIContact.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContact**
```objc
-(NSURLSessionTask*) deleteContactWithContactId: (NSString*) contactId
        completionHandler: (void (^)(NSError* error)) handler;
```

Soft-delete contact

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* contactId = @"contactId_example"; // 

OAIContactApi*apiInstance = [[OAIContactApi alloc] init];

// Soft-delete contact
[apiInstance deleteContactWithContactId:contactId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIContactApi->deleteContact: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContact**
```objc
-(NSURLSessionTask*) getContactWithContactId: (NSString*) contactId
        completionHandler: (void (^)(OAIContact* output, NSError* error)) handler;
```

Get single contact

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* contactId = @"contactId_example"; // 

OAIContactApi*apiInstance = [[OAIContactApi alloc] init];

// Get single contact
[apiInstance getContactWithContactId:contactId
          completionHandler: ^(OAIContact* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIContactApi->getContact: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **NSString***|  | 

### Return type

[**OAIContact***](OAIContact.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContacts**
```objc
-(NSURLSessionTask*) listContactsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    contactType: (NSString*) contactType
    tag: (NSString*) tag
        completionHandler: (void (^)(NSArray<OAIContact>* output, NSError* error)) handler;
```

List contacts with search, type filter, and pagination

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSString* contactType = @"contactType_example"; //  (optional)
NSString* tag = @"tag_example"; //  (optional)

OAIContactApi*apiInstance = [[OAIContactApi alloc] init];

// List contacts with search, type filter, and pagination
[apiInstance listContactsWithPage:page
              pageSize:pageSize
              search:search
              contactType:contactType
              tag:tag
          completionHandler: ^(NSArray<OAIContact>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIContactApi->listContacts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **search** | **NSString***|  | [optional] 
 **contactType** | **NSString***|  | [optional] 
 **tag** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIContact>***](OAIContact.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **salesVolume**
```objc
-(NSURLSessionTask*) salesVolumeWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    contactType: (NSString*) contactType
    tag: (NSString*) tag
        completionHandler: (void (^)(OAISalesVolumeReport* output, NSError* error)) handler;
```

Sales volume per contact

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSString* contactType = @"contactType_example"; //  (optional)
NSString* tag = @"tag_example"; //  (optional)

OAIContactApi*apiInstance = [[OAIContactApi alloc] init];

// Sales volume per contact
[apiInstance salesVolumeWithPage:page
              pageSize:pageSize
              search:search
              contactType:contactType
              tag:tag
          completionHandler: ^(OAISalesVolumeReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIContactApi->salesVolume: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **search** | **NSString***|  | [optional] 
 **contactType** | **NSString***|  | [optional] 
 **tag** | **NSString***|  | [optional] 

### Return type

[**OAISalesVolumeReport***](OAISalesVolumeReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateContact**
```objc
-(NSURLSessionTask*) updateContactWithContactId: (NSString*) contactId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIContact* output, NSError* error)) handler;
```

Update contact

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* contactId = @"contactId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIContactApi*apiInstance = [[OAIContactApi alloc] init];

// Update contact
[apiInstance updateContactWithContactId:contactId
              body:body
          completionHandler: ^(OAIContact* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIContactApi->updateContact: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIContact***](OAIContact.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

