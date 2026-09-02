# OAIGdprApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptDpa**](OAIGdprApi.md#acceptdpa) | **PUT** /api/v1/gdpr/dpa | Record DPA acceptance: sets dpa_accepted_at/by/version on the tenant settings row (created with company-type defaults if missing).
[**accountErasure**](OAIGdprApi.md#accounterasure) | **POST** /api/v1/gdpr/account-erasure | Erase ALL personal data of the tenant (TOS §11: deletion 90 days after termination).
[**erasureContact**](OAIGdprApi.md#erasurecontact) | **POST** /api/v1/gdpr/erasure/{contact_id} | Anonymize + soft-delete a contact: personal attributes are cleared, the record itself is kept for GoBD retention (Art. 17(3)(e) DSGVO). The audit trigger on &#x60;contacts&#x60; already records who/when.
[**exportContactData**](OAIGdprApi.md#exportcontactdata) | **GET** /api/v1/gdpr/export/{contact_id} | Art. 15 data-subject access export for a contact.
[**exportGdpr**](OAIGdprApi.md#exportgdpr) | **GET** /api/v1/gdpr/export | Export the current user&#39;s personal data (GDPR Art. 15/20).
[**getDpa**](OAIGdprApi.md#getdpa) | **GET** /api/v1/gdpr/dpa | Current DPA acceptance status (from tenant_settings).


# **acceptDpa**
```objc
-(NSURLSessionTask*) acceptDpaWithDpaAcceptRequest: (OAIDpaAcceptRequest*) dpaAcceptRequest
        completionHandler: (void (^)(OAIDpaStatus* output, NSError* error)) handler;
```

Record DPA acceptance: sets dpa_accepted_at/by/version on the tenant settings row (created with company-type defaults if missing).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIDpaAcceptRequest* dpaAcceptRequest = [[OAIDpaAcceptRequest alloc] init]; // 

OAIGdprApi*apiInstance = [[OAIGdprApi alloc] init];

// Record DPA acceptance: sets dpa_accepted_at/by/version on the tenant settings row (created with company-type defaults if missing).
[apiInstance acceptDpaWithDpaAcceptRequest:dpaAcceptRequest
          completionHandler: ^(OAIDpaStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGdprApi->acceptDpa: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dpaAcceptRequest** | [**OAIDpaAcceptRequest***](OAIDpaAcceptRequest.md)|  | 

### Return type

[**OAIDpaStatus***](OAIDpaStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountErasure**
```objc
-(NSURLSessionTask*) accountErasureWithCompletionHandler: 
        (void (^)(OAIAnyType* output, NSError* error)) handler;
```

Erase ALL personal data of the tenant (TOS §11: deletion 90 days after termination).

Anonymizes every contact, anonymizes personal fields on bookkeeping records (orders/invoices/payments keep amounts and dates for GoBD), removes the tenant linkage of the (global, saasy-framework) users and marks the erasure on `tenant_settings.gdpr_erased_at`. No row is physically deleted. The audit triggers on the touched tables record who/when.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIGdprApi*apiInstance = [[OAIGdprApi alloc] init];

// Erase ALL personal data of the tenant (TOS §11: deletion 90 days after termination).
[apiInstance accountErasureWithCompletionHandler: 
          ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGdprApi->accountErasure: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **erasureContact**
```objc
-(NSURLSessionTask*) erasureContactWithContactId: (NSString*) contactId
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```

Anonymize + soft-delete a contact: personal attributes are cleared, the record itself is kept for GoBD retention (Art. 17(3)(e) DSGVO). The audit trigger on `contacts` already records who/when.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* contactId = @"contactId_example"; // 

OAIGdprApi*apiInstance = [[OAIGdprApi alloc] init];

// Anonymize + soft-delete a contact: personal attributes are cleared, the record itself is kept for GoBD retention (Art. 17(3)(e) DSGVO). The audit trigger on `contacts` already records who/when.
[apiInstance erasureContactWithContactId:contactId
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGdprApi->erasureContact: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **NSString***|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportContactData**
```objc
-(NSURLSessionTask*) exportContactDataWithContactId: (NSString*) contactId
        completionHandler: (void (^)(OAIAnyType* output, NSError* error)) handler;
```

Art. 15 data-subject access export for a contact.

Returns the contact itself plus the tenant-scoped rows linked to it.  ## Relations The `customers`/`orders`/`invoices`/`payments` tables have no FK to `contacts`; they are linked through the `customer_id` column, which per the app's conventions holds one of: - the admin customer's `customer_id` (a UUID, often the same value as   the contact's `contact_id`/`customer_number`), - the buyer's email for shop orders, or - the marketplace's external customer id for plugin orders.  The export therefore matches the contact's identifiers (`contact_id`, `customer_number`, `external_id`, `email`) plus any resolved customer ids against `customer_id`. `delivery_notes` and `customer_communications` reference contacts directly via `contact_id`. Soft-deleted rows are included (their data is still processed and retained for GoBD). Relations that genuinely do not exist for a contact stay empty but the key is always present.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* contactId = @"contactId_example"; // 

OAIGdprApi*apiInstance = [[OAIGdprApi alloc] init];

// Art. 15 data-subject access export for a contact.
[apiInstance exportContactDataWithContactId:contactId
          completionHandler: ^(OAIAnyType* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGdprApi->exportContactData: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **NSString***|  | 

### Return type

[**OAIAnyType***](OAIAnyType.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportGdpr**
```objc
-(NSURLSessionTask*) exportGdprWithCompletionHandler: 
        (void (^)(OAIApiResponseGdprExport* output, NSError* error)) handler;
```

Export the current user's personal data (GDPR Art. 15/20).

No admin permission required: a user always exports their own data.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIGdprApi*apiInstance = [[OAIGdprApi alloc] init];

// Export the current user's personal data (GDPR Art. 15/20).
[apiInstance exportGdprWithCompletionHandler: 
          ^(OAIApiResponseGdprExport* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGdprApi->exportGdpr: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIApiResponseGdprExport***](OAIApiResponseGdprExport.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDpa**
```objc
-(NSURLSessionTask*) getDpaWithCompletionHandler: 
        (void (^)(OAIDpaStatus* output, NSError* error)) handler;
```

Current DPA acceptance status (from tenant_settings).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIGdprApi*apiInstance = [[OAIGdprApi alloc] init];

// Current DPA acceptance status (from tenant_settings).
[apiInstance getDpaWithCompletionHandler: 
          ^(OAIDpaStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGdprApi->getDpa: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIDpaStatus***](OAIDpaStatus.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

