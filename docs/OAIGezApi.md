# OAIGezApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gezApi**](OAIGezApi.md#gezapi) | **GET** /api/v1/bookkeeping/gez | 


# **gezApi**
```objc
-(NSURLSessionTask*) gezApiWithJahr: (NSNumber*) jahr
    betriebsstaetten: (NSString*) betriebsstaetten
    kfz: (NSNumber*) kfz
    hotelzimmer: (NSNumber*) hotelzimmer
    beschaefigte: (NSNumber*) beschaefigte
        completionHandler: (void (^)(OAIGezReport* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* jahr = @56; //  (optional)
NSString* betriebsstaetten = @"betriebsstaetten_example"; // Liste der Betriebsstätten als JSON, z.B. `[{\"name\":\"Filiale 1\",\"beschaefigte\":12}]`. (optional)
NSNumber* kfz = @56; // Gesamtzahl der betrieblich genutzten Kfz (falls keine Betriebsstätten angegeben sind). (optional)
NSNumber* hotelzimmer = @56; // Gesamtzahl der Hotel-/Gästezimmer und Ferienwohnungen. (optional)
NSNumber* beschaefigte = @56; // Gesamtzahl der Beschäftigten (verwendet nur, wenn `betriebsstaetten` fehlt; dann wird eine einzelne Betriebsstätte angenommen). (optional)

OAIGezApi*apiInstance = [[OAIGezApi alloc] init];

[apiInstance gezApiWithJahr:jahr
              betriebsstaetten:betriebsstaetten
              kfz:kfz
              hotelzimmer:hotelzimmer
              beschaefigte:beschaefigte
          completionHandler: ^(OAIGezReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGezApi->gezApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jahr** | **NSNumber***|  | [optional] 
 **betriebsstaetten** | **NSString***| Liste der Betriebsstätten als JSON, z.B. &#x60;[{\&quot;name\&quot;:\&quot;Filiale 1\&quot;,\&quot;beschaefigte\&quot;:12}]&#x60;. | [optional] 
 **kfz** | **NSNumber***| Gesamtzahl der betrieblich genutzten Kfz (falls keine Betriebsstätten angegeben sind). | [optional] 
 **hotelzimmer** | **NSNumber***| Gesamtzahl der Hotel-/Gästezimmer und Ferienwohnungen. | [optional] 
 **beschaefigte** | **NSNumber***| Gesamtzahl der Beschäftigten (verwendet nur, wenn &#x60;betriebsstaetten&#x60; fehlt; dann wird eine einzelne Betriebsstätte angenommen). | [optional] 

### Return type

[**OAIGezReport***](OAIGezReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

