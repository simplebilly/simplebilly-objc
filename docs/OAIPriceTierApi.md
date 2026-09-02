# OAIPriceTierApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPriceTier**](OAIPriceTierApi.md#createpricetier) | **POST** /api/v1/price-tiers | 
[**deletePriceTier**](OAIPriceTierApi.md#deletepricetier) | **DELETE** /api/v1/price-tiers/{price_tier_id} | 
[**getPriceTier**](OAIPriceTierApi.md#getpricetier) | **GET** /api/v1/price-tiers/{price_tier_id} | 
[**getResolvedPrice**](OAIPriceTierApi.md#getresolvedprice) | **GET** /api/v1/price-tiers/resolved | 
[**listPriceTiers**](OAIPriceTierApi.md#listpricetiers) | **GET** /api/v1/price-tiers/ | 
[**updatePriceTier**](OAIPriceTierApi.md#updatepricetier) | **PUT** /api/v1/price-tiers/{price_tier_id} | 


# **createPriceTier**
```objc
-(NSURLSessionTask*) createPriceTierWithPriceTierCreate: (OAIPriceTierCreate*) priceTierCreate
        completionHandler: (void (^)(OAIPriceTier* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIPriceTierCreate* priceTierCreate = [[OAIPriceTierCreate alloc] init]; // 

OAIPriceTierApi*apiInstance = [[OAIPriceTierApi alloc] init];

[apiInstance createPriceTierWithPriceTierCreate:priceTierCreate
          completionHandler: ^(OAIPriceTier* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPriceTierApi->createPriceTier: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **priceTierCreate** | [**OAIPriceTierCreate***](OAIPriceTierCreate.md)|  | 

### Return type

[**OAIPriceTier***](OAIPriceTier.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePriceTier**
```objc
-(NSURLSessionTask*) deletePriceTierWithPriceTierId: (NSString*) priceTierId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* priceTierId = @"priceTierId_example"; // 

OAIPriceTierApi*apiInstance = [[OAIPriceTierApi alloc] init];

[apiInstance deletePriceTierWithPriceTierId:priceTierId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIPriceTierApi->deletePriceTier: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **priceTierId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPriceTier**
```objc
-(NSURLSessionTask*) getPriceTierWithPriceTierId: (NSString*) priceTierId
        completionHandler: (void (^)(OAIPriceTier* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* priceTierId = @"priceTierId_example"; // 

OAIPriceTierApi*apiInstance = [[OAIPriceTierApi alloc] init];

[apiInstance getPriceTierWithPriceTierId:priceTierId
          completionHandler: ^(OAIPriceTier* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPriceTierApi->getPriceTier: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **priceTierId** | **NSString***|  | 

### Return type

[**OAIPriceTier***](OAIPriceTier.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResolvedPrice**
```objc
-(NSURLSessionTask*) getResolvedPriceWithProductId: (NSString*) productId
    quantity: (NSNumber*) quantity
    contactId: (NSString*) contactId
        completionHandler: (void (^)(OAIResolvedPriceResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* productId = @"productId_example"; // 
NSNumber* quantity = @56; //  (optional)
NSString* contactId = @"contactId_example"; // Contact used to match customer-group-scoped tiers. (optional)

OAIPriceTierApi*apiInstance = [[OAIPriceTierApi alloc] init];

[apiInstance getResolvedPriceWithProductId:productId
              quantity:quantity
              contactId:contactId
          completionHandler: ^(OAIResolvedPriceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPriceTierApi->getResolvedPrice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **NSString***|  | 
 **quantity** | **NSNumber***|  | [optional] 
 **contactId** | **NSString***| Contact used to match customer-group-scoped tiers. | [optional] 

### Return type

[**OAIResolvedPriceResponse***](OAIResolvedPriceResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPriceTiers**
```objc
-(NSURLSessionTask*) listPriceTiersWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    productId: (NSString*) productId
    customerGroupId: (NSString*) customerGroupId
        completionHandler: (void (^)(NSArray<OAIPriceTier>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* productId = @"productId_example"; //  (optional)
NSString* customerGroupId = @"customerGroupId_example"; //  (optional)

OAIPriceTierApi*apiInstance = [[OAIPriceTierApi alloc] init];

[apiInstance listPriceTiersWithPage:page
              pageSize:pageSize
              productId:productId
              customerGroupId:customerGroupId
          completionHandler: ^(NSArray<OAIPriceTier>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPriceTierApi->listPriceTiers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **productId** | **NSString***|  | [optional] 
 **customerGroupId** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIPriceTier>***](OAIPriceTier.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePriceTier**
```objc
-(NSURLSessionTask*) updatePriceTierWithPriceTierId: (NSString*) priceTierId
    priceTierUpdate: (OAIPriceTierUpdate*) priceTierUpdate
        completionHandler: (void (^)(OAIPriceTier* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* priceTierId = @"priceTierId_example"; // 
OAIPriceTierUpdate* priceTierUpdate = [[OAIPriceTierUpdate alloc] init]; // 

OAIPriceTierApi*apiInstance = [[OAIPriceTierApi alloc] init];

[apiInstance updatePriceTierWithPriceTierId:priceTierId
              priceTierUpdate:priceTierUpdate
          completionHandler: ^(OAIPriceTier* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPriceTierApi->updatePriceTier: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **priceTierId** | **NSString***|  | 
 **priceTierUpdate** | [**OAIPriceTierUpdate***](OAIPriceTierUpdate.md)|  | 

### Return type

[**OAIPriceTier***](OAIPriceTier.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

