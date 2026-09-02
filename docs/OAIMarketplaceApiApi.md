# OAIMarketplaceApiApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConnectionApi**](OAIMarketplaceApiApi.md#createconnectionapi) | **POST** /api/v1/marketplace/connections | Create a new connection (for API-key based platforms)
[**deleteConnectionApi**](OAIMarketplaceApiApi.md#deleteconnectionapi) | **DELETE** /api/v1/marketplace/connections/{connection_id} | Soft-delete a connection
[**getConnectionApi**](OAIMarketplaceApiApi.md#getconnectionapi) | **GET** /api/v1/marketplace/connections/{connection_id} | Get a single connection
[**getSyncDirectionApi**](OAIMarketplaceApiApi.md#getsyncdirectionapi) | **GET** /api/v1/marketplace/connections/{connection_id}/directions | Get current sync direction configuration for a connection
[**getSyncLogsApi**](OAIMarketplaceApiApi.md#getsynclogsapi) | **GET** /api/v1/marketplace/connections/{connection_id}/logs | Get sync logs for a connection
[**listConnectionsApi**](OAIMarketplaceApiApi.md#listconnectionsapi) | **GET** /api/v1/marketplace/connections | List connections for the current tenant
[**listPlatformsApi**](OAIMarketplaceApiApi.md#listplatformsapi) | **GET** /api/v1/marketplace/platforms | List all supported platforms
[**oauthAuthorizeApi**](OAIMarketplaceApiApi.md#oauthauthorizeapi) | **POST** /api/v1/marketplace/oauth/authorize | OAuth: initiate authorization flow
[**oauthCallbackApi**](OAIMarketplaceApiApi.md#oauthcallbackapi) | **POST** /api/v1/marketplace/oauth/callback | OAuth: handle callback after authorization
[**triggerSyncApi**](OAIMarketplaceApiApi.md#triggersyncapi) | **POST** /api/v1/marketplace/connections/{connection_id}/sync | Trigger sync for a connection
[**updateConnectionApi**](OAIMarketplaceApiApi.md#updateconnectionapi) | **PUT** /api/v1/marketplace/connections/{connection_id} | Update a connection
[**updateSyncDirectionApi**](OAIMarketplaceApiApi.md#updatesyncdirectionapi) | **PUT** /api/v1/marketplace/connections/{connection_id}/directions | Update per-entity sync direction configuration for a connection
[**webhookReceiverApi**](OAIMarketplaceApiApi.md#webhookreceiverapi) | **POST** /api/v1/marketplace/webhook/{platform}/{connection_id} | Webhook receiver


# **createConnectionApi**
```objc
-(NSURLSessionTask*) createConnectionApiWithCreateConnectionRequest: (OAICreateConnectionRequest*) createConnectionRequest
        completionHandler: (void (^)(OAIMarketplaceConnection* output, NSError* error)) handler;
```

Create a new connection (for API-key based platforms)

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAICreateConnectionRequest* createConnectionRequest = [[OAICreateConnectionRequest alloc] init]; // 

OAIMarketplaceApiApi*apiInstance = [[OAIMarketplaceApiApi alloc] init];

// Create a new connection (for API-key based platforms)
[apiInstance createConnectionApiWithCreateConnectionRequest:createConnectionRequest
          completionHandler: ^(OAIMarketplaceConnection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMarketplaceApiApi->createConnectionApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConnectionRequest** | [**OAICreateConnectionRequest***](OAICreateConnectionRequest.md)|  | 

### Return type

[**OAIMarketplaceConnection***](OAIMarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteConnectionApi**
```objc
-(NSURLSessionTask*) deleteConnectionApiWithConnectionId: (NSString*) connectionId
        completionHandler: (void (^)(NSError* error)) handler;
```

Soft-delete a connection

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* connectionId = @"connectionId_example"; // 

OAIMarketplaceApiApi*apiInstance = [[OAIMarketplaceApiApi alloc] init];

// Soft-delete a connection
[apiInstance deleteConnectionApiWithConnectionId:connectionId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIMarketplaceApiApi->deleteConnectionApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConnectionApi**
```objc
-(NSURLSessionTask*) getConnectionApiWithConnectionId: (NSString*) connectionId
        completionHandler: (void (^)(OAIMarketplaceConnection* output, NSError* error)) handler;
```

Get a single connection

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* connectionId = @"connectionId_example"; // 

OAIMarketplaceApiApi*apiInstance = [[OAIMarketplaceApiApi alloc] init];

// Get a single connection
[apiInstance getConnectionApiWithConnectionId:connectionId
          completionHandler: ^(OAIMarketplaceConnection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMarketplaceApiApi->getConnectionApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **NSString***|  | 

### Return type

[**OAIMarketplaceConnection***](OAIMarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSyncDirectionApi**
```objc
-(NSURLSessionTask*) getSyncDirectionApiWithConnectionId: (NSString*) connectionId
        completionHandler: (void (^)(NSError* error)) handler;
```

Get current sync direction configuration for a connection

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* connectionId = @"connectionId_example"; // 

OAIMarketplaceApiApi*apiInstance = [[OAIMarketplaceApiApi alloc] init];

// Get current sync direction configuration for a connection
[apiInstance getSyncDirectionApiWithConnectionId:connectionId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIMarketplaceApiApi->getSyncDirectionApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSyncLogsApi**
```objc
-(NSURLSessionTask*) getSyncLogsApiWithConnectionId: (NSString*) connectionId
        completionHandler: (void (^)(NSArray<OAISyncLog>* output, NSError* error)) handler;
```

Get sync logs for a connection

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* connectionId = @"connectionId_example"; // 

OAIMarketplaceApiApi*apiInstance = [[OAIMarketplaceApiApi alloc] init];

// Get sync logs for a connection
[apiInstance getSyncLogsApiWithConnectionId:connectionId
          completionHandler: ^(NSArray<OAISyncLog>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMarketplaceApiApi->getSyncLogsApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **NSString***|  | 

### Return type

[**NSArray<OAISyncLog>***](OAISyncLog.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConnectionsApi**
```objc
-(NSURLSessionTask*) listConnectionsApiWithCompletionHandler: 
        (void (^)(NSArray<OAIMarketplaceConnection>* output, NSError* error)) handler;
```

List connections for the current tenant

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIMarketplaceApiApi*apiInstance = [[OAIMarketplaceApiApi alloc] init];

// List connections for the current tenant
[apiInstance listConnectionsApiWithCompletionHandler: 
          ^(NSArray<OAIMarketplaceConnection>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMarketplaceApiApi->listConnectionsApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIMarketplaceConnection>***](OAIMarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPlatformsApi**
```objc
-(NSURLSessionTask*) listPlatformsApiWithCompletionHandler: 
        (void (^)(NSArray<OAIPlatformInfo>* output, NSError* error)) handler;
```

List all supported platforms

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIMarketplaceApiApi*apiInstance = [[OAIMarketplaceApiApi alloc] init];

// List all supported platforms
[apiInstance listPlatformsApiWithCompletionHandler: 
          ^(NSArray<OAIPlatformInfo>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMarketplaceApiApi->listPlatformsApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIPlatformInfo>***](OAIPlatformInfo.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthAuthorizeApi**
```objc
-(NSURLSessionTask*) oauthAuthorizeApiWithOAuthAuthorizeRequest: (OAIOAuthAuthorizeRequest*) oAuthAuthorizeRequest
        completionHandler: (void (^)(OAIOAuthAuthorizeResponse* output, NSError* error)) handler;
```

OAuth: initiate authorization flow

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIOAuthAuthorizeRequest* oAuthAuthorizeRequest = [[OAIOAuthAuthorizeRequest alloc] init]; // 

OAIMarketplaceApiApi*apiInstance = [[OAIMarketplaceApiApi alloc] init];

// OAuth: initiate authorization flow
[apiInstance oauthAuthorizeApiWithOAuthAuthorizeRequest:oAuthAuthorizeRequest
          completionHandler: ^(OAIOAuthAuthorizeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMarketplaceApiApi->oauthAuthorizeApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oAuthAuthorizeRequest** | [**OAIOAuthAuthorizeRequest***](OAIOAuthAuthorizeRequest.md)|  | 

### Return type

[**OAIOAuthAuthorizeResponse***](OAIOAuthAuthorizeResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthCallbackApi**
```objc
-(NSURLSessionTask*) oauthCallbackApiWithOAuthCallbackRequest: (OAIOAuthCallbackRequest*) oAuthCallbackRequest
        completionHandler: (void (^)(OAIMarketplaceConnection* output, NSError* error)) handler;
```

OAuth: handle callback after authorization

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIOAuthCallbackRequest* oAuthCallbackRequest = [[OAIOAuthCallbackRequest alloc] init]; // 

OAIMarketplaceApiApi*apiInstance = [[OAIMarketplaceApiApi alloc] init];

// OAuth: handle callback after authorization
[apiInstance oauthCallbackApiWithOAuthCallbackRequest:oAuthCallbackRequest
          completionHandler: ^(OAIMarketplaceConnection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMarketplaceApiApi->oauthCallbackApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oAuthCallbackRequest** | [**OAIOAuthCallbackRequest***](OAIOAuthCallbackRequest.md)|  | 

### Return type

[**OAIMarketplaceConnection***](OAIMarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerSyncApi**
```objc
-(NSURLSessionTask*) triggerSyncApiWithConnectionId: (NSString*) connectionId
    syncType: (NSString*) syncType
    direction: (NSString*) direction
        completionHandler: (void (^)(OAISyncSummary* output, NSError* error)) handler;
```

Trigger sync for a connection

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* connectionId = @"connectionId_example"; // 
NSString* syncType = @"syncType_example"; //  (optional)
NSString* direction = @"direction_example"; //  (optional)

OAIMarketplaceApiApi*apiInstance = [[OAIMarketplaceApiApi alloc] init];

// Trigger sync for a connection
[apiInstance triggerSyncApiWithConnectionId:connectionId
              syncType:syncType
              direction:direction
          completionHandler: ^(OAISyncSummary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMarketplaceApiApi->triggerSyncApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **NSString***|  | 
 **syncType** | **NSString***|  | [optional] 
 **direction** | **NSString***|  | [optional] 

### Return type

[**OAISyncSummary***](OAISyncSummary.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateConnectionApi**
```objc
-(NSURLSessionTask*) updateConnectionApiWithConnectionId: (NSString*) connectionId
    updateConnectionRequest: (OAIUpdateConnectionRequest*) updateConnectionRequest
        completionHandler: (void (^)(OAIMarketplaceConnection* output, NSError* error)) handler;
```

Update a connection

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* connectionId = @"connectionId_example"; // 
OAIUpdateConnectionRequest* updateConnectionRequest = [[OAIUpdateConnectionRequest alloc] init]; // 

OAIMarketplaceApiApi*apiInstance = [[OAIMarketplaceApiApi alloc] init];

// Update a connection
[apiInstance updateConnectionApiWithConnectionId:connectionId
              updateConnectionRequest:updateConnectionRequest
          completionHandler: ^(OAIMarketplaceConnection* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMarketplaceApiApi->updateConnectionApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **NSString***|  | 
 **updateConnectionRequest** | [**OAIUpdateConnectionRequest***](OAIUpdateConnectionRequest.md)|  | 

### Return type

[**OAIMarketplaceConnection***](OAIMarketplaceConnection.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSyncDirectionApi**
```objc
-(NSURLSessionTask*) updateSyncDirectionApiWithConnectionId: (NSString*) connectionId
    updateSyncDirectionRequest: (OAIUpdateSyncDirectionRequest*) updateSyncDirectionRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Update per-entity sync direction configuration for a connection

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* connectionId = @"connectionId_example"; // 
OAIUpdateSyncDirectionRequest* updateSyncDirectionRequest = [[OAIUpdateSyncDirectionRequest alloc] init]; // 

OAIMarketplaceApiApi*apiInstance = [[OAIMarketplaceApiApi alloc] init];

// Update per-entity sync direction configuration for a connection
[apiInstance updateSyncDirectionApiWithConnectionId:connectionId
              updateSyncDirectionRequest:updateSyncDirectionRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIMarketplaceApiApi->updateSyncDirectionApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionId** | **NSString***|  | 
 **updateSyncDirectionRequest** | [**OAIUpdateSyncDirectionRequest***](OAIUpdateSyncDirectionRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhookReceiverApi**
```objc
-(NSURLSessionTask*) webhookReceiverApiWithPlatform: (NSString*) platform
    connectionId: (NSString*) connectionId
        completionHandler: (void (^)(NSError* error)) handler;
```

Webhook receiver

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* platform = @"platform_example"; // 
NSString* connectionId = @"connectionId_example"; // 

OAIMarketplaceApiApi*apiInstance = [[OAIMarketplaceApiApi alloc] init];

// Webhook receiver
[apiInstance webhookReceiverApiWithPlatform:platform
              connectionId:connectionId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIMarketplaceApiApi->webhookReceiverApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platform** | **NSString***|  | 
 **connectionId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

