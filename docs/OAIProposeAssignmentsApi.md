# OAIProposeAssignmentsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**proposeAssignmentsApi**](OAIProposeAssignmentsApi.md#proposeassignmentsapi) | **GET** /api/v1/bookkeeping/propose-assignments | 


# **proposeAssignmentsApi**
```objc
-(NSURLSessionTask*) proposeAssignmentsApiWithMinConfidence: (NSNumber*) minConfidence
    customerId: (NSString*) customerId
        completionHandler: (void (^)(NSArray<OAIProposedAssignment>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* minConfidence = @56; //  (optional)
NSString* customerId = @"customerId_example"; //  (optional)

OAIProposeAssignmentsApi*apiInstance = [[OAIProposeAssignmentsApi alloc] init];

[apiInstance proposeAssignmentsApiWithMinConfidence:minConfidence
              customerId:customerId
          completionHandler: ^(NSArray<OAIProposedAssignment>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIProposeAssignmentsApi->proposeAssignmentsApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minConfidence** | **NSNumber***|  | [optional] 
 **customerId** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIProposedAssignment>***](OAIProposedAssignment.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

