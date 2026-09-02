# OAIPublicReturnsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPublicReturnStatus**](OAIPublicReturnsApi.md#getpublicreturnstatus) | **GET** /api/v1/public/returns/status | Customer checks the status of a return (public, no auth). The return is only revealed when its linked order&#39;s email matches.
[**listPublicReturns**](OAIPublicReturnsApi.md#listpublicreturns) | **GET** /api/v1/public/returns/list | List all returns for an order (public, no auth).
[**requestPublicReturn**](OAIPublicReturnsApi.md#requestpublicreturn) | **POST** /api/v1/public/returns/request | Customer requests a return for an order (public, no auth).


# **getPublicReturnStatus**
```objc
-(NSURLSessionTask*) getPublicReturnStatusWithEmail: (NSString*) email
    returnNumber: (NSString*) returnNumber
    returnOrderId: (NSString*) returnOrderId
    orderNumber: (NSString*) orderNumber
        completionHandler: (void (^)(OAIPublicReturnStatusResponse* output, NSError* error)) handler;
```

Customer checks the status of a return (public, no auth). The return is only revealed when its linked order's email matches.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* email = @"email_example"; // 
NSString* returnNumber = @"returnNumber_example"; // Either return_number or return_order_id must be provided. (optional)
NSString* returnOrderId = @"returnOrderId_example"; //  (optional)
NSString* orderNumber = @"orderNumber_example"; //  (optional)

OAIPublicReturnsApi*apiInstance = [[OAIPublicReturnsApi alloc] init];

// Customer checks the status of a return (public, no auth). The return is only revealed when its linked order's email matches.
[apiInstance getPublicReturnStatusWithEmail:email
              returnNumber:returnNumber
              returnOrderId:returnOrderId
              orderNumber:orderNumber
          completionHandler: ^(OAIPublicReturnStatusResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPublicReturnsApi->getPublicReturnStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **NSString***|  | 
 **returnNumber** | **NSString***| Either return_number or return_order_id must be provided. | [optional] 
 **returnOrderId** | **NSString***|  | [optional] 
 **orderNumber** | **NSString***|  | [optional] 

### Return type

[**OAIPublicReturnStatusResponse***](OAIPublicReturnStatusResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPublicReturns**
```objc
-(NSURLSessionTask*) listPublicReturnsWithOrderNumber: (NSString*) orderNumber
    email: (NSString*) email
        completionHandler: (void (^)(NSArray<OAIPublicReturnStatusResponse>* output, NSError* error)) handler;
```

List all returns for an order (public, no auth).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* orderNumber = @"orderNumber_example"; // 
NSString* email = @"email_example"; // 

OAIPublicReturnsApi*apiInstance = [[OAIPublicReturnsApi alloc] init];

// List all returns for an order (public, no auth).
[apiInstance listPublicReturnsWithOrderNumber:orderNumber
              email:email
          completionHandler: ^(NSArray<OAIPublicReturnStatusResponse>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPublicReturnsApi->listPublicReturns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderNumber** | **NSString***|  | 
 **email** | **NSString***|  | 

### Return type

[**NSArray<OAIPublicReturnStatusResponse>***](OAIPublicReturnStatusResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestPublicReturn**
```objc
-(NSURLSessionTask*) requestPublicReturnWithPublicReturnRequest: (OAIPublicReturnRequest*) publicReturnRequest
        completionHandler: (void (^)(OAIPublicReturnResponse* output, NSError* error)) handler;
```

Customer requests a return for an order (public, no auth).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIPublicReturnRequest* publicReturnRequest = [[OAIPublicReturnRequest alloc] init]; // 

OAIPublicReturnsApi*apiInstance = [[OAIPublicReturnsApi alloc] init];

// Customer requests a return for an order (public, no auth).
[apiInstance requestPublicReturnWithPublicReturnRequest:publicReturnRequest
          completionHandler: ^(OAIPublicReturnResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPublicReturnsApi->requestPublicReturn: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicReturnRequest** | [**OAIPublicReturnRequest***](OAIPublicReturnRequest.md)|  | 

### Return type

[**OAIPublicReturnResponse***](OAIPublicReturnResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

