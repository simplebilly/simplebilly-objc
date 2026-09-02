# OAIEmployeeApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmployee**](OAIEmployeeApi.md#createemployee) | **POST** /api/v1/employees | 
[**deleteEmployee**](OAIEmployeeApi.md#deleteemployee) | **DELETE** /api/v1/employees/{id} | 
[**employeeRestore**](OAIEmployeeApi.md#employeerestore) | **POST** /api/v1/employees/{id}/restore | 
[**getEmployee**](OAIEmployeeApi.md#getemployee) | **GET** /api/v1/employees/{id} | 
[**getEmployeePayrollSummary**](OAIEmployeeApi.md#getemployeepayrollsummary) | **GET** /api/v1/employees/{id}/payroll-summary | 
[**getEmployees**](OAIEmployeeApi.md#getemployees) | **GET** /api/v1/employees/ | 
[**updateEmployee**](OAIEmployeeApi.md#updateemployee) | **PUT** /api/v1/employees/{id} | 


# **createEmployee**
```objc
-(NSURLSessionTask*) createEmployeeWithEmployeeCreate: (OAIEmployeeCreate*) employeeCreate
        completionHandler: (void (^)(OAIEmployee* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIEmployeeCreate* employeeCreate = [[OAIEmployeeCreate alloc] init]; // 

OAIEmployeeApi*apiInstance = [[OAIEmployeeApi alloc] init];

[apiInstance createEmployeeWithEmployeeCreate:employeeCreate
          completionHandler: ^(OAIEmployee* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmployeeApi->createEmployee: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeCreate** | [**OAIEmployeeCreate***](OAIEmployeeCreate.md)|  | 

### Return type

[**OAIEmployee***](OAIEmployee.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEmployee**
```objc
-(NSURLSessionTask*) deleteEmployeeWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIEmployeeApi*apiInstance = [[OAIEmployeeApi alloc] init];

[apiInstance deleteEmployeeWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIEmployeeApi->deleteEmployee: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **employeeRestore**
```objc
-(NSURLSessionTask*) employeeRestoreWithId: (NSString*) _id
        completionHandler: (void (^)(OAIEmployee* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIEmployeeApi*apiInstance = [[OAIEmployeeApi alloc] init];

[apiInstance employeeRestoreWithId:_id
          completionHandler: ^(OAIEmployee* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmployeeApi->employeeRestore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIEmployee***](OAIEmployee.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmployee**
```objc
-(NSURLSessionTask*) getEmployeeWithId: (NSString*) _id
        completionHandler: (void (^)(OAIEmployee* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAIEmployeeApi*apiInstance = [[OAIEmployeeApi alloc] init];

[apiInstance getEmployeeWithId:_id
          completionHandler: ^(OAIEmployee* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmployeeApi->getEmployee: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 

### Return type

[**OAIEmployee***](OAIEmployee.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmployeePayrollSummary**
```objc
-(NSURLSessionTask*) getEmployeePayrollSummaryWithId: (NSString*) _id
    year: (NSNumber*) year
        completionHandler: (void (^)(OAIPayrollSummary* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
NSNumber* year = @56; // Fiscal year for the breakdown; defaults to the current year. (optional)

OAIEmployeeApi*apiInstance = [[OAIEmployeeApi alloc] init];

[apiInstance getEmployeePayrollSummaryWithId:_id
              year:year
          completionHandler: ^(OAIPayrollSummary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmployeeApi->getEmployeePayrollSummary: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **year** | **NSNumber***| Fiscal year for the breakdown; defaults to the current year. | [optional] 

### Return type

[**OAIPayrollSummary***](OAIPayrollSummary.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmployees**
```objc
-(NSURLSessionTask*) getEmployeesWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAIEmployee>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAIEmployeeApi*apiInstance = [[OAIEmployeeApi alloc] init];

[apiInstance getEmployeesWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAIEmployee>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmployeeApi->getEmployees: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 
 **search** | **NSString***|  | [optional] 
 **includeDeleted** | **NSNumber***| Soft-delete entities: set true to include rows with &#x60;deleted_at&#x60; set. | [optional] 

### Return type

[**NSArray<OAIEmployee>***](OAIEmployee.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEmployee**
```objc
-(NSURLSessionTask*) updateEmployeeWithId: (NSString*) _id
    employeeUpdate: (OAIEmployeeUpdate*) employeeUpdate
        completionHandler: (void (^)(OAIEmployee* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAIEmployeeUpdate* employeeUpdate = [[OAIEmployeeUpdate alloc] init]; // 

OAIEmployeeApi*apiInstance = [[OAIEmployeeApi alloc] init];

[apiInstance updateEmployeeWithId:_id
              employeeUpdate:employeeUpdate
          completionHandler: ^(OAIEmployee* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmployeeApi->updateEmployee: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **employeeUpdate** | [**OAIEmployeeUpdate***](OAIEmployeeUpdate.md)|  | 

### Return type

[**OAIEmployee***](OAIEmployee.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

