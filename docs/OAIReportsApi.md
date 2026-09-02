# OAIReportsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bilanzReportApi**](OAIReportsApi.md#bilanzreportapi) | **GET** /api/v1/bookkeeping/reports/bilanz | Bilanz (Balance Sheet)
[**guvReportApi**](OAIReportsApi.md#guvreportapi) | **GET** /api/v1/bookkeeping/reports/guv | Gewinn- und Verlustrechnung (P&amp;L statement)
[**kontenansichtReportApi**](OAIReportsApi.md#kontenansichtreportapi) | **GET** /api/v1/bookkeeping/reports/kontenansicht | Kontenansicht (Account Overview)
[**umsatzsteuerReportApi**](OAIReportsApi.md#umsatzsteuerreportapi) | **GET** /api/v1/bookkeeping/reports/umsatzsteuer | Umsatzsteuer-Voranmeldung (VAT report)


# **bilanzReportApi**
```objc
-(NSURLSessionTask*) bilanzReportApiWithYear: (NSNumber*) year
    month: (NSNumber*) month
    dateFrom: (NSString*) dateFrom
    dateTo: (NSString*) dateTo
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
        completionHandler: (void (^)(OAIBilanzReport* output, NSError* error)) handler;
```

Bilanz (Balance Sheet)

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; //  (optional)
NSNumber* month = @56; //  (optional)
NSString* dateFrom = @"dateFrom_example"; //  (optional)
NSString* dateTo = @"dateTo_example"; //  (optional)
NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)

OAIReportsApi*apiInstance = [[OAIReportsApi alloc] init];

// Bilanz (Balance Sheet)
[apiInstance bilanzReportApiWithYear:year
              month:month
              dateFrom:dateFrom
              dateTo:dateTo
              page:page
              pageSize:pageSize
          completionHandler: ^(OAIBilanzReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReportsApi->bilanzReportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | [optional] 
 **month** | **NSNumber***|  | [optional] 
 **dateFrom** | **NSString***|  | [optional] 
 **dateTo** | **NSString***|  | [optional] 
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 

### Return type

[**OAIBilanzReport***](OAIBilanzReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guvReportApi**
```objc
-(NSURLSessionTask*) guvReportApiWithYear: (NSNumber*) year
    month: (NSNumber*) month
    dateFrom: (NSString*) dateFrom
    dateTo: (NSString*) dateTo
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
        completionHandler: (void (^)(OAIGuVReport* output, NSError* error)) handler;
```

Gewinn- und Verlustrechnung (P&L statement)

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; //  (optional)
NSNumber* month = @56; //  (optional)
NSString* dateFrom = @"dateFrom_example"; //  (optional)
NSString* dateTo = @"dateTo_example"; //  (optional)
NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)

OAIReportsApi*apiInstance = [[OAIReportsApi alloc] init];

// Gewinn- und Verlustrechnung (P&L statement)
[apiInstance guvReportApiWithYear:year
              month:month
              dateFrom:dateFrom
              dateTo:dateTo
              page:page
              pageSize:pageSize
          completionHandler: ^(OAIGuVReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReportsApi->guvReportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | [optional] 
 **month** | **NSNumber***|  | [optional] 
 **dateFrom** | **NSString***|  | [optional] 
 **dateTo** | **NSString***|  | [optional] 
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 

### Return type

[**OAIGuVReport***](OAIGuVReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kontenansichtReportApi**
```objc
-(NSURLSessionTask*) kontenansichtReportApiWithYear: (NSNumber*) year
    month: (NSNumber*) month
    dateFrom: (NSString*) dateFrom
    dateTo: (NSString*) dateTo
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
        completionHandler: (void (^)(OAIKontoReport* output, NSError* error)) handler;
```

Kontenansicht (Account Overview)

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; //  (optional)
NSNumber* month = @56; //  (optional)
NSString* dateFrom = @"dateFrom_example"; //  (optional)
NSString* dateTo = @"dateTo_example"; //  (optional)
NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)

OAIReportsApi*apiInstance = [[OAIReportsApi alloc] init];

// Kontenansicht (Account Overview)
[apiInstance kontenansichtReportApiWithYear:year
              month:month
              dateFrom:dateFrom
              dateTo:dateTo
              page:page
              pageSize:pageSize
          completionHandler: ^(OAIKontoReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReportsApi->kontenansichtReportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | [optional] 
 **month** | **NSNumber***|  | [optional] 
 **dateFrom** | **NSString***|  | [optional] 
 **dateTo** | **NSString***|  | [optional] 
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 

### Return type

[**OAIKontoReport***](OAIKontoReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **umsatzsteuerReportApi**
```objc
-(NSURLSessionTask*) umsatzsteuerReportApiWithYear: (NSNumber*) year
    month: (NSNumber*) month
    dateFrom: (NSString*) dateFrom
    dateTo: (NSString*) dateTo
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
        completionHandler: (void (^)(OAIUmsatzsteuerReport* output, NSError* error)) handler;
```

Umsatzsteuer-Voranmeldung (VAT report)

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; //  (optional)
NSNumber* month = @56; //  (optional)
NSString* dateFrom = @"dateFrom_example"; //  (optional)
NSString* dateTo = @"dateTo_example"; //  (optional)
NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)

OAIReportsApi*apiInstance = [[OAIReportsApi alloc] init];

// Umsatzsteuer-Voranmeldung (VAT report)
[apiInstance umsatzsteuerReportApiWithYear:year
              month:month
              dateFrom:dateFrom
              dateTo:dateTo
              page:page
              pageSize:pageSize
          completionHandler: ^(OAIUmsatzsteuerReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReportsApi->umsatzsteuerReportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | [optional] 
 **month** | **NSNumber***|  | [optional] 
 **dateFrom** | **NSString***|  | [optional] 
 **dateTo** | **NSString***|  | [optional] 
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 

### Return type

[**OAIUmsatzsteuerReport***](OAIUmsatzsteuerReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

