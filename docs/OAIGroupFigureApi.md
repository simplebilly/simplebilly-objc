# OAIGroupFigureApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroupFigure**](OAIGroupFigureApi.md#creategroupfigure) | **POST** /api/v1/group-figures | 
[**deleteGroupFigure**](OAIGroupFigureApi.md#deletegroupfigure) | **DELETE** /api/v1/group-figures/{year} | 
[**getGroupFigure**](OAIGroupFigureApi.md#getgroupfigure) | **GET** /api/v1/group-figures/{year} | 
[**getGroupFigures**](OAIGroupFigureApi.md#getgroupfigures) | **GET** /api/v1/group-figures/ | 
[**updateGroupFigure**](OAIGroupFigureApi.md#updategroupfigure) | **PUT** /api/v1/group-figures/{year} | 


# **createGroupFigure**
```objc
-(NSURLSessionTask*) createGroupFigureWithGroupFigureCreate: (OAIGroupFigureCreate*) groupFigureCreate
        completionHandler: (void (^)(OAIGroupFigure* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIGroupFigureCreate* groupFigureCreate = [[OAIGroupFigureCreate alloc] init]; // 

OAIGroupFigureApi*apiInstance = [[OAIGroupFigureApi alloc] init];

[apiInstance createGroupFigureWithGroupFigureCreate:groupFigureCreate
          completionHandler: ^(OAIGroupFigure* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupFigureApi->createGroupFigure: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupFigureCreate** | [**OAIGroupFigureCreate***](OAIGroupFigureCreate.md)|  | 

### Return type

[**OAIGroupFigure***](OAIGroupFigure.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupFigure**
```objc
-(NSURLSessionTask*) deleteGroupFigureWithYear: (NSNumber*) year
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIGroupFigureApi*apiInstance = [[OAIGroupFigureApi alloc] init];

[apiInstance deleteGroupFigureWithYear:year
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIGroupFigureApi->deleteGroupFigure: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupFigure**
```objc
-(NSURLSessionTask*) getGroupFigureWithYear: (NSNumber*) year
        completionHandler: (void (^)(OAIGroupFigure* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 

OAIGroupFigureApi*apiInstance = [[OAIGroupFigureApi alloc] init];

[apiInstance getGroupFigureWithYear:year
          completionHandler: ^(OAIGroupFigure* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupFigureApi->getGroupFigure: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 

### Return type

[**OAIGroupFigure***](OAIGroupFigure.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupFigures**
```objc
-(NSURLSessionTask*) getGroupFiguresWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIGroupFigure>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIGroupFigureApi*apiInstance = [[OAIGroupFigureApi alloc] init];

[apiInstance getGroupFiguresWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIGroupFigure>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupFigureApi->getGroupFigures: %@", error);
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

[**NSArray<OAIGroupFigure>***](OAIGroupFigure.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupFigure**
```objc
-(NSURLSessionTask*) updateGroupFigureWithYear: (NSNumber*) year
    groupFigureUpdate: (OAIGroupFigureUpdate*) groupFigureUpdate
        completionHandler: (void (^)(OAIGroupFigure* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 
OAIGroupFigureUpdate* groupFigureUpdate = [[OAIGroupFigureUpdate alloc] init]; // 

OAIGroupFigureApi*apiInstance = [[OAIGroupFigureApi alloc] init];

[apiInstance updateGroupFigureWithYear:year
              groupFigureUpdate:groupFigureUpdate
          completionHandler: ^(OAIGroupFigure* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupFigureApi->updateGroupFigure: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 
 **groupFigureUpdate** | [**OAIGroupFigureUpdate***](OAIGroupFigureUpdate.md)|  | 

### Return type

[**OAIGroupFigure***](OAIGroupFigure.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

