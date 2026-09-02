# OAISilentPartnerApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSilentPartner**](OAISilentPartnerApi.md#createsilentpartner) | **POST** /api/v1/silent-partners | 
[**deleteSilentPartner**](OAISilentPartnerApi.md#deletesilentpartner) | **DELETE** /api/v1/silent-partners/{id} | 
[**getSilentPartner**](OAISilentPartnerApi.md#getsilentpartner) | **GET** /api/v1/silent-partners/{id} | 
[**getSilentPartners**](OAISilentPartnerApi.md#getsilentpartners) | **GET** /api/v1/silent-partners/ | 
[**updateSilentPartner**](OAISilentPartnerApi.md#updatesilentpartner) | **PUT** /api/v1/silent-partners/{id} | 


# **createSilentPartner**
```objc
-(NSURLSessionTask*) createSilentPartnerWithSilentPartnerCreate: (OAISilentPartnerCreate*) silentPartnerCreate
        completionHandler: (void (^)(OAISilentPartner* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAISilentPartnerCreate* silentPartnerCreate = [[OAISilentPartnerCreate alloc] init]; // 

OAISilentPartnerApi*apiInstance = [[OAISilentPartnerApi alloc] init];

[apiInstance createSilentPartnerWithSilentPartnerCreate:silentPartnerCreate
          completionHandler: ^(OAISilentPartner* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISilentPartnerApi->createSilentPartner: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **silentPartnerCreate** | [**OAISilentPartnerCreate***](OAISilentPartnerCreate.md)|  | 

### Return type

[**OAISilentPartner***](OAISilentPartner.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSilentPartner**
```objc
-(NSURLSessionTask*) deleteSilentPartnerWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAISilentPartnerApi*apiInstance = [[OAISilentPartnerApi alloc] init];

[apiInstance deleteSilentPartnerWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAISilentPartnerApi->deleteSilentPartner: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSilentPartner**
```objc
-(NSURLSessionTask*) getSilentPartnerWithId: (NSString*) _id
        completionHandler: (void (^)(OAISilentPartner* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAISilentPartnerApi*apiInstance = [[OAISilentPartnerApi alloc] init];

[apiInstance getSilentPartnerWithId:_id
          completionHandler: ^(OAISilentPartner* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISilentPartnerApi->getSilentPartner: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAISilentPartner***](OAISilentPartner.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSilentPartners**
```objc
-(NSURLSessionTask*) getSilentPartnersWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAISilentPartner>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAISilentPartnerApi*apiInstance = [[OAISilentPartnerApi alloc] init];

[apiInstance getSilentPartnersWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAISilentPartner>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISilentPartnerApi->getSilentPartners: %@", error);
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

[**NSArray<OAISilentPartner>***](OAISilentPartner.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSilentPartner**
```objc
-(NSURLSessionTask*) updateSilentPartnerWithId: (NSString*) _id
    silentPartnerUpdate: (OAISilentPartnerUpdate*) silentPartnerUpdate
        completionHandler: (void (^)(OAISilentPartner* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAISilentPartnerUpdate* silentPartnerUpdate = [[OAISilentPartnerUpdate alloc] init]; // 

OAISilentPartnerApi*apiInstance = [[OAISilentPartnerApi alloc] init];

[apiInstance updateSilentPartnerWithId:_id
              silentPartnerUpdate:silentPartnerUpdate
          completionHandler: ^(OAISilentPartner* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISilentPartnerApi->updateSilentPartner: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **silentPartnerUpdate** | [**OAISilentPartnerUpdate***](OAISilentPartnerUpdate.md)|  | 

### Return type

[**OAISilentPartner***](OAISilentPartner.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

