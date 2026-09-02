# OAIRfqApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertRfq**](OAIRfqApi.md#convertrfq) | **POST** /api/v1/rfqs/{rfq_id}/convert | Convert an RFQ into a draft purchase order using the quoted unit prices (falling back to the requested prices, then leaving them blank). Marks the RFQ as &#x60;converted&#x60;.
[**createRfq**](OAIRfqApi.md#createrfq) | **POST** /api/v1/rfqs | 
[**deleteRfq**](OAIRfqApi.md#deleterfq) | **DELETE** /api/v1/rfqs/{rfq_id} | 
[**getRfq**](OAIRfqApi.md#getrfq) | **GET** /api/v1/rfqs/{rfq_id} | 
[**listRfqs**](OAIRfqApi.md#listrfqs) | **GET** /api/v1/rfqs/ | 
[**updateRfq**](OAIRfqApi.md#updaterfq) | **PUT** /api/v1/rfqs/{rfq_id} | 
[**updateRfqStatus**](OAIRfqApi.md#updaterfqstatus) | **PUT** /api/v1/rfqs/{rfq_id}/status | 


# **convertRfq**
```objc
-(NSURLSessionTask*) convertRfqWithRfqId: (NSString*) rfqId
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```

Convert an RFQ into a draft purchase order using the quoted unit prices (falling back to the requested prices, then leaving them blank). Marks the RFQ as `converted`.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* rfqId = @"rfqId_example"; // 

OAIRfqApi*apiInstance = [[OAIRfqApi alloc] init];

// Convert an RFQ into a draft purchase order using the quoted unit prices (falling back to the requested prices, then leaving them blank). Marks the RFQ as `converted`.
[apiInstance convertRfqWithRfqId:rfqId
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRfqApi->convertRfq: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfqId** | **NSString***|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRfq**
```objc
-(NSURLSessionTask*) createRfqWithRfq: (OAIRfq*) rfq
        completionHandler: (void (^)(OAIRfq* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIRfq* rfq = [[OAIRfq alloc] init]; // 

OAIRfqApi*apiInstance = [[OAIRfqApi alloc] init];

[apiInstance createRfqWithRfq:rfq
          completionHandler: ^(OAIRfq* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRfqApi->createRfq: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfq** | [**OAIRfq***](OAIRfq.md)|  | 

### Return type

[**OAIRfq***](OAIRfq.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRfq**
```objc
-(NSURLSessionTask*) deleteRfqWithRfqId: (NSString*) rfqId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* rfqId = @"rfqId_example"; // 

OAIRfqApi*apiInstance = [[OAIRfqApi alloc] init];

[apiInstance deleteRfqWithRfqId:rfqId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIRfqApi->deleteRfq: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfqId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRfq**
```objc
-(NSURLSessionTask*) getRfqWithRfqId: (NSString*) rfqId
        completionHandler: (void (^)(OAIRfq* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* rfqId = @"rfqId_example"; // 

OAIRfqApi*apiInstance = [[OAIRfqApi alloc] init];

[apiInstance getRfqWithRfqId:rfqId
          completionHandler: ^(OAIRfq* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRfqApi->getRfq: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfqId** | **NSString***|  | 

### Return type

[**OAIRfq***](OAIRfq.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRfqs**
```objc
-(NSURLSessionTask*) listRfqsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    status: (NSString*) status
    supplierName: (NSString*) supplierName
        completionHandler: (void (^)(NSArray<OAIRfq>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSString* supplierName = @"supplierName_example"; //  (optional)

OAIRfqApi*apiInstance = [[OAIRfqApi alloc] init];

[apiInstance listRfqsWithPage:page
              pageSize:pageSize
              status:status
              supplierName:supplierName
          completionHandler: ^(NSArray<OAIRfq>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRfqApi->listRfqs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **supplierName** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIRfq>***](OAIRfq.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRfq**
```objc
-(NSURLSessionTask*) updateRfqWithRfqId: (NSString*) rfqId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIRfq* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* rfqId = @"rfqId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIRfqApi*apiInstance = [[OAIRfqApi alloc] init];

[apiInstance updateRfqWithRfqId:rfqId
              body:body
          completionHandler: ^(OAIRfq* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRfqApi->updateRfq: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfqId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIRfq***](OAIRfq.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRfqStatus**
```objc
-(NSURLSessionTask*) updateRfqStatusWithRfqId: (NSString*) rfqId
    rfqStatusUpdate: (OAIRfqStatusUpdate*) rfqStatusUpdate
        completionHandler: (void (^)(OAIRfq* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* rfqId = @"rfqId_example"; // 
OAIRfqStatusUpdate* rfqStatusUpdate = [[OAIRfqStatusUpdate alloc] init]; // 

OAIRfqApi*apiInstance = [[OAIRfqApi alloc] init];

[apiInstance updateRfqStatusWithRfqId:rfqId
              rfqStatusUpdate:rfqStatusUpdate
          completionHandler: ^(OAIRfq* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRfqApi->updateRfqStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rfqId** | **NSString***|  | 
 **rfqStatusUpdate** | [**OAIRfqStatusUpdate***](OAIRfqStatusUpdate.md)|  | 

### Return type

[**OAIRfq***](OAIRfq.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

