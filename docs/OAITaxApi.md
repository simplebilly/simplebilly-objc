# OAITaxApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTaxRate**](OAITaxApi.md#createtaxrate) | **POST** /api/v1/tax-rates | Create a tax rate (&#x60;admin:settings&#x60;).
[**deleteTaxRate**](OAITaxApi.md#deletetaxrate) | **DELETE** /api/v1/tax-rates/{id} | Delete a tax rate by id (&#x60;admin:settings&#x60;).
[**listTaxRates**](OAITaxApi.md#listtaxrates) | **GET** /api/v1/tax-rates | List the calling tenant&#39;s tax rates.
[**updateTaxRate**](OAITaxApi.md#updatetaxrate) | **PUT** /api/v1/tax-rates/{id} | Update a tax rate by id (&#x60;admin:settings&#x60;). Replaces all body fields.


# **createTaxRate**
```objc
-(NSURLSessionTask*) createTaxRateWithTaxRateCreate: (OAITaxRateCreate*) taxRateCreate
        completionHandler: (void (^)(NSError* error)) handler;
```

Create a tax rate (`admin:settings`).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAITaxRateCreate* taxRateCreate = [[OAITaxRateCreate alloc] init]; // 

OAITaxApi*apiInstance = [[OAITaxApi alloc] init];

// Create a tax rate (`admin:settings`).
[apiInstance createTaxRateWithTaxRateCreate:taxRateCreate
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAITaxApi->createTaxRate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateCreate** | [**OAITaxRateCreate***](OAITaxRateCreate.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTaxRate**
```objc
-(NSURLSessionTask*) deleteTaxRateWithId: (NSString*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete a tax rate by id (`admin:settings`).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 

OAITaxApi*apiInstance = [[OAITaxApi alloc] init];

// Delete a tax rate by id (`admin:settings`).
[apiInstance deleteTaxRateWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAITaxApi->deleteTaxRate: %@", error);
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTaxRates**
```objc
-(NSURLSessionTask*) listTaxRatesWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

List the calling tenant's tax rates.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAITaxApi*apiInstance = [[OAITaxApi alloc] init];

// List the calling tenant's tax rates.
[apiInstance listTaxRatesWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAITaxApi->listTaxRates: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTaxRate**
```objc
-(NSURLSessionTask*) updateTaxRateWithId: (NSString*) _id
    taxRateCreate: (OAITaxRateCreate*) taxRateCreate
        completionHandler: (void (^)(NSError* error)) handler;
```

Update a tax rate by id (`admin:settings`). Replaces all body fields.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* _id = @"_id_example"; // 
OAITaxRateCreate* taxRateCreate = [[OAITaxRateCreate alloc] init]; // 

OAITaxApi*apiInstance = [[OAITaxApi alloc] init];

// Update a tax rate by id (`admin:settings`). Replaces all body fields.
[apiInstance updateTaxRateWithId:_id
              taxRateCreate:taxRateCreate
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAITaxApi->updateTaxRate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  | 
 **taxRateCreate** | [**OAITaxRateCreate***](OAITaxRateCreate.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

