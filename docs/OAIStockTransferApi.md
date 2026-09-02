# OAIStockTransferApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStockTransfer**](OAIStockTransferApi.md#createstocktransfer) | **POST** /api/v1/stock-transfers | 
[**deleteStockTransfer**](OAIStockTransferApi.md#deletestocktransfer) | **DELETE** /api/v1/stock-transfers/{stock_transfer_id} | 
[**getStockTransfer**](OAIStockTransferApi.md#getstocktransfer) | **GET** /api/v1/stock-transfers/{stock_transfer_id} | 
[**listStockTransfers**](OAIStockTransferApi.md#liststocktransfers) | **GET** /api/v1/stock-transfers/ | 
[**updateStockTransferStatus**](OAIStockTransferApi.md#updatestocktransferstatus) | **PUT** /api/v1/stock-transfers/{stock_transfer_id}/status | 


# **createStockTransfer**
```objc
-(NSURLSessionTask*) createStockTransferWithStockTransfer: (OAIStockTransfer*) stockTransfer
        completionHandler: (void (^)(OAIStockTransfer* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIStockTransfer* stockTransfer = [[OAIStockTransfer alloc] init]; // 

OAIStockTransferApi*apiInstance = [[OAIStockTransferApi alloc] init];

[apiInstance createStockTransferWithStockTransfer:stockTransfer
          completionHandler: ^(OAIStockTransfer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStockTransferApi->createStockTransfer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stockTransfer** | [**OAIStockTransfer***](OAIStockTransfer.md)|  | 

### Return type

[**OAIStockTransfer***](OAIStockTransfer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStockTransfer**
```objc
-(NSURLSessionTask*) deleteStockTransferWithStockTransferId: (NSString*) stockTransferId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* stockTransferId = @"stockTransferId_example"; // 

OAIStockTransferApi*apiInstance = [[OAIStockTransferApi alloc] init];

[apiInstance deleteStockTransferWithStockTransferId:stockTransferId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIStockTransferApi->deleteStockTransfer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stockTransferId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStockTransfer**
```objc
-(NSURLSessionTask*) getStockTransferWithStockTransferId: (NSString*) stockTransferId
        completionHandler: (void (^)(OAIStockTransfer* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* stockTransferId = @"stockTransferId_example"; // 

OAIStockTransferApi*apiInstance = [[OAIStockTransferApi alloc] init];

[apiInstance getStockTransferWithStockTransferId:stockTransferId
          completionHandler: ^(OAIStockTransfer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStockTransferApi->getStockTransfer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stockTransferId** | **NSString***|  | 

### Return type

[**OAIStockTransfer***](OAIStockTransfer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listStockTransfers**
```objc
-(NSURLSessionTask*) listStockTransfersWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    status: (NSString*) status
    warehouseId: (NSString*) warehouseId
        completionHandler: (void (^)(NSArray<OAIStockTransfer>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* status = @"status_example"; //  (optional)
NSString* warehouseId = @"warehouseId_example"; //  (optional)

OAIStockTransferApi*apiInstance = [[OAIStockTransferApi alloc] init];

[apiInstance listStockTransfersWithPage:page
              pageSize:pageSize
              status:status
              warehouseId:warehouseId
          completionHandler: ^(NSArray<OAIStockTransfer>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStockTransferApi->listStockTransfers: %@", error);
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

### Return type

[**NSArray<OAIStockTransfer>***](OAIStockTransfer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStockTransferStatus**
```objc
-(NSURLSessionTask*) updateStockTransferStatusWithStockTransferId: (NSString*) stockTransferId
    stockTransferStatusUpdate: (OAIStockTransferStatusUpdate*) stockTransferStatusUpdate
        completionHandler: (void (^)(OAIStockTransfer* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* stockTransferId = @"stockTransferId_example"; // 
OAIStockTransferStatusUpdate* stockTransferStatusUpdate = [[OAIStockTransferStatusUpdate alloc] init]; // 

OAIStockTransferApi*apiInstance = [[OAIStockTransferApi alloc] init];

[apiInstance updateStockTransferStatusWithStockTransferId:stockTransferId
              stockTransferStatusUpdate:stockTransferStatusUpdate
          completionHandler: ^(OAIStockTransfer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIStockTransferApi->updateStockTransferStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stockTransferId** | **NSString***|  | 
 **stockTransferStatusUpdate** | [**OAIStockTransferStatusUpdate***](OAIStockTransferStatusUpdate.md)|  | 

### Return type

[**OAIStockTransfer***](OAIStockTransfer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

