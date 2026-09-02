# OAIDeliveryAppointmentApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeliveryAppointment**](OAIDeliveryAppointmentApi.md#createdeliveryappointment) | **POST** /api/v1/delivery-appointments | 
[**deleteDeliveryAppointment**](OAIDeliveryAppointmentApi.md#deletedeliveryappointment) | **DELETE** /api/v1/delivery-appointments/{appointment_id} | 
[**getDeliveryAppointment**](OAIDeliveryAppointmentApi.md#getdeliveryappointment) | **GET** /api/v1/delivery-appointments/{appointment_id} | 
[**getPublicDeliveryAppointmentStatus**](OAIDeliveryAppointmentApi.md#getpublicdeliveryappointmentstatus) | **GET** /api/v1/public/delivery-appointments/status | Supplier/carrier checks appointment status (public, no auth). The appointment is only revealed when email AND token match.
[**listDeliveryAppointments**](OAIDeliveryAppointmentApi.md#listdeliveryappointments) | **GET** /api/v1/delivery-appointments | 
[**requestPublicDeliveryAppointment**](OAIDeliveryAppointmentApi.md#requestpublicdeliveryappointment) | **POST** /api/v1/public/delivery-appointments/request | Supplier/carrier requests an inbound delivery slot (public, no auth). The tenant is derived from the warehouse found by &#x60;code&#x60; — never from the request.
[**updateDeliveryAppointment**](OAIDeliveryAppointmentApi.md#updatedeliveryappointment) | **PUT** /api/v1/delivery-appointments/{appointment_id} | 
[**updateDeliveryAppointmentStatus**](OAIDeliveryAppointmentApi.md#updatedeliveryappointmentstatus) | **PUT** /api/v1/delivery-appointments/{appointment_id}/status | 


# **createDeliveryAppointment**
```objc
-(NSURLSessionTask*) createDeliveryAppointmentWithDeliveryAppointmentCreate: (OAIDeliveryAppointmentCreate*) deliveryAppointmentCreate
        completionHandler: (void (^)(OAIDeliveryAppointment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIDeliveryAppointmentCreate* deliveryAppointmentCreate = [[OAIDeliveryAppointmentCreate alloc] init]; // 

OAIDeliveryAppointmentApi*apiInstance = [[OAIDeliveryAppointmentApi alloc] init];

[apiInstance createDeliveryAppointmentWithDeliveryAppointmentCreate:deliveryAppointmentCreate
          completionHandler: ^(OAIDeliveryAppointment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryAppointmentApi->createDeliveryAppointment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryAppointmentCreate** | [**OAIDeliveryAppointmentCreate***](OAIDeliveryAppointmentCreate.md)|  | 

### Return type

[**OAIDeliveryAppointment***](OAIDeliveryAppointment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDeliveryAppointment**
```objc
-(NSURLSessionTask*) deleteDeliveryAppointmentWithAppointmentId: (NSString*) appointmentId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* appointmentId = @"appointmentId_example"; // 

OAIDeliveryAppointmentApi*apiInstance = [[OAIDeliveryAppointmentApi alloc] init];

[apiInstance deleteDeliveryAppointmentWithAppointmentId:appointmentId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryAppointmentApi->deleteDeliveryAppointment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeliveryAppointment**
```objc
-(NSURLSessionTask*) getDeliveryAppointmentWithAppointmentId: (NSString*) appointmentId
        completionHandler: (void (^)(OAIDeliveryAppointment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* appointmentId = @"appointmentId_example"; // 

OAIDeliveryAppointmentApi*apiInstance = [[OAIDeliveryAppointmentApi alloc] init];

[apiInstance getDeliveryAppointmentWithAppointmentId:appointmentId
          completionHandler: ^(OAIDeliveryAppointment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryAppointmentApi->getDeliveryAppointment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | **NSString***|  | 

### Return type

[**OAIDeliveryAppointment***](OAIDeliveryAppointment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPublicDeliveryAppointmentStatus**
```objc
-(NSURLSessionTask*) getPublicDeliveryAppointmentStatusWithAppointmentId: (NSString*) appointmentId
    email: (NSString*) email
    token: (NSString*) token
        completionHandler: (void (^)(OAIPublicDeliveryAppointmentStatusResponse* output, NSError* error)) handler;
```

Supplier/carrier checks appointment status (public, no auth). The appointment is only revealed when email AND token match.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* appointmentId = @"appointmentId_example"; // 
NSString* email = @"email_example"; // 
NSString* token = @"token_example"; // 

OAIDeliveryAppointmentApi*apiInstance = [[OAIDeliveryAppointmentApi alloc] init];

// Supplier/carrier checks appointment status (public, no auth). The appointment is only revealed when email AND token match.
[apiInstance getPublicDeliveryAppointmentStatusWithAppointmentId:appointmentId
              email:email
              token:token
          completionHandler: ^(OAIPublicDeliveryAppointmentStatusResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryAppointmentApi->getPublicDeliveryAppointmentStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | **NSString***|  | 
 **email** | **NSString***|  | 
 **token** | **NSString***|  | 

### Return type

[**OAIPublicDeliveryAppointmentStatusResponse***](OAIPublicDeliveryAppointmentStatusResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeliveryAppointments**
```objc
-(NSURLSessionTask*) listDeliveryAppointmentsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    status: (NSString*) status
    warehouseId: (NSString*) warehouseId
    from: (NSDate*) from
    to: (NSDate*) to
        completionHandler: (void (^)(NSArray<OAIDeliveryAppointment>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSString* warehouseId = @"warehouseId_example"; //  (optional)
NSDate* from = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* to = @"2013-10-20T19:20:30+01:00"; //  (optional)

OAIDeliveryAppointmentApi*apiInstance = [[OAIDeliveryAppointmentApi alloc] init];

[apiInstance listDeliveryAppointmentsWithPage:page
              pageSize:pageSize
              status:status
              warehouseId:warehouseId
              from:from
              to:to
          completionHandler: ^(NSArray<OAIDeliveryAppointment>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryAppointmentApi->listDeliveryAppointments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **status** | **NSString***|  | [optional] 
 **warehouseId** | **NSString***|  | [optional] 
 **from** | **NSDate***|  | [optional] 
 **to** | **NSDate***|  | [optional] 

### Return type

[**NSArray<OAIDeliveryAppointment>***](OAIDeliveryAppointment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestPublicDeliveryAppointment**
```objc
-(NSURLSessionTask*) requestPublicDeliveryAppointmentWithPublicDeliveryAppointmentRequest: (OAIPublicDeliveryAppointmentRequest*) publicDeliveryAppointmentRequest
        completionHandler: (void (^)(OAIPublicDeliveryAppointmentResponse* output, NSError* error)) handler;
```

Supplier/carrier requests an inbound delivery slot (public, no auth). The tenant is derived from the warehouse found by `code` — never from the request.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIPublicDeliveryAppointmentRequest* publicDeliveryAppointmentRequest = [[OAIPublicDeliveryAppointmentRequest alloc] init]; // 

OAIDeliveryAppointmentApi*apiInstance = [[OAIDeliveryAppointmentApi alloc] init];

// Supplier/carrier requests an inbound delivery slot (public, no auth). The tenant is derived from the warehouse found by `code` — never from the request.
[apiInstance requestPublicDeliveryAppointmentWithPublicDeliveryAppointmentRequest:publicDeliveryAppointmentRequest
          completionHandler: ^(OAIPublicDeliveryAppointmentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryAppointmentApi->requestPublicDeliveryAppointment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicDeliveryAppointmentRequest** | [**OAIPublicDeliveryAppointmentRequest***](OAIPublicDeliveryAppointmentRequest.md)|  | 

### Return type

[**OAIPublicDeliveryAppointmentResponse***](OAIPublicDeliveryAppointmentResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeliveryAppointment**
```objc
-(NSURLSessionTask*) updateDeliveryAppointmentWithAppointmentId: (NSString*) appointmentId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIDeliveryAppointment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* appointmentId = @"appointmentId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIDeliveryAppointmentApi*apiInstance = [[OAIDeliveryAppointmentApi alloc] init];

[apiInstance updateDeliveryAppointmentWithAppointmentId:appointmentId
              body:body
          completionHandler: ^(OAIDeliveryAppointment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryAppointmentApi->updateDeliveryAppointment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIDeliveryAppointment***](OAIDeliveryAppointment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeliveryAppointmentStatus**
```objc
-(NSURLSessionTask*) updateDeliveryAppointmentStatusWithAppointmentId: (NSString*) appointmentId
    appointmentStatusUpdate: (OAIAppointmentStatusUpdate*) appointmentStatusUpdate
        completionHandler: (void (^)(OAIDeliveryAppointment* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* appointmentId = @"appointmentId_example"; // 
OAIAppointmentStatusUpdate* appointmentStatusUpdate = [[OAIAppointmentStatusUpdate alloc] init]; // 

OAIDeliveryAppointmentApi*apiInstance = [[OAIDeliveryAppointmentApi alloc] init];

[apiInstance updateDeliveryAppointmentStatusWithAppointmentId:appointmentId
              appointmentStatusUpdate:appointmentStatusUpdate
          completionHandler: ^(OAIDeliveryAppointment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDeliveryAppointmentApi->updateDeliveryAppointmentStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | **NSString***|  | 
 **appointmentStatusUpdate** | [**OAIAppointmentStatusUpdate***](OAIAppointmentStatusUpdate.md)|  | 

### Return type

[**OAIDeliveryAppointment***](OAIDeliveryAppointment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

