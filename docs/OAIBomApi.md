# OAIBomApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBom**](OAIBomApi.md#createbom) | **POST** /api/v1/boms | 
[**deleteBom**](OAIBomApi.md#deletebom) | **DELETE** /api/v1/boms/{bom_id} | 
[**getBom**](OAIBomApi.md#getbom) | **GET** /api/v1/boms/{bom_id} | 
[**listBoms**](OAIBomApi.md#listboms) | **GET** /api/v1/boms/ | 
[**updateBom**](OAIBomApi.md#updatebom) | **PUT** /api/v1/boms/{bom_id} | 


# **createBom**
```objc
-(NSURLSessionTask*) createBomWithBomCreate: (OAIBomCreate*) bomCreate
        completionHandler: (void (^)(OAIBom* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIBomCreate* bomCreate = [[OAIBomCreate alloc] init]; // 

OAIBomApi*apiInstance = [[OAIBomApi alloc] init];

[apiInstance createBomWithBomCreate:bomCreate
          completionHandler: ^(OAIBom* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBomApi->createBom: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bomCreate** | [**OAIBomCreate***](OAIBomCreate.md)|  | 

### Return type

[**OAIBom***](OAIBom.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBom**
```objc
-(NSURLSessionTask*) deleteBomWithBomId: (NSString*) bomId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* bomId = @"bomId_example"; // 

OAIBomApi*apiInstance = [[OAIBomApi alloc] init];

[apiInstance deleteBomWithBomId:bomId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIBomApi->deleteBom: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bomId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBom**
```objc
-(NSURLSessionTask*) getBomWithBomId: (NSString*) bomId
        completionHandler: (void (^)(OAIBom* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* bomId = @"bomId_example"; // 

OAIBomApi*apiInstance = [[OAIBomApi alloc] init];

[apiInstance getBomWithBomId:bomId
          completionHandler: ^(OAIBom* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBomApi->getBom: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bomId** | **NSString***|  | 

### Return type

[**OAIBom***](OAIBom.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBoms**
```objc
-(NSURLSessionTask*) listBomsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    productId: (NSString*) productId
        completionHandler: (void (^)(NSArray<OAIBom>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSString* productId = @"productId_example"; // Filter by finished product id. (optional)

OAIBomApi*apiInstance = [[OAIBomApi alloc] init];

[apiInstance listBomsWithPage:page
              pageSize:pageSize
              search:search
              productId:productId
          completionHandler: ^(NSArray<OAIBom>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBomApi->listBoms: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **search** | **NSString***|  | [optional] 
 **productId** | **NSString***| Filter by finished product id. | [optional] 

### Return type

[**NSArray<OAIBom>***](OAIBom.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBom**
```objc
-(NSURLSessionTask*) updateBomWithBomId: (NSString*) bomId
    bomUpdate: (OAIBomUpdate*) bomUpdate
        completionHandler: (void (^)(OAIBom* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* bomId = @"bomId_example"; // 
OAIBomUpdate* bomUpdate = [[OAIBomUpdate alloc] init]; // 

OAIBomApi*apiInstance = [[OAIBomApi alloc] init];

[apiInstance updateBomWithBomId:bomId
              bomUpdate:bomUpdate
          completionHandler: ^(OAIBom* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBomApi->updateBom: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bomId** | **NSString***|  | 
 **bomUpdate** | [**OAIBomUpdate***](OAIBomUpdate.md)|  | 

### Return type

[**OAIBom***](OAIBom.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

