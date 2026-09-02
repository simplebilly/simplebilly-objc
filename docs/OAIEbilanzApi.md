# OAIEbilanzApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ebilanzReportApi**](OAIEbilanzApi.md#ebilanzreportapi) | **GET** /api/v1/bookkeeping/ebilanz | 
[**ebilanzXbrlExportApi**](OAIEbilanzApi.md#ebilanzxbrlexportapi) | **GET** /api/v1/bookkeeping/ebilanz/xbrl | 


# **ebilanzReportApi**
```objc
-(NSURLSessionTask*) ebilanzReportApiWithYear: (NSNumber*) year
    dateFrom: (NSString*) dateFrom
    dateTo: (NSString*) dateTo
        completionHandler: (void (^)(OAIEBilanzReport* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; //  (optional)
NSString* dateFrom = @"dateFrom_example"; //  (optional)
NSString* dateTo = @"dateTo_example"; //  (optional)

OAIEbilanzApi*apiInstance = [[OAIEbilanzApi alloc] init];

[apiInstance ebilanzReportApiWithYear:year
              dateFrom:dateFrom
              dateTo:dateTo
          completionHandler: ^(OAIEBilanzReport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEbilanzApi->ebilanzReportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | [optional] 
 **dateFrom** | **NSString***|  | [optional] 
 **dateTo** | **NSString***|  | [optional] 

### Return type

[**OAIEBilanzReport***](OAIEBilanzReport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ebilanzXbrlExportApi**
```objc
-(NSURLSessionTask*) ebilanzXbrlExportApiWithYear: (NSNumber*) year
    dateFrom: (NSString*) dateFrom
    dateTo: (NSString*) dateTo
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; //  (optional)
NSString* dateFrom = @"dateFrom_example"; //  (optional)
NSString* dateTo = @"dateTo_example"; //  (optional)

OAIEbilanzApi*apiInstance = [[OAIEbilanzApi alloc] init];

[apiInstance ebilanzXbrlExportApiWithYear:year
              dateFrom:dateFrom
              dateTo:dateTo
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEbilanzApi->ebilanzXbrlExportApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | [optional] 
 **dateFrom** | **NSString***|  | [optional] 
 **dateTo** | **NSString***|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

