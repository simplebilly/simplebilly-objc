# OAIUserApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changePassword**](OAIUserApi.md#changepassword) | **POST** /user/change-password | Change the current user&#39;s password (requires the current password).
[**createTeam**](OAIUserApi.md#createteam) | **POST** /user/teams | Create a new team within the current tenant
[**generateApiKey**](OAIUserApi.md#generateapikey) | **POST** /user/api-key | Generate a new API key for the current user
[**inviteUser**](OAIUserApi.md#inviteuser) | **POST** /user/invite | Invite a user to the current tenant/organization
[**listTeams**](OAIUserApi.md#listteams) | **GET** /user/teams | List all teams in the current tenant
[**removeUserFromOrg**](OAIUserApi.md#removeuserfromorg) | **DELETE** /user/remove | Remove a user from the current organization
[**updateProfile**](OAIUserApi.md#updateprofile) | **PUT** /user/profile | Update the current user&#39;s profile
[**userProfile**](OAIUserApi.md#userprofile) | **GET** /user/profile | Get the current user&#39;s profile
[**userTenants**](OAIUserApi.md#usertenants) | **GET** /user/tenants | List all tenants (organizations) the current user belongs to


# **changePassword**
```objc
-(NSURLSessionTask*) changePasswordWithChangePasswordRequest: (OAIChangePasswordRequest*) changePasswordRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Change the current user's password (requires the current password).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIChangePasswordRequest* changePasswordRequest = [[OAIChangePasswordRequest alloc] init]; // 

OAIUserApi*apiInstance = [[OAIUserApi alloc] init];

// Change the current user's password (requires the current password).
[apiInstance changePasswordWithChangePasswordRequest:changePasswordRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIUserApi->changePassword: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changePasswordRequest** | [**OAIChangePasswordRequest***](OAIChangePasswordRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTeam**
```objc
-(NSURLSessionTask*) createTeamWithTeamCreate: (OAITeamCreate*) teamCreate
        completionHandler: (void (^)(OAIApiResponseTeam* output, NSError* error)) handler;
```

Create a new team within the current tenant

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAITeamCreate* teamCreate = [[OAITeamCreate alloc] init]; // 

OAIUserApi*apiInstance = [[OAIUserApi alloc] init];

// Create a new team within the current tenant
[apiInstance createTeamWithTeamCreate:teamCreate
          completionHandler: ^(OAIApiResponseTeam* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIUserApi->createTeam: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamCreate** | [**OAITeamCreate***](OAITeamCreate.md)|  | 

### Return type

[**OAIApiResponseTeam***](OAIApiResponseTeam.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateApiKey**
```objc
-(NSURLSessionTask*) generateApiKeyWithCompletionHandler: 
        (void (^)(OAIApiResponseString* output, NSError* error)) handler;
```

Generate a new API key for the current user

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIUserApi*apiInstance = [[OAIUserApi alloc] init];

// Generate a new API key for the current user
[apiInstance generateApiKeyWithCompletionHandler: 
          ^(OAIApiResponseString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIUserApi->generateApiKey: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIApiResponseString***](OAIApiResponseString.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inviteUser**
```objc
-(NSURLSessionTask*) inviteUserWithInviteRequest: (OAIInviteRequest*) inviteRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Invite a user to the current tenant/organization

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIInviteRequest* inviteRequest = [[OAIInviteRequest alloc] init]; // 

OAIUserApi*apiInstance = [[OAIUserApi alloc] init];

// Invite a user to the current tenant/organization
[apiInstance inviteUserWithInviteRequest:inviteRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIUserApi->inviteUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteRequest** | [**OAIInviteRequest***](OAIInviteRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTeams**
```objc
-(NSURLSessionTask*) listTeamsWithCompletionHandler: 
        (void (^)(OAIApiResponseVecTeam* output, NSError* error)) handler;
```

List all teams in the current tenant

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIUserApi*apiInstance = [[OAIUserApi alloc] init];

// List all teams in the current tenant
[apiInstance listTeamsWithCompletionHandler: 
          ^(OAIApiResponseVecTeam* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIUserApi->listTeams: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIApiResponseVecTeam***](OAIApiResponseVecTeam.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserFromOrg**
```objc
-(NSURLSessionTask*) removeUserFromOrgWithRemoveUserRequest: (OAIRemoveUserRequest*) removeUserRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Remove a user from the current organization

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIRemoveUserRequest* removeUserRequest = [[OAIRemoveUserRequest alloc] init]; // 

OAIUserApi*apiInstance = [[OAIUserApi alloc] init];

// Remove a user from the current organization
[apiInstance removeUserFromOrgWithRemoveUserRequest:removeUserRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIUserApi->removeUserFromOrg: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **removeUserRequest** | [**OAIRemoveUserRequest***](OAIRemoveUserRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfile**
```objc
-(NSURLSessionTask*) updateProfileWithUpdateProfileRequest: (OAIUpdateProfileRequest*) updateProfileRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Update the current user's profile

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIUpdateProfileRequest* updateProfileRequest = [[OAIUpdateProfileRequest alloc] init]; // 

OAIUserApi*apiInstance = [[OAIUserApi alloc] init];

// Update the current user's profile
[apiInstance updateProfileWithUpdateProfileRequest:updateProfileRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIUserApi->updateProfile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateProfileRequest** | [**OAIUpdateProfileRequest***](OAIUpdateProfileRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userProfile**
```objc
-(NSURLSessionTask*) userProfileWithCompletionHandler: 
        (void (^)(OAIApiResponseUserProfile* output, NSError* error)) handler;
```

Get the current user's profile

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIUserApi*apiInstance = [[OAIUserApi alloc] init];

// Get the current user's profile
[apiInstance userProfileWithCompletionHandler: 
          ^(OAIApiResponseUserProfile* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIUserApi->userProfile: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIApiResponseUserProfile***](OAIApiResponseUserProfile.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userTenants**
```objc
-(NSURLSessionTask*) userTenantsWithCompletionHandler: 
        (void (^)(OAIApiResponseVecUserTenantInfo* output, NSError* error)) handler;
```

List all tenants (organizations) the current user belongs to

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIUserApi*apiInstance = [[OAIUserApi alloc] init];

// List all tenants (organizations) the current user belongs to
[apiInstance userTenantsWithCompletionHandler: 
          ^(OAIApiResponseVecUserTenantInfo* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIUserApi->userTenants: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIApiResponseVecUserTenantInfo***](OAIApiResponseVecUserTenantInfo.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

