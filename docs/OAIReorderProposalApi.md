# OAIReorderProposalApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyReorderProposal**](OAIReorderProposalApi.md#applyreorderproposal) | **POST** /api/v1/reorder-proposals/apply | Convert a reorder proposal into a draft purchase order.
[**getReorderProposal**](OAIReorderProposalApi.md#getreorderproposal) | **GET** /api/v1/reorder-proposals | 


# **applyReorderProposal**
```objc
-(NSURLSessionTask*) applyReorderProposalWithConfiguredOnly: (NSNumber*) configuredOnly
    warehouseId: (NSString*) warehouseId
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```

Convert a reorder proposal into a draft purchase order.

Returns the created purchase order id. Suggested line items are generated with the current reorder quantity per product.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* configuredOnly = @56; // Only include products with a reorder point configured (`min_stock`). (optional)
NSString* warehouseId = @"warehouseId_example"; // Limit to a single warehouse id. (optional)

OAIReorderProposalApi*apiInstance = [[OAIReorderProposalApi alloc] init];

// Convert a reorder proposal into a draft purchase order.
[apiInstance applyReorderProposalWithConfiguredOnly:configuredOnly
              warehouseId:warehouseId
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReorderProposalApi->applyReorderProposal: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuredOnly** | **NSNumber***| Only include products with a reorder point configured (&#x60;min_stock&#x60;). | [optional] 
 **warehouseId** | **NSString***| Limit to a single warehouse id. | [optional] 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReorderProposal**
```objc
-(NSURLSessionTask*) getReorderProposalWithConfiguredOnly: (NSNumber*) configuredOnly
    warehouseId: (NSString*) warehouseId
        completionHandler: (void (^)(OAIReorderProposalResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* configuredOnly = @56; // Only include products with a reorder point configured (`min_stock`). (optional)
NSString* warehouseId = @"warehouseId_example"; // Limit to a single warehouse id. (optional)

OAIReorderProposalApi*apiInstance = [[OAIReorderProposalApi alloc] init];

[apiInstance getReorderProposalWithConfiguredOnly:configuredOnly
              warehouseId:warehouseId
          completionHandler: ^(OAIReorderProposalResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReorderProposalApi->getReorderProposal: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuredOnly** | **NSNumber***| Only include products with a reorder point configured (&#x60;min_stock&#x60;). | [optional] 
 **warehouseId** | **NSString***| Limit to a single warehouse id. | [optional] 

### Return type

[**OAIReorderProposalResponse***](OAIReorderProposalResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

