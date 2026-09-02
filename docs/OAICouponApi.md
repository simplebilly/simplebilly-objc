# OAICouponApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**couponRestore**](OAICouponApi.md#couponrestore) | **POST** /api/v1/coupons/{coupon_id}/restore | 
[**createCoupon**](OAICouponApi.md#createcoupon) | **POST** /api/v1/coupons | 
[**deleteCoupon**](OAICouponApi.md#deletecoupon) | **DELETE** /api/v1/coupons/{coupon_id} | 
[**getCoupon**](OAICouponApi.md#getcoupon) | **GET** /api/v1/coupons/{coupon_id} | 
[**listCoupons**](OAICouponApi.md#listcoupons) | **GET** /api/v1/coupons/ | 
[**updateCoupon**](OAICouponApi.md#updatecoupon) | **PUT** /api/v1/coupons/{coupon_id} | 


# **couponRestore**
```objc
-(NSURLSessionTask*) couponRestoreWithCouponId: (NSString*) couponId
        completionHandler: (void (^)(OAICoupon* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* couponId = @"couponId_example"; // 

OAICouponApi*apiInstance = [[OAICouponApi alloc] init];

[apiInstance couponRestoreWithCouponId:couponId
          completionHandler: ^(OAICoupon* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICouponApi->couponRestore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponId** | **NSString***|  | 

### Return type

[**OAICoupon***](OAICoupon.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCoupon**
```objc
-(NSURLSessionTask*) createCouponWithCouponCreate: (OAICouponCreate*) couponCreate
        completionHandler: (void (^)(OAICoupon* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAICouponCreate* couponCreate = [[OAICouponCreate alloc] init]; // 

OAICouponApi*apiInstance = [[OAICouponApi alloc] init];

[apiInstance createCouponWithCouponCreate:couponCreate
          completionHandler: ^(OAICoupon* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICouponApi->createCoupon: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponCreate** | [**OAICouponCreate***](OAICouponCreate.md)|  | 

### Return type

[**OAICoupon***](OAICoupon.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCoupon**
```objc
-(NSURLSessionTask*) deleteCouponWithCouponId: (NSString*) couponId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* couponId = @"couponId_example"; // 

OAICouponApi*apiInstance = [[OAICouponApi alloc] init];

[apiInstance deleteCouponWithCouponId:couponId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICouponApi->deleteCoupon: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCoupon**
```objc
-(NSURLSessionTask*) getCouponWithCouponId: (NSString*) couponId
        completionHandler: (void (^)(OAICoupon* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* couponId = @"couponId_example"; // 

OAICouponApi*apiInstance = [[OAICouponApi alloc] init];

[apiInstance getCouponWithCouponId:couponId
          completionHandler: ^(OAICoupon* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICouponApi->getCoupon: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponId** | **NSString***|  | 

### Return type

[**OAICoupon***](OAICoupon.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCoupons**
```objc
-(NSURLSessionTask*) listCouponsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    isActive: (NSNumber*) isActive
    code: (NSString*) code
    discountType: (NSString*) discountType
        completionHandler: (void (^)(NSArray<OAICoupon>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSNumber* isActive = @56; //  (optional)
NSString* code = @"code_example"; //  (optional)
NSString* discountType = @"discountType_example"; //  (optional)

OAICouponApi*apiInstance = [[OAICouponApi alloc] init];

[apiInstance listCouponsWithPage:page
              pageSize:pageSize
              isActive:isActive
              code:code
              discountType:discountType
          completionHandler: ^(NSArray<OAICoupon>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICouponApi->listCoupons: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **isActive** | **NSNumber***|  | [optional] 
 **code** | **NSString***|  | [optional] 
 **discountType** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAICoupon>***](OAICoupon.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCoupon**
```objc
-(NSURLSessionTask*) updateCouponWithCouponId: (NSString*) couponId
    couponUpdate: (OAICouponUpdate*) couponUpdate
        completionHandler: (void (^)(OAICoupon* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* couponId = @"couponId_example"; // 
OAICouponUpdate* couponUpdate = [[OAICouponUpdate alloc] init]; // 

OAICouponApi*apiInstance = [[OAICouponApi alloc] init];

[apiInstance updateCouponWithCouponId:couponId
              couponUpdate:couponUpdate
          completionHandler: ^(OAICoupon* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICouponApi->updateCoupon: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **couponId** | **NSString***|  | 
 **couponUpdate** | [**OAICouponUpdate***](OAICouponUpdate.md)|  | 

### Return type

[**OAICoupon***](OAICoupon.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

