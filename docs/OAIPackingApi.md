# OAIPackingApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**completePacking**](OAIPackingApi.md#completepacking) | **POST** /api/v1/packing/{order_number}/complete | Mark packing as complete and transition order to shipped
[**getPackingQueue**](OAIPackingApi.md#getpackingqueue) | **GET** /api/v1/packing/queue | Get the packing queue - orders ready for packing
[**printDeliveryNote**](OAIPackingApi.md#printdeliverynote) | **POST** /api/v1/packing/{order_number}/print-delivery-note | Print delivery note (Lieferschein) for an order
[**printLabel**](OAIPackingApi.md#printlabel) | **POST** /api/v1/packing/{order_number}/print-label | Print shipping label for an order
[**recordPackingVideo**](OAIPackingApi.md#recordpackingvideo) | **POST** /api/v1/packing/{order_number}/record-video | Record video of packing process


# **completePacking**
```objc
-(NSURLSessionTask*) completePackingWithOrderNumber: (NSString*) orderNumber
    packingCompleteRequest: (OAIPackingCompleteRequest*) packingCompleteRequest
        completionHandler: (void (^)(OAIPackingCompleteResponse* output, NSError* error)) handler;
```

Mark packing as complete and transition order to shipped

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* orderNumber = @"orderNumber_example"; // 
OAIPackingCompleteRequest* packingCompleteRequest = [[OAIPackingCompleteRequest alloc] init]; // 

OAIPackingApi*apiInstance = [[OAIPackingApi alloc] init];

// Mark packing as complete and transition order to shipped
[apiInstance completePackingWithOrderNumber:orderNumber
              packingCompleteRequest:packingCompleteRequest
          completionHandler: ^(OAIPackingCompleteResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPackingApi->completePacking: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **NSString***|  | 
 **packingCompleteRequest** | [**OAIPackingCompleteRequest***](OAIPackingCompleteRequest.md)|  | 

### Return type

[**OAIPackingCompleteResponse***](OAIPackingCompleteResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackingQueue**
```objc
-(NSURLSessionTask*) getPackingQueueWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
        completionHandler: (void (^)(OAIPackingQueue* output, NSError* error)) handler;
```

Get the packing queue - orders ready for packing

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)

OAIPackingApi*apiInstance = [[OAIPackingApi alloc] init];

// Get the packing queue - orders ready for packing
[apiInstance getPackingQueueWithPage:page
              pageSize:pageSize
              search:search
          completionHandler: ^(OAIPackingQueue* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPackingApi->getPackingQueue: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **search** | **NSString***|  | [optional] 

### Return type

[**OAIPackingQueue***](OAIPackingQueue.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **printDeliveryNote**
```objc
-(NSURLSessionTask*) printDeliveryNoteWithOrderNumber: (NSString*) orderNumber
        completionHandler: (void (^)(OAIPrintDeliveryNoteResponse* output, NSError* error)) handler;
```

Print delivery note (Lieferschein) for an order

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* orderNumber = @"orderNumber_example"; // 

OAIPackingApi*apiInstance = [[OAIPackingApi alloc] init];

// Print delivery note (Lieferschein) for an order
[apiInstance printDeliveryNoteWithOrderNumber:orderNumber
          completionHandler: ^(OAIPrintDeliveryNoteResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPackingApi->printDeliveryNote: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **NSString***|  | 

### Return type

[**OAIPrintDeliveryNoteResponse***](OAIPrintDeliveryNoteResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **printLabel**
```objc
-(NSURLSessionTask*) printLabelWithOrderNumber: (NSString*) orderNumber
        completionHandler: (void (^)(OAIPrintLabelResponse* output, NSError* error)) handler;
```

Print shipping label for an order

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* orderNumber = @"orderNumber_example"; // 

OAIPackingApi*apiInstance = [[OAIPackingApi alloc] init];

// Print shipping label for an order
[apiInstance printLabelWithOrderNumber:orderNumber
          completionHandler: ^(OAIPrintLabelResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPackingApi->printLabel: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **NSString***|  | 

### Return type

[**OAIPrintLabelResponse***](OAIPrintLabelResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recordPackingVideo**
```objc
-(NSURLSessionTask*) recordPackingVideoWithOrderNumber: (NSString*) orderNumber
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIPackingVideoResponse* output, NSError* error)) handler;
```

Record video of packing process

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* orderNumber = @"orderNumber_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIPackingApi*apiInstance = [[OAIPackingApi alloc] init];

// Record video of packing process
[apiInstance recordPackingVideoWithOrderNumber:orderNumber
              body:body
          completionHandler: ^(OAIPackingVideoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPackingApi->recordPackingVideo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIPackingVideoResponse***](OAIPackingVideoResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

