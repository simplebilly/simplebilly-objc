# OAIGenerateQrcodeApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateQrcodeApi**](OAIGenerateQrcodeApi.md#generateqrcodeapi) | **GET** /api/v1/invoices/{id}/qrcode | 


# **generateQrcodeApi**
```objc
-(NSURLSessionTask*) generateQrcodeApiWithIban: (NSString*) iban
    _id: (NSString*) _id
    holderName: (NSString*) holderName
    bic: (NSString*) bic
    amount: (NSString*) amount
    reference: (NSString*) reference
    purpose: (NSString*) purpose
        completionHandler: (void (^)(OAIQRCodeResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* iban = @"iban_example"; // 
NSString* _id = @"_id_example"; // 
NSString* holderName = @"holderName_example"; //  (optional)
NSString* bic = @"bic_example"; //  (optional)
NSString* amount = @"amount_example"; //  (optional)
NSString* reference = @"reference_example"; //  (optional)
NSString* purpose = @"purpose_example"; //  (optional)

OAIGenerateQrcodeApi*apiInstance = [[OAIGenerateQrcodeApi alloc] init];

[apiInstance generateQrcodeApiWithIban:iban
              _id:_id
              holderName:holderName
              bic:bic
              amount:amount
              reference:reference
              purpose:purpose
          completionHandler: ^(OAIQRCodeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGenerateQrcodeApi->generateQrcodeApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iban** | **NSString***|  | 
 **_id** | **NSString***|  | 
 **holderName** | **NSString***|  | [optional] 
 **bic** | **NSString***|  | [optional] 
 **amount** | **NSString***|  | [optional] 
 **reference** | **NSString***|  | [optional] 
 **purpose** | **NSString***|  | [optional] 

### Return type

[**OAIQRCodeResponse***](OAIQRCodeResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

