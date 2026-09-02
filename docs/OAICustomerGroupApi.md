# OAICustomerGroupApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGroupMembers**](OAICustomerGroupApi.md#addgroupmembers) | **POST** /api/v1/customer-groups/{customer_group_id}/members | 
[**createCustomerGroup**](OAICustomerGroupApi.md#createcustomergroup) | **POST** /api/v1/customer-groups | 
[**deleteCustomerGroup**](OAICustomerGroupApi.md#deletecustomergroup) | **DELETE** /api/v1/customer-groups/{customer_group_id} | 
[**getCustomerGroup**](OAICustomerGroupApi.md#getcustomergroup) | **GET** /api/v1/customer-groups/{customer_group_id} | 
[**listCustomerGroups**](OAICustomerGroupApi.md#listcustomergroups) | **GET** /api/v1/customer-groups/ | 
[**updateCustomerGroup**](OAICustomerGroupApi.md#updatecustomergroup) | **PUT** /api/v1/customer-groups/{customer_group_id} | 


# **addGroupMembers**
```objc
-(NSURLSessionTask*) addGroupMembersWithCustomerGroupId: (NSString*) customerGroupId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAICustomerGroup* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* customerGroupId = @"customerGroupId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAICustomerGroupApi*apiInstance = [[OAICustomerGroupApi alloc] init];

[apiInstance addGroupMembersWithCustomerGroupId:customerGroupId
              body:body
          completionHandler: ^(OAICustomerGroup* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerGroupApi->addGroupMembers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerGroupId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAICustomerGroup***](OAICustomerGroup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCustomerGroup**
```objc
-(NSURLSessionTask*) createCustomerGroupWithCustomerGroupCreate: (OAICustomerGroupCreate*) customerGroupCreate
        completionHandler: (void (^)(OAICustomerGroup* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAICustomerGroupCreate* customerGroupCreate = [[OAICustomerGroupCreate alloc] init]; // 

OAICustomerGroupApi*apiInstance = [[OAICustomerGroupApi alloc] init];

[apiInstance createCustomerGroupWithCustomerGroupCreate:customerGroupCreate
          completionHandler: ^(OAICustomerGroup* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerGroupApi->createCustomerGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerGroupCreate** | [**OAICustomerGroupCreate***](OAICustomerGroupCreate.md)|  | 

### Return type

[**OAICustomerGroup***](OAICustomerGroup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomerGroup**
```objc
-(NSURLSessionTask*) deleteCustomerGroupWithCustomerGroupId: (NSString*) customerGroupId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* customerGroupId = @"customerGroupId_example"; // 

OAICustomerGroupApi*apiInstance = [[OAICustomerGroupApi alloc] init];

[apiInstance deleteCustomerGroupWithCustomerGroupId:customerGroupId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICustomerGroupApi->deleteCustomerGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerGroupId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerGroup**
```objc
-(NSURLSessionTask*) getCustomerGroupWithCustomerGroupId: (NSString*) customerGroupId
        completionHandler: (void (^)(OAICustomerGroup* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* customerGroupId = @"customerGroupId_example"; // 

OAICustomerGroupApi*apiInstance = [[OAICustomerGroupApi alloc] init];

[apiInstance getCustomerGroupWithCustomerGroupId:customerGroupId
          completionHandler: ^(OAICustomerGroup* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerGroupApi->getCustomerGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerGroupId** | **NSString***|  | 

### Return type

[**OAICustomerGroup***](OAICustomerGroup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCustomerGroups**
```objc
-(NSURLSessionTask*) listCustomerGroupsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAICustomerGroup>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAICustomerGroupApi*apiInstance = [[OAICustomerGroupApi alloc] init];

[apiInstance listCustomerGroupsWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAICustomerGroup>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerGroupApi->listCustomerGroups: %@", error);
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

[**NSArray<OAICustomerGroup>***](OAICustomerGroup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomerGroup**
```objc
-(NSURLSessionTask*) updateCustomerGroupWithCustomerGroupId: (NSString*) customerGroupId
    customerGroupUpdate: (OAICustomerGroupUpdate*) customerGroupUpdate
        completionHandler: (void (^)(OAICustomerGroup* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* customerGroupId = @"customerGroupId_example"; // 
OAICustomerGroupUpdate* customerGroupUpdate = [[OAICustomerGroupUpdate alloc] init]; // 

OAICustomerGroupApi*apiInstance = [[OAICustomerGroupApi alloc] init];

[apiInstance updateCustomerGroupWithCustomerGroupId:customerGroupId
              customerGroupUpdate:customerGroupUpdate
          completionHandler: ^(OAICustomerGroup* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerGroupApi->updateCustomerGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerGroupId** | **NSString***|  | 
 **customerGroupUpdate** | [**OAICustomerGroupUpdate***](OAICustomerGroupUpdate.md)|  | 

### Return type

[**OAICustomerGroup***](OAICustomerGroup.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

