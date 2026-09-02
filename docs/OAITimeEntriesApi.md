# OAITimeEntriesApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clockInTimeEntry**](OAITimeEntriesApi.md#clockintimeentry) | **POST** /api/v1/time-entries | Clock in for the authenticated user (resolved via their employee profile).
[**clockOutTimeEntry**](OAITimeEntriesApi.md#clockouttimeentry) | **PATCH** /api/v1/time-entries/{id} | Clock out an entry: the entry&#39;s owner, or anyone with &#x60;time_entries:write&#x60;.
[**getLaborCosts**](OAITimeEntriesApi.md#getlaborcosts) | **GET** /api/v1/labor-costs | Labor-cost report: worked hours aggregated per employee / order / day, valued at the employee&#39;s hourly cost rate.
[**listTimeEntries**](OAITimeEntriesApi.md#listtimeentries) | **GET** /api/v1/time-entries | List time entries with optional date-range / active / employee filters.


# **clockInTimeEntry**
```objc
-(NSURLSessionTask*) clockInTimeEntryWithTimeEntryClockIn: (OAITimeEntryClockIn*) timeEntryClockIn
        completionHandler: (void (^)(OAITimeEntryDto* output, NSError* error)) handler;
```

Clock in for the authenticated user (resolved via their employee profile).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAITimeEntryClockIn* timeEntryClockIn = [[OAITimeEntryClockIn alloc] init]; // 

OAITimeEntriesApi*apiInstance = [[OAITimeEntriesApi alloc] init];

// Clock in for the authenticated user (resolved via their employee profile).
[apiInstance clockInTimeEntryWithTimeEntryClockIn:timeEntryClockIn
          completionHandler: ^(OAITimeEntryDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITimeEntriesApi->clockInTimeEntry: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeEntryClockIn** | [**OAITimeEntryClockIn***](OAITimeEntryClockIn.md)|  | 

### Return type

[**OAITimeEntryDto***](OAITimeEntryDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clockOutTimeEntry**
```objc
-(NSURLSessionTask*) clockOutTimeEntryWithId: (NSString*) _id
    timeEntryClockOut: (OAITimeEntryClockOut*) timeEntryClockOut
        completionHandler: (void (^)(OAITimeEntryDto* output, NSError* error)) handler;
```

Clock out an entry: the entry's owner, or anyone with `time_entries:write`.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAITimeEntryClockOut* timeEntryClockOut = [[OAITimeEntryClockOut alloc] init]; // 

OAITimeEntriesApi*apiInstance = [[OAITimeEntriesApi alloc] init];

// Clock out an entry: the entry's owner, or anyone with `time_entries:write`.
[apiInstance clockOutTimeEntryWithId:_id
              timeEntryClockOut:timeEntryClockOut
          completionHandler: ^(OAITimeEntryDto* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITimeEntriesApi->clockOutTimeEntry: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **timeEntryClockOut** | [**OAITimeEntryClockOut***](OAITimeEntryClockOut.md)|  | 

### Return type

[**OAITimeEntryDto***](OAITimeEntryDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLaborCosts**
```objc
-(NSURLSessionTask*) getLaborCostsWithFrom: (NSDate*) from
    to: (NSDate*) to
    groupBy: (NSString*) groupBy
        completionHandler: (void (^)(NSArray<OAILaborCostRow>* output, NSError* error)) handler;
```

Labor-cost report: worked hours aggregated per employee / order / day, valued at the employee's hourly cost rate.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSDate* from = @"2013-10-20T19:20:30+01:00"; // 
NSDate* to = @"2013-10-20T19:20:30+01:00"; // 
NSString* groupBy = @"groupBy_example"; // One of \"employee\", \"order\" or \"day\".

OAITimeEntriesApi*apiInstance = [[OAITimeEntriesApi alloc] init];

// Labor-cost report: worked hours aggregated per employee / order / day, valued at the employee's hourly cost rate.
[apiInstance getLaborCostsWithFrom:from
              to:to
              groupBy:groupBy
          completionHandler: ^(NSArray<OAILaborCostRow>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITimeEntriesApi->getLaborCosts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **NSDate***|  | 
 **to** | **NSDate***|  | 
 **groupBy** | **NSString***| One of \&quot;employee\&quot;, \&quot;order\&quot; or \&quot;day\&quot;. | 

### Return type

[**NSArray<OAILaborCostRow>***](OAILaborCostRow.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTimeEntries**
```objc
-(NSURLSessionTask*) listTimeEntriesWithFrom: (NSDate*) from
    to: (NSDate*) to
    active: (NSNumber*) active
    employeeId: (NSString*) employeeId
        completionHandler: (void (^)(NSArray<OAITimeEntryDto>* output, NSError* error)) handler;
```

List time entries with optional date-range / active / employee filters.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSDate* from = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSDate* to = @"2013-10-20T19:20:30+01:00"; //  (optional)
NSNumber* active = @56; // Only currently running shifts (clock_in set, clock_out null). (optional)
NSString* employeeId = @"employeeId_example"; //  (optional)

OAITimeEntriesApi*apiInstance = [[OAITimeEntriesApi alloc] init];

// List time entries with optional date-range / active / employee filters.
[apiInstance listTimeEntriesWithFrom:from
              to:to
              active:active
              employeeId:employeeId
          completionHandler: ^(NSArray<OAITimeEntryDto>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITimeEntriesApi->listTimeEntries: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **NSDate***|  | [optional] 
 **to** | **NSDate***|  | [optional] 
 **active** | **NSNumber***| Only currently running shifts (clock_in set, clock_out null). | [optional] 
 **employeeId** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAITimeEntryDto>***](OAITimeEntryDto.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

