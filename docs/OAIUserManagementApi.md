# OAIUserManagementApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUser**](OAIUserManagementApi.md#getuser) | **GET** /api/v1/users/{user_id} | 
[**listUsers**](OAIUserManagementApi.md#listusers) | **GET** /api/v1/users | 
[**removeUser**](OAIUserManagementApi.md#removeuser) | **DELETE** /api/v1/users/{user_id} | 
[**updateUserPermissions**](OAIUserManagementApi.md#updateuserpermissions) | **PUT** /api/v1/users/{user_id}/permissions | 
[**updateUserRole**](OAIUserManagementApi.md#updateuserrole) | **PUT** /api/v1/users/{user_id}/role | 


# **getUser**
```objc
-(NSURLSessionTask*) getUserWithUserId: (NSString*) userId
        completionHandler: (void (^)(OAITenantUser* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* userId = @"userId_example"; // 

OAIUserManagementApi*apiInstance = [[OAIUserManagementApi alloc] init];

[apiInstance getUserWithUserId:userId
          completionHandler: ^(OAITenantUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIUserManagementApi->getUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***|  | 

### Return type

[**OAITenantUser***](OAITenantUser.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUsers**
```objc
-(NSURLSessionTask*) listUsersWithCompletionHandler: 
        (void (^)(NSArray<OAITenantUser>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIUserManagementApi*apiInstance = [[OAIUserManagementApi alloc] init];

[apiInstance listUsersWithCompletionHandler: 
          ^(NSArray<OAITenantUser>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIUserManagementApi->listUsers: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAITenantUser>***](OAITenantUser.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUser**
```objc
-(NSURLSessionTask*) removeUserWithUserId: (NSString*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* userId = @"userId_example"; // 

OAIUserManagementApi*apiInstance = [[OAIUserManagementApi alloc] init];

[apiInstance removeUserWithUserId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIUserManagementApi->removeUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserPermissions**
```objc
-(NSURLSessionTask*) updateUserPermissionsWithUserId: (NSString*) userId
    updatePermissionsPayload: (OAIUpdatePermissionsPayload*) updatePermissionsPayload
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* userId = @"userId_example"; // 
OAIUpdatePermissionsPayload* updatePermissionsPayload = [[OAIUpdatePermissionsPayload alloc] init]; // 

OAIUserManagementApi*apiInstance = [[OAIUserManagementApi alloc] init];

[apiInstance updateUserPermissionsWithUserId:userId
              updatePermissionsPayload:updatePermissionsPayload
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIUserManagementApi->updateUserPermissions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***|  | 
 **updatePermissionsPayload** | [**OAIUpdatePermissionsPayload***](OAIUpdatePermissionsPayload.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserRole**
```objc
-(NSURLSessionTask*) updateUserRoleWithUserId: (NSString*) userId
    updateRolePayload: (OAIUpdateRolePayload*) updateRolePayload
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* userId = @"userId_example"; // 
OAIUpdateRolePayload* updateRolePayload = [[OAIUpdateRolePayload alloc] init]; // 

OAIUserManagementApi*apiInstance = [[OAIUserManagementApi alloc] init];

[apiInstance updateUserRoleWithUserId:userId
              updateRolePayload:updateRolePayload
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIUserManagementApi->updateUserRole: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***|  | 
 **updateRolePayload** | [**OAIUpdateRolePayload***](OAIUpdateRolePayload.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

