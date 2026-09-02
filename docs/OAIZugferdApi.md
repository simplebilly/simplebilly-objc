# OAIZugferdApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateZugferdApi**](OAIZugferdApi.md#generatezugferdapi) | **GET** /api/v1/invoices/{id}/zugferd | 


# **generateZugferdApi**
```objc
-(NSURLSessionTask*) generateZugferdApiWithId: (NSString*) _id
    supplierName: (NSString*) supplierName
    supplierStreet: (NSString*) supplierStreet
    supplierCity: (NSString*) supplierCity
    supplierZip: (NSString*) supplierZip
    supplierCountry: (NSString*) supplierCountry
    supplierVatId: (NSString*) supplierVatId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
NSString* supplierName = @"supplierName_example"; //  (optional)
NSString* supplierStreet = @"supplierStreet_example"; //  (optional)
NSString* supplierCity = @"supplierCity_example"; //  (optional)
NSString* supplierZip = @"supplierZip_example"; //  (optional)
NSString* supplierCountry = @"supplierCountry_example"; //  (optional)
NSString* supplierVatId = @"supplierVatId_example"; //  (optional)

OAIZugferdApi*apiInstance = [[OAIZugferdApi alloc] init];

[apiInstance generateZugferdApiWithId:_id
              supplierName:supplierName
              supplierStreet:supplierStreet
              supplierCity:supplierCity
              supplierZip:supplierZip
              supplierCountry:supplierCountry
              supplierVatId:supplierVatId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIZugferdApi->generateZugferdApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **supplierName** | **NSString***|  | [optional] 
 **supplierStreet** | **NSString***|  | [optional] 
 **supplierCity** | **NSString***|  | [optional] 
 **supplierZip** | **NSString***|  | [optional] 
 **supplierCountry** | **NSString***|  | [optional] 
 **supplierVatId** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

