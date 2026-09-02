# OAIGobdExportApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**buchhalterCsvApi**](OAIGobdExportApi.md#buchhaltercsvapi) | **GET** /api/v1/bookkeeping/buchhalter-csv | 
[**gobdExportApi**](OAIGobdExportApi.md#gobdexportapi) | **GET** /api/v1/bookkeeping/gobd | GoBD/GDPdU export. Default: ZIP archive (&#x60;index.xml&#x60; + CSV tables, IDEA format). &#x60;?format&#x3D;csv&#x60; returns the legacy single-journal CSV as JSON.


# **buchhalterCsvApi**
```objc
-(NSURLSessionTask*) buchhalterCsvApiWithDateFrom: (NSString*) dateFrom
    dateTo: (NSString*) dateTo
        completionHandler: (void (^)(OAIGoBDExportResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* dateFrom = @"dateFrom_example"; // 
NSString* dateTo = @"dateTo_example"; // 

OAIGobdExportApi*apiInstance = [[OAIGobdExportApi alloc] init];

[apiInstance buchhalterCsvApiWithDateFrom:dateFrom
              dateTo:dateTo
          completionHandler: ^(OAIGoBDExportResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGobdExportApi->buchhalterCsvApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dateFrom** | **NSString***|  | 
 **dateTo** | **NSString***|  | 

### Return type

[**OAIGoBDExportResponse***](OAIGoBDExportResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gobdExportApi**
```objc
-(NSURLSessionTask*) gobdExportApiWithYear: (NSNumber*) year
    format: (NSString*) format
        completionHandler: (void (^)(NSError* error)) handler;
```

GoBD/GDPdU export. Default: ZIP archive (`index.xml` + CSV tables, IDEA format). `?format=csv` returns the legacy single-journal CSV as JSON.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 
NSString* format = zip; // Export format: `zip` (default, full GDPdU/IDEA export) or `csv` (legacy single-journal CSV as JSON). (optional)

OAIGobdExportApi*apiInstance = [[OAIGobdExportApi alloc] init];

// GoBD/GDPdU export. Default: ZIP archive (`index.xml` + CSV tables, IDEA format). `?format=csv` returns the legacy single-journal CSV as JSON.
[apiInstance gobdExportApiWithYear:year
              format:format
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIGobdExportApi->gobdExportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 
 **format** | **NSString***| Export format: &#x60;zip&#x60; (default, full GDPdU/IDEA export) or &#x60;csv&#x60; (legacy single-journal CSV as JSON). | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

