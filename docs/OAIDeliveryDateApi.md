# OAIDeliveryDateApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeliveryDate**](OAIDeliveryDateApi.md#createdeliverydate) | **POST** /api/v1/delivery-dates | 
[**deleteDeliveryDate**](OAIDeliveryDateApi.md#deletedeliverydate) | **DELETE** /api/v1/delivery-dates/{delivery_date_id} | 
[**getDeliveryDate**](OAIDeliveryDateApi.md#getdeliverydate) | **GET** /api/v1/delivery-dates/{delivery_date_id} | 
[**getDeliveryPerformance**](OAIDeliveryDateApi.md#getdeliveryperformance) | **GET** /api/v1/delivery-dates/performance | On-time performance summary: how many promised delivery dates were met within a period.
[**listDeliveryDates**](OAIDeliveryDateApi.md#listdeliverydates) | **GET** /api/v1/delivery-dates/ | 
[**updateDeliveryDate**](OAIDeliveryDateApi.md#updatedeliverydate) | **PUT** /api/v1/delivery-dates/{delivery_date_id} | 
[**updateDeliveryDateStatus**](OAIDeliveryDateApi.md#updatedeliverydatestatus) | **PUT** /api/v1/delivery-dates/{delivery_date_id}/status | 


# **createDeliveryDate**
```objc
-(NSURLSessionTask*) createDeliveryDateWithDeliveryDateCreate: (OAIDeliveryDateCreate*) deliveryDateCreate
        completionHandler: (void (^)(OAIDeliveryDate* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIDeliveryDateCreate* deliveryDateCreate = [[OAIDeliveryDateCreate alloc] init]; // 

OAIDeliveryDateApi*apiInstance = [[OAIDeliveryDateApi alloc] init];

[apiInstance createDeliveryDateWithDeliveryDateCreate:deliveryDateCreate
          completionHandler: ^(OAIDeliveryDate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryDateApi->createDeliveryDate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryDateCreate** | [**OAIDeliveryDateCreate***](OAIDeliveryDateCreate.md)|  | 

### Return type

[**OAIDeliveryDate***](OAIDeliveryDate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDeliveryDate**
```objc
-(NSURLSessionTask*) deleteDeliveryDateWithDeliveryDateId: (NSString*) deliveryDateId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* deliveryDateId = @"deliveryDateId_example"; // 

OAIDeliveryDateApi*apiInstance = [[OAIDeliveryDateApi alloc] init];

[apiInstance deleteDeliveryDateWithDeliveryDateId:deliveryDateId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryDateApi->deleteDeliveryDate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryDateId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeliveryDate**
```objc
-(NSURLSessionTask*) getDeliveryDateWithDeliveryDateId: (NSString*) deliveryDateId
        completionHandler: (void (^)(OAIDeliveryDate* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* deliveryDateId = @"deliveryDateId_example"; // 

OAIDeliveryDateApi*apiInstance = [[OAIDeliveryDateApi alloc] init];

[apiInstance getDeliveryDateWithDeliveryDateId:deliveryDateId
          completionHandler: ^(OAIDeliveryDate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryDateApi->getDeliveryDate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryDateId** | **NSString***|  | 

### Return type

[**OAIDeliveryDate***](OAIDeliveryDate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeliveryPerformance**
```objc
-(NSURLSessionTask*) getDeliveryPerformanceWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    orderNumber: (NSString*) orderNumber
    status: (NSString*) status
    from: (NSDate*) from
    to: (NSDate*) to
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```

On-time performance summary: how many promised delivery dates were met within a period.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* orderNumber = @"orderNumber_example"; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSDate* from = @"2013-10-20T19:20:30+01:00"; // Only dates on or after this date. (optional)
NSDate* to = @"2013-10-20T19:20:30+01:00"; // Only dates on or before this date. (optional)

OAIDeliveryDateApi*apiInstance = [[OAIDeliveryDateApi alloc] init];

// On-time performance summary: how many promised delivery dates were met within a period.
[apiInstance getDeliveryPerformanceWithPage:page
              pageSize:pageSize
              orderNumber:orderNumber
              status:status
              from:from
              to:to
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryDateApi->getDeliveryPerformance: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **orderNumber** | **NSString***|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **from** | **NSDate***| Only dates on or after this date. | [optional] 
 **to** | **NSDate***| Only dates on or before this date. | [optional] 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeliveryDates**
```objc
-(NSURLSessionTask*) listDeliveryDatesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    orderNumber: (NSString*) orderNumber
    status: (NSString*) status
    from: (NSDate*) from
    to: (NSDate*) to
        completionHandler: (void (^)(NSArray<OAIDeliveryDate>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* orderNumber = @"orderNumber_example"; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSDate* from = @"2013-10-20T19:20:30+01:00"; // Only dates on or after this date. (optional)
NSDate* to = @"2013-10-20T19:20:30+01:00"; // Only dates on or before this date. (optional)

OAIDeliveryDateApi*apiInstance = [[OAIDeliveryDateApi alloc] init];

[apiInstance listDeliveryDatesWithPage:page
              pageSize:pageSize
              orderNumber:orderNumber
              status:status
              from:from
              to:to
          completionHandler: ^(NSArray<OAIDeliveryDate>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryDateApi->listDeliveryDates: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **orderNumber** | **NSString***|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **from** | **NSDate***| Only dates on or after this date. | [optional] 
 **to** | **NSDate***| Only dates on or before this date. | [optional] 

### Return type

[**NSArray<OAIDeliveryDate>***](OAIDeliveryDate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeliveryDate**
```objc
-(NSURLSessionTask*) updateDeliveryDateWithDeliveryDateId: (NSString*) deliveryDateId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIDeliveryDate* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* deliveryDateId = @"deliveryDateId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIDeliveryDateApi*apiInstance = [[OAIDeliveryDateApi alloc] init];

[apiInstance updateDeliveryDateWithDeliveryDateId:deliveryDateId
              body:body
          completionHandler: ^(OAIDeliveryDate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryDateApi->updateDeliveryDate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryDateId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIDeliveryDate***](OAIDeliveryDate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeliveryDateStatus**
```objc
-(NSURLSessionTask*) updateDeliveryDateStatusWithDeliveryDateId: (NSString*) deliveryDateId
    deliveryDateStatusUpdate: (OAIDeliveryDateStatusUpdate*) deliveryDateStatusUpdate
        completionHandler: (void (^)(OAIDeliveryDate* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* deliveryDateId = @"deliveryDateId_example"; // 
OAIDeliveryDateStatusUpdate* deliveryDateStatusUpdate = [[OAIDeliveryDateStatusUpdate alloc] init]; // 

OAIDeliveryDateApi*apiInstance = [[OAIDeliveryDateApi alloc] init];

[apiInstance updateDeliveryDateStatusWithDeliveryDateId:deliveryDateId
              deliveryDateStatusUpdate:deliveryDateStatusUpdate
          completionHandler: ^(OAIDeliveryDate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryDateApi->updateDeliveryDateStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryDateId** | **NSString***|  | 
 **deliveryDateStatusUpdate** | [**OAIDeliveryDateStatusUpdate***](OAIDeliveryDateStatusUpdate.md)|  | 

### Return type

[**OAIDeliveryDate***](OAIDeliveryDate.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

