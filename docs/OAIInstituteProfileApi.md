# OAIInstituteProfileApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInstituteProfile**](OAIInstituteProfileApi.md#getinstituteprofile) | **GET** /api/v1/institute-profile | Current institute profile (created with defaults when missing).
[**updateInstituteProfile**](OAIInstituteProfileApi.md#updateinstituteprofile) | **PUT** /api/v1/institute-profile | Update the institute profile (institute_type and/or kapitalmarktorientiert).


# **getInstituteProfile**
```objc
-(NSURLSessionTask*) getInstituteProfileWithCompletionHandler: 
        (void (^)(OAIInstituteProfile* output, NSError* error)) handler;
```

Current institute profile (created with defaults when missing).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIInstituteProfileApi*apiInstance = [[OAIInstituteProfileApi alloc] init];

// Current institute profile (created with defaults when missing).
[apiInstance getInstituteProfileWithCompletionHandler: 
          ^(OAIInstituteProfile* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstituteProfileApi->getInstituteProfile: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIInstituteProfile***](OAIInstituteProfile.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInstituteProfile**
```objc
-(NSURLSessionTask*) updateInstituteProfileWithInstituteProfileUpdate: (OAIInstituteProfileUpdate*) instituteProfileUpdate
        completionHandler: (void (^)(OAIInstituteProfile* output, NSError* error)) handler;
```

Update the institute profile (institute_type and/or kapitalmarktorientiert).

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIInstituteProfileUpdate* instituteProfileUpdate = [[OAIInstituteProfileUpdate alloc] init]; // 

OAIInstituteProfileApi*apiInstance = [[OAIInstituteProfileApi alloc] init];

// Update the institute profile (institute_type and/or kapitalmarktorientiert).
[apiInstance updateInstituteProfileWithInstituteProfileUpdate:instituteProfileUpdate
          completionHandler: ^(OAIInstituteProfile* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstituteProfileApi->updateInstituteProfile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instituteProfileUpdate** | [**OAIInstituteProfileUpdate***](OAIInstituteProfileUpdate.md)|  | 

### Return type

[**OAIInstituteProfile***](OAIInstituteProfile.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

