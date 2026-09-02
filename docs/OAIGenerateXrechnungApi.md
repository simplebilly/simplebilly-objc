# OAIGenerateXrechnungApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateXrechnungApi**](OAIGenerateXrechnungApi.md#generatexrechnungapi) | **GET** /api/v1/invoices/{id}/xrechnung | 


# **generateXrechnungApi**
```objc
-(NSURLSessionTask*) generateXrechnungApiWithId: (NSString*) _id
    supplierName: (NSString*) supplierName
    supplierStreet: (NSString*) supplierStreet
    supplierCity: (NSString*) supplierCity
    supplierZip: (NSString*) supplierZip
    supplierCountry: (NSString*) supplierCountry
    supplierVatId: (NSString*) supplierVatId
        completionHandler: (void (^)(OAIXRechnungResponse* output, NSError* error)) handler;
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

OAIGenerateXrechnungApi*apiInstance = [[OAIGenerateXrechnungApi alloc] init];

[apiInstance generateXrechnungApiWithId:_id
              supplierName:supplierName
              supplierStreet:supplierStreet
              supplierCity:supplierCity
              supplierZip:supplierZip
              supplierCountry:supplierCountry
              supplierVatId:supplierVatId
          completionHandler: ^(OAIXRechnungResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGenerateXrechnungApi->generateXrechnungApi: %@", error);
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

[**OAIXRechnungResponse***](OAIXRechnungResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

