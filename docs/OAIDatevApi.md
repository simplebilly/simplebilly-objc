# OAIDatevApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**datevExportApi**](OAIDatevApi.md#datevexportapi) | **GET** /api/v1/bookkeeping/datev/export | Export bookkeeping data as DATEV CSV
[**datevPreviewApi**](OAIDatevApi.md#datevpreviewapi) | **GET** /api/v1/bookkeeping/datev/preview | Exported_datev_bookings: returns formed bookings for review


# **datevExportApi**
```objc
-(NSURLSessionTask*) datevExportApiWithAccountSchema: (NSString*) accountSchema
    dateFrom: (NSString*) dateFrom
    dateTo: (NSString*) dateTo
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
        completionHandler: (void (^)(OAIDatevExportResponse* output, NSError* error)) handler;
```

Export bookkeeping data as DATEV CSV

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* accountSchema = @"accountSchema_example"; //  (optional)
NSString* dateFrom = @"dateFrom_example"; //  (optional)
NSString* dateTo = @"dateTo_example"; //  (optional)
NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)

OAIDatevApi*apiInstance = [[OAIDatevApi alloc] init];

// Export bookkeeping data as DATEV CSV
[apiInstance datevExportApiWithAccountSchema:accountSchema
              dateFrom:dateFrom
              dateTo:dateTo
              page:page
              pageSize:pageSize
          completionHandler: ^(OAIDatevExportResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDatevApi->datevExportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountSchema** | **NSString***|  | [optional] 
 **dateFrom** | **NSString***|  | [optional] 
 **dateTo** | **NSString***|  | [optional] 
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 

### Return type

[**OAIDatevExportResponse***](OAIDatevExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **datevPreviewApi**
```objc
-(NSURLSessionTask*) datevPreviewApiWithAccountSchema: (NSString*) accountSchema
    dateFrom: (NSString*) dateFrom
    dateTo: (NSString*) dateTo
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
        completionHandler: (void (^)(NSArray<OAIDatevBookingPreview>* output, NSError* error)) handler;
```

Exported_datev_bookings: returns formed bookings for review

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* accountSchema = @"accountSchema_example"; //  (optional)
NSString* dateFrom = @"dateFrom_example"; //  (optional)
NSString* dateTo = @"dateTo_example"; //  (optional)
NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)

OAIDatevApi*apiInstance = [[OAIDatevApi alloc] init];

// Exported_datev_bookings: returns formed bookings for review
[apiInstance datevPreviewApiWithAccountSchema:accountSchema
              dateFrom:dateFrom
              dateTo:dateTo
              page:page
              pageSize:pageSize
          completionHandler: ^(NSArray<OAIDatevBookingPreview>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDatevApi->datevPreviewApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountSchema** | **NSString***|  | [optional] 
 **dateFrom** | **NSString***|  | [optional] 
 **dateTo** | **NSString***|  | [optional] 
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 

### Return type

[**NSArray<OAIDatevBookingPreview>***](OAIDatevBookingPreview.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

