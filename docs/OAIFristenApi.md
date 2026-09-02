# OAIFristenApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fristenApi**](OAIFristenApi.md#fristenapi) | **GET** /api/v1/bookkeeping/fristen | 


# **fristenApi**
```objc
-(NSURLSessionTask*) fristenApiWithBundesland: (NSString*) bundesland
    voranmeldungsrhythmus: (NSString*) voranmeldungsrhythmus
    dauerfristverlaengerung: (NSNumber*) dauerfristverlaengerung
    estAktiv: (NSNumber*) estAktiv
    gewstAktiv: (NSNumber*) gewstAktiv
    monate: (NSNumber*) monate
        completionHandler: (void (^)(OAIFristenErgebnis* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* bundesland = @"bundesland_example"; //  (optional)
NSString* voranmeldungsrhythmus = @"voranmeldungsrhythmus_example"; //  (optional)
NSNumber* dauerfristverlaengerung = @56; //  (optional)
NSNumber* estAktiv = @56; //  (optional)
NSNumber* gewstAktiv = @56; //  (optional)
NSNumber* monate = @56; //  (optional)

OAIFristenApi*apiInstance = [[OAIFristenApi alloc] init];

[apiInstance fristenApiWithBundesland:bundesland
              voranmeldungsrhythmus:voranmeldungsrhythmus
              dauerfristverlaengerung:dauerfristverlaengerung
              estAktiv:estAktiv
              gewstAktiv:gewstAktiv
              monate:monate
          completionHandler: ^(OAIFristenErgebnis* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFristenApi->fristenApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundesland** | **NSString***|  | [optional] 
 **voranmeldungsrhythmus** | **NSString***|  | [optional] 
 **dauerfristverlaengerung** | **NSNumber***|  | [optional] 
 **estAktiv** | **NSNumber***|  | [optional] 
 **gewstAktiv** | **NSNumber***|  | [optional] 
 **monate** | **NSNumber***|  | [optional] 

### Return type

[**OAIFristenErgebnis***](OAIFristenErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

