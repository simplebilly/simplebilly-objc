# OAIGewerbesteuerApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gewerbesteuerApi**](OAIGewerbesteuerApi.md#gewerbesteuerapi) | **GET** /api/v1/bookkeeping/gewerbesteuer | 


# **gewerbesteuerApi**
```objc
-(NSURLSessionTask*) gewerbesteuerApiWithYear: (NSNumber*) year
    hebesatz: (NSString*) hebesatz
    gewerbeertrag: (NSString*) gewerbeertrag
    country: (NSString*) country
    gemeindeschluessel: (NSString*) gemeindeschluessel
        completionHandler: (void (^)(OAIGewerbesteuerErgebnis* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 
NSString* hebesatz = @"hebesatz_example"; //  (optional)
NSString* gewerbeertrag = @"gewerbeertrag_example"; //  (optional)
NSString* country = @"country_example"; //  (optional)
NSString* gemeindeschluessel = @"gemeindeschluessel_example"; //  (optional)

OAIGewerbesteuerApi*apiInstance = [[OAIGewerbesteuerApi alloc] init];

[apiInstance gewerbesteuerApiWithYear:year
              hebesatz:hebesatz
              gewerbeertrag:gewerbeertrag
              country:country
              gemeindeschluessel:gemeindeschluessel
          completionHandler: ^(OAIGewerbesteuerErgebnis* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGewerbesteuerApi->gewerbesteuerApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 
 **hebesatz** | **NSString***|  | [optional] 
 **gewerbeertrag** | **NSString***|  | [optional] 
 **country** | **NSString***|  | [optional] 
 **gemeindeschluessel** | **NSString***|  | [optional] 

### Return type

[**OAIGewerbesteuerErgebnis***](OAIGewerbesteuerErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

