# OAIStockMovementApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStockMovement**](OAIStockMovementApi.md#getstockmovement) | **GET** /api/v1/stock-movements/{movement_id} | 
[**listStockMovements**](OAIStockMovementApi.md#liststockmovements) | **GET** /api/v1/stock-movements/ | 


# **getStockMovement**
```objc
-(NSURLSessionTask*) getStockMovementWithMovementId: (NSString*) movementId
        completionHandler: (void (^)(OAIStockMovement* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* movementId = @"movementId_example"; // 

OAIStockMovementApi*apiInstance = [[OAIStockMovementApi alloc] init];

[apiInstance getStockMovementWithMovementId:movementId
          completionHandler: ^(OAIStockMovement* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStockMovementApi->getStockMovement: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **movementId** | **NSString***|  | 

### Return type

[**OAIStockMovement***](OAIStockMovement.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listStockMovements**
```objc
-(NSURLSessionTask*) listStockMovementsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    productId: (NSString*) productId
    warehouseId: (NSString*) warehouseId
    movementType: (NSString*) movementType
    from: (NSDate*) from
    to: (NSDate*) to
        completionHandler: (void (^)(NSArray<OAIStockMovement>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* productId = @"productId_example"; //  (optional)
NSString* warehouseId = @"warehouseId_example"; //  (optional)
NSString* movementType = @"movementType_example"; //  (optional)
NSDate* from = @"2013-10-20T19:20:30+01:00"; // Only movements on or after this date (inclusive). (optional)
NSDate* to = @"2013-10-20T19:20:30+01:00"; // Only movements on or before this date (inclusive). (optional)

OAIStockMovementApi*apiInstance = [[OAIStockMovementApi alloc] init];

[apiInstance listStockMovementsWithPage:page
              pageSize:pageSize
              productId:productId
              warehouseId:warehouseId
              movementType:movementType
              from:from
              to:to
          completionHandler: ^(NSArray<OAIStockMovement>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStockMovementApi->listStockMovements: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **productId** | **NSString***|  | [optional] 
 **warehouseId** | **NSString***|  | [optional] 
 **movementType** | **NSString***|  | [optional] 
 **from** | **NSDate***| Only movements on or after this date (inclusive). | [optional] 
 **to** | **NSDate***| Only movements on or before this date (inclusive). | [optional] 

### Return type

[**NSArray<OAIStockMovement>***](OAIStockMovement.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

