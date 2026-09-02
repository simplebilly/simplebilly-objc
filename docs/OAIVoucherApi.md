# OAIVoucherApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createVoucher**](OAIVoucherApi.md#createvoucher) | **POST** /api/v1/vouchers | 
[**deleteVoucher**](OAIVoucherApi.md#deletevoucher) | **DELETE** /api/v1/vouchers/{voucher_id} | 
[**getVoucher**](OAIVoucherApi.md#getvoucher) | **GET** /api/v1/vouchers/{voucher_id} | 
[**listVouchers**](OAIVoucherApi.md#listvouchers) | **GET** /api/v1/vouchers/ | 
[**updateVoucher**](OAIVoucherApi.md#updatevoucher) | **PUT** /api/v1/vouchers/{voucher_id} | 
[**voucherRestore**](OAIVoucherApi.md#voucherrestore) | **POST** /api/v1/vouchers/{voucher_id}/restore | 


# **createVoucher**
```objc
-(NSURLSessionTask*) createVoucherWithVoucherCreate: (OAIVoucherCreate*) voucherCreate
        completionHandler: (void (^)(OAIVoucher* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIVoucherCreate* voucherCreate = [[OAIVoucherCreate alloc] init]; // 

OAIVoucherApi*apiInstance = [[OAIVoucherApi alloc] init];

[apiInstance createVoucherWithVoucherCreate:voucherCreate
          completionHandler: ^(OAIVoucher* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIVoucherApi->createVoucher: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucherCreate** | [**OAIVoucherCreate***](OAIVoucherCreate.md)|  | 

### Return type

[**OAIVoucher***](OAIVoucher.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVoucher**
```objc
-(NSURLSessionTask*) deleteVoucherWithVoucherId: (NSString*) voucherId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* voucherId = @"voucherId_example"; // 

OAIVoucherApi*apiInstance = [[OAIVoucherApi alloc] init];

[apiInstance deleteVoucherWithVoucherId:voucherId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIVoucherApi->deleteVoucher: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucherId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVoucher**
```objc
-(NSURLSessionTask*) getVoucherWithVoucherId: (NSString*) voucherId
        completionHandler: (void (^)(OAIVoucher* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* voucherId = @"voucherId_example"; // 

OAIVoucherApi*apiInstance = [[OAIVoucherApi alloc] init];

[apiInstance getVoucherWithVoucherId:voucherId
          completionHandler: ^(OAIVoucher* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIVoucherApi->getVoucher: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucherId** | **NSString***|  | 

### Return type

[**OAIVoucher***](OAIVoucher.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVouchers**
```objc
-(NSURLSessionTask*) listVouchersWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    voucherType: (NSString*) voucherType
    voucherStatus: (NSString*) voucherStatus
    contactName: (NSString*) contactName
    dateFrom: (NSDate*) dateFrom
    dateTo: (NSDate*) dateTo
        completionHandler: (void (^)(NSArray<OAIVoucher>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* voucherType = @"voucherType_example"; //  (optional)
NSString* voucherStatus = @"voucherStatus_example"; //  (optional)
NSString* contactName = @"contactName_example"; //  (optional)
NSDate* dateFrom = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* dateTo = @"2013-10-20T19:20:30+01:00"; //  (optional)

OAIVoucherApi*apiInstance = [[OAIVoucherApi alloc] init];

[apiInstance listVouchersWithPage:page
              pageSize:pageSize
              voucherType:voucherType
              voucherStatus:voucherStatus
              contactName:contactName
              dateFrom:dateFrom
              dateTo:dateTo
          completionHandler: ^(NSArray<OAIVoucher>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIVoucherApi->listVouchers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **voucherType** | **NSString***|  | [optional] 
 **voucherStatus** | **NSString***|  | [optional] 
 **contactName** | **NSString***|  | [optional] 
 **dateFrom** | **NSDate***|  | [optional] 
 **dateTo** | **NSDate***|  | [optional] 

### Return type

[**NSArray<OAIVoucher>***](OAIVoucher.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVoucher**
```objc
-(NSURLSessionTask*) updateVoucherWithVoucherId: (NSString*) voucherId
    body: (OAIAnyType*) body
        completionHandler: (void (^)(OAIVoucher* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* voucherId = @"voucherId_example"; // 
OAIAnyType* body = [[OAIAnyType alloc] init]; // 

OAIVoucherApi*apiInstance = [[OAIVoucherApi alloc] init];

[apiInstance updateVoucherWithVoucherId:voucherId
              body:body
          completionHandler: ^(OAIVoucher* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIVoucherApi->updateVoucher: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucherId** | **NSString***|  | 
 **body** | **OAIAnyType***|  | 

### Return type

[**OAIVoucher***](OAIVoucher.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voucherRestore**
```objc
-(NSURLSessionTask*) voucherRestoreWithVoucherId: (NSString*) voucherId
        completionHandler: (void (^)(OAIVoucher* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* voucherId = @"voucherId_example"; // 

OAIVoucherApi*apiInstance = [[OAIVoucherApi alloc] init];

[apiInstance voucherRestoreWithVoucherId:voucherId
          completionHandler: ^(OAIVoucher* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIVoucherApi->voucherRestore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voucherId** | **NSString***|  | 

### Return type

[**OAIVoucher***](OAIVoucher.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

