# OAIGoodsReceiptApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGoodsReceipt**](OAIGoodsReceiptApi.md#creategoodsreceipt) | **POST** /api/v1/goods-receipts | 
[**deleteGoodsReceipt**](OAIGoodsReceiptApi.md#deletegoodsreceipt) | **DELETE** /api/v1/goods-receipts/{goods_receipt_id} | 
[**getGoodsReceipt**](OAIGoodsReceiptApi.md#getgoodsreceipt) | **GET** /api/v1/goods-receipts/{goods_receipt_id} | 
[**listGoodsReceipts**](OAIGoodsReceiptApi.md#listgoodsreceipts) | **GET** /api/v1/goods-receipts/ | 


# **createGoodsReceipt**
```objc
-(NSURLSessionTask*) createGoodsReceiptWithGoodsReceipt: (OAIGoodsReceipt*) goodsReceipt
        completionHandler: (void (^)(OAIGoodsReceipt* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIGoodsReceipt* goodsReceipt = [[OAIGoodsReceipt alloc] init]; // 

OAIGoodsReceiptApi*apiInstance = [[OAIGoodsReceiptApi alloc] init];

[apiInstance createGoodsReceiptWithGoodsReceipt:goodsReceipt
          completionHandler: ^(OAIGoodsReceipt* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGoodsReceiptApi->createGoodsReceipt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **goodsReceipt** | [**OAIGoodsReceipt***](OAIGoodsReceipt.md)|  | 

### Return type

[**OAIGoodsReceipt***](OAIGoodsReceipt.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGoodsReceipt**
```objc
-(NSURLSessionTask*) deleteGoodsReceiptWithGoodsReceiptId: (NSString*) goodsReceiptId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* goodsReceiptId = @"goodsReceiptId_example"; // 

OAIGoodsReceiptApi*apiInstance = [[OAIGoodsReceiptApi alloc] init];

[apiInstance deleteGoodsReceiptWithGoodsReceiptId:goodsReceiptId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIGoodsReceiptApi->deleteGoodsReceipt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **goodsReceiptId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGoodsReceipt**
```objc
-(NSURLSessionTask*) getGoodsReceiptWithGoodsReceiptId: (NSString*) goodsReceiptId
        completionHandler: (void (^)(OAIGoodsReceipt* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* goodsReceiptId = @"goodsReceiptId_example"; // 

OAIGoodsReceiptApi*apiInstance = [[OAIGoodsReceiptApi alloc] init];

[apiInstance getGoodsReceiptWithGoodsReceiptId:goodsReceiptId
          completionHandler: ^(OAIGoodsReceipt* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGoodsReceiptApi->getGoodsReceipt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **goodsReceiptId** | **NSString***|  | 

### Return type

[**OAIGoodsReceipt***](OAIGoodsReceipt.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGoodsReceipts**
```objc
-(NSURLSessionTask*) listGoodsReceiptsWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    purchaseOrderId: (NSString*) purchaseOrderId
    supplierName: (NSString*) supplierName
    warehouseId: (NSString*) warehouseId
        completionHandler: (void (^)(NSArray<OAIGoodsReceipt>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* purchaseOrderId = @"purchaseOrderId_example"; //  (optional)
NSString* supplierName = @"supplierName_example"; //  (optional)
NSString* warehouseId = @"warehouseId_example"; //  (optional)

OAIGoodsReceiptApi*apiInstance = [[OAIGoodsReceiptApi alloc] init];

[apiInstance listGoodsReceiptsWithPage:page
              pageSize:pageSize
              purchaseOrderId:purchaseOrderId
              supplierName:supplierName
              warehouseId:warehouseId
          completionHandler: ^(NSArray<OAIGoodsReceipt>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGoodsReceiptApi->listGoodsReceipts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **purchaseOrderId** | **NSString***|  | [optional] 
 **supplierName** | **NSString***|  | [optional] 
 **warehouseId** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIGoodsReceipt>***](OAIGoodsReceipt.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

