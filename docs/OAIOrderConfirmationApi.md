# OAIOrderConfirmationApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConfirmation**](OAIOrderConfirmationApi.md#createconfirmation) | **POST** /api/v1/order-confirmations | 
[**deleteConfirmation**](OAIOrderConfirmationApi.md#deleteconfirmation) | **DELETE** /api/v1/order-confirmations/{confirmation_id} | 
[**downloadConfirmationPdf**](OAIOrderConfirmationApi.md#downloadconfirmationpdf) | **GET** /api/v1/order-confirmations/{confirmation_id}/pdf | 
[**getConfirmation**](OAIOrderConfirmationApi.md#getconfirmation) | **GET** /api/v1/order-confirmations/{confirmation_id} | 
[**listConfirmations**](OAIOrderConfirmationApi.md#listconfirmations) | **GET** /api/v1/order-confirmations/ | 
[**orderconfirmationRestore**](OAIOrderConfirmationApi.md#orderconfirmationrestore) | **POST** /api/v1/order-confirmations/{confirmation_id}/restore | 
[**pursueConfirmation**](OAIOrderConfirmationApi.md#pursueconfirmation) | **POST** /api/v1/order-confirmations/{confirmation_id}/pursue | 


# **createConfirmation**
```objc
-(NSURLSessionTask*) createConfirmationWithOrderConfirmationCreate: (OAIOrderConfirmationCreate*) orderConfirmationCreate
        completionHandler: (void (^)(OAIOrderConfirmation* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIOrderConfirmationCreate* orderConfirmationCreate = [[OAIOrderConfirmationCreate alloc] init]; // 

OAIOrderConfirmationApi*apiInstance = [[OAIOrderConfirmationApi alloc] init];

[apiInstance createConfirmationWithOrderConfirmationCreate:orderConfirmationCreate
          completionHandler: ^(OAIOrderConfirmation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOrderConfirmationApi->createConfirmation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderConfirmationCreate** | [**OAIOrderConfirmationCreate***](OAIOrderConfirmationCreate.md)|  | 

### Return type

[**OAIOrderConfirmation***](OAIOrderConfirmation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteConfirmation**
```objc
-(NSURLSessionTask*) deleteConfirmationWithConfirmationId: (NSString*) confirmationId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* confirmationId = @"confirmationId_example"; // 

OAIOrderConfirmationApi*apiInstance = [[OAIOrderConfirmationApi alloc] init];

[apiInstance deleteConfirmationWithConfirmationId:confirmationId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIOrderConfirmationApi->deleteConfirmation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmationId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadConfirmationPdf**
```objc
-(NSURLSessionTask*) downloadConfirmationPdfWithConfirmationId: (NSString*) confirmationId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* confirmationId = @"confirmationId_example"; // 

OAIOrderConfirmationApi*apiInstance = [[OAIOrderConfirmationApi alloc] init];

[apiInstance downloadConfirmationPdfWithConfirmationId:confirmationId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIOrderConfirmationApi->downloadConfirmationPdf: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmationId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfirmation**
```objc
-(NSURLSessionTask*) getConfirmationWithConfirmationId: (NSString*) confirmationId
        completionHandler: (void (^)(OAIOrderConfirmation* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* confirmationId = @"confirmationId_example"; // 

OAIOrderConfirmationApi*apiInstance = [[OAIOrderConfirmationApi alloc] init];

[apiInstance getConfirmationWithConfirmationId:confirmationId
          completionHandler: ^(OAIOrderConfirmation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOrderConfirmationApi->getConfirmation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmationId** | **NSString***|  | 

### Return type

[**OAIOrderConfirmation***](OAIOrderConfirmation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConfirmations**
```objc
-(NSURLSessionTask*) listConfirmationsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIOrderConfirmation>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIOrderConfirmationApi*apiInstance = [[OAIOrderConfirmationApi alloc] init];

[apiInstance listConfirmationsWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIOrderConfirmation>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOrderConfirmationApi->listConfirmations: %@", error);
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

[**NSArray<OAIOrderConfirmation>***](OAIOrderConfirmation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderconfirmationRestore**
```objc
-(NSURLSessionTask*) orderconfirmationRestoreWithConfirmationId: (NSString*) confirmationId
        completionHandler: (void (^)(OAIOrderConfirmation* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* confirmationId = @"confirmationId_example"; // 

OAIOrderConfirmationApi*apiInstance = [[OAIOrderConfirmationApi alloc] init];

[apiInstance orderconfirmationRestoreWithConfirmationId:confirmationId
          completionHandler: ^(OAIOrderConfirmation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOrderConfirmationApi->orderconfirmationRestore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmationId** | **NSString***|  | 

### Return type

[**OAIOrderConfirmation***](OAIOrderConfirmation.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pursueConfirmation**
```objc
-(NSURLSessionTask*) pursueConfirmationWithConfirmationId: (NSString*) confirmationId
        completionHandler: (void (^)(OAIDeliveryNote* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* confirmationId = @"confirmationId_example"; // 

OAIOrderConfirmationApi*apiInstance = [[OAIOrderConfirmationApi alloc] init];

[apiInstance pursueConfirmationWithConfirmationId:confirmationId
          completionHandler: ^(OAIDeliveryNote* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOrderConfirmationApi->pursueConfirmation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmationId** | **NSString***|  | 

### Return type

[**OAIDeliveryNote***](OAIDeliveryNote.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

