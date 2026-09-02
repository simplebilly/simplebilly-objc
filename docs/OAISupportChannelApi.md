# OAISupportChannelApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createChannelApi**](OAISupportChannelApi.md#createchannelapi) | **POST** /api/v1/support/channels | 
[**deleteChannelApi**](OAISupportChannelApi.md#deletechannelapi) | **DELETE** /api/v1/support/channels/{channel_id} | 
[**listChannelsApi**](OAISupportChannelApi.md#listchannelsapi) | **GET** /api/v1/support/channels | 
[**updateChannelApi**](OAISupportChannelApi.md#updatechannelapi) | **PUT** /api/v1/support/channels/{channel_id} | 


# **createChannelApi**
```objc
-(NSURLSessionTask*) createChannelApiWithCreateChannelDto: (OAICreateChannelDto*) createChannelDto
        completionHandler: (void (^)(OAISupportChannel* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAICreateChannelDto* createChannelDto = [[OAICreateChannelDto alloc] init]; // 

OAISupportChannelApi*apiInstance = [[OAISupportChannelApi alloc] init];

[apiInstance createChannelApiWithCreateChannelDto:createChannelDto
          completionHandler: ^(OAISupportChannel* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupportChannelApi->createChannelApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createChannelDto** | [**OAICreateChannelDto***](OAICreateChannelDto.md)|  | 

### Return type

[**OAISupportChannel***](OAISupportChannel.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChannelApi**
```objc
-(NSURLSessionTask*) deleteChannelApiWithChannelId: (NSString*) channelId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* channelId = @"channelId_example"; // 

OAISupportChannelApi*apiInstance = [[OAISupportChannelApi alloc] init];

[apiInstance deleteChannelApiWithChannelId:channelId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAISupportChannelApi->deleteChannelApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listChannelsApi**
```objc
-(NSURLSessionTask*) listChannelsApiWithCompletionHandler: 
        (void (^)(NSArray<OAISupportChannel>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAISupportChannelApi*apiInstance = [[OAISupportChannelApi alloc] init];

[apiInstance listChannelsApiWithCompletionHandler: 
          ^(NSArray<OAISupportChannel>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupportChannelApi->listChannelsApi: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAISupportChannel>***](OAISupportChannel.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChannelApi**
```objc
-(NSURLSessionTask*) updateChannelApiWithChannelId: (NSString*) channelId
    updateChannelDto: (OAIUpdateChannelDto*) updateChannelDto
        completionHandler: (void (^)(OAISupportChannel* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* channelId = @"channelId_example"; // 
OAIUpdateChannelDto* updateChannelDto = [[OAIUpdateChannelDto alloc] init]; // 

OAISupportChannelApi*apiInstance = [[OAISupportChannelApi alloc] init];

[apiInstance updateChannelApiWithChannelId:channelId
              updateChannelDto:updateChannelDto
          completionHandler: ^(OAISupportChannel* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupportChannelApi->updateChannelApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channelId** | **NSString***|  | 
 **updateChannelDto** | [**OAIUpdateChannelDto***](OAIUpdateChannelDto.md)|  | 

### Return type

[**OAISupportChannel***](OAISupportChannel.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

