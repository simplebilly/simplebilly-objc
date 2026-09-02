# OAICustomerApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomer**](OAICustomerApi.md#createcustomer) | **POST** /api/v1/customers | 
[**customerRestore**](OAICustomerApi.md#customerrestore) | **POST** /api/v1/customers/{customer_id}/restore | 
[**deleteCustomer**](OAICustomerApi.md#deletecustomer) | **DELETE** /api/v1/customers/{customer_id} | 
[**getCustomer**](OAICustomerApi.md#getcustomer) | **GET** /api/v1/customers/{customer_id} | 
[**getCustomers**](OAICustomerApi.md#getcustomers) | **GET** /api/v1/customers/ | 
[**updateCustomer**](OAICustomerApi.md#updatecustomer) | **PUT** /api/v1/customers/{customer_id} | 


# **createCustomer**
```objc
-(NSURLSessionTask*) createCustomerWithCustomerCreate: (OAICustomerCreate*) customerCreate
        completionHandler: (void (^)(OAICustomer* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAICustomerCreate* customerCreate = [[OAICustomerCreate alloc] init]; // 

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

[apiInstance createCustomerWithCustomerCreate:customerCreate
          completionHandler: ^(OAICustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->createCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerCreate** | [**OAICustomerCreate***](OAICustomerCreate.md)|  | 

### Return type

[**OAICustomer***](OAICustomer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerRestore**
```objc
-(NSURLSessionTask*) customerRestoreWithCustomerId: (NSString*) customerId
        completionHandler: (void (^)(OAICustomer* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* customerId = @"customerId_example"; // 

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

[apiInstance customerRestoreWithCustomerId:customerId
          completionHandler: ^(OAICustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->customerRestore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***|  | 

### Return type

[**OAICustomer***](OAICustomer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomer**
```objc
-(NSURLSessionTask*) deleteCustomerWithCustomerId: (NSString*) customerId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* customerId = @"customerId_example"; // 

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

[apiInstance deleteCustomerWithCustomerId:customerId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->deleteCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomer**
```objc
-(NSURLSessionTask*) getCustomerWithCustomerId: (NSString*) customerId
        completionHandler: (void (^)(OAICustomer* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* customerId = @"customerId_example"; // 

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

[apiInstance getCustomerWithCustomerId:customerId
          completionHandler: ^(OAICustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->getCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***|  | 

### Return type

[**OAICustomer***](OAICustomer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomers**
```objc
-(NSURLSessionTask*) getCustomersWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    search: (NSString*) search
    includeDeleted: (NSNumber*) includeDeleted
        completionHandler: (void (^)(NSArray<OAICustomer>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* page = 1; //  (optional)
NSNumber* pageSize = @56; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* includeDeleted = @56; // Soft-delete entities: set true to include rows with `deleted_at` set. (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

[apiInstance getCustomersWithPage:page
              pageSize:pageSize
              search:search
              includeDeleted:includeDeleted
          completionHandler: ^(NSArray<OAICustomer>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->getCustomers: %@", error);
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

[**NSArray<OAICustomer>***](OAICustomer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomer**
```objc
-(NSURLSessionTask*) updateCustomerWithCustomerId: (NSString*) customerId
    customerUpdate: (OAICustomerUpdate*) customerUpdate
        completionHandler: (void (^)(OAICustomer* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* customerId = @"customerId_example"; // 
OAICustomerUpdate* customerUpdate = [[OAICustomerUpdate alloc] init]; // 

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

[apiInstance updateCustomerWithCustomerId:customerId
              customerUpdate:customerUpdate
          completionHandler: ^(OAICustomer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->updateCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***|  | 
 **customerUpdate** | [**OAICustomerUpdate***](OAICustomerUpdate.md)|  | 

### Return type

[**OAICustomer***](OAICustomer.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

