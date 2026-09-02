# OAIListOpenItemsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listOpenItemsApi**](OAIListOpenItemsApi.md#listopenitemsapi) | **GET** /api/v1/bookkeeping/open-items | 


# **listOpenItemsApi**
```objc
-(NSURLSessionTask*) listOpenItemsApiWithReminderLevel1Days: (NSNumber*) reminderLevel1Days
    reminderLevel2Days: (NSNumber*) reminderLevel2Days
    reminderLevel3Days: (NSNumber*) reminderLevel3Days
    customerId: (NSString*) customerId
        completionHandler: (void (^)(NSArray<OAIOpenItem>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* reminderLevel1Days = @56; //  (optional)
NSNumber* reminderLevel2Days = @56; //  (optional)
NSNumber* reminderLevel3Days = @56; //  (optional)
NSString* customerId = @"customerId_example"; //  (optional)

OAIListOpenItemsApi*apiInstance = [[OAIListOpenItemsApi alloc] init];

[apiInstance listOpenItemsApiWithReminderLevel1Days:reminderLevel1Days
              reminderLevel2Days:reminderLevel2Days
              reminderLevel3Days:reminderLevel3Days
              customerId:customerId
          completionHandler: ^(NSArray<OAIOpenItem>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIListOpenItemsApi->listOpenItemsApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reminderLevel1Days** | **NSNumber***|  | [optional] 
 **reminderLevel2Days** | **NSNumber***|  | [optional] 
 **reminderLevel3Days** | **NSNumber***|  | [optional] 
 **customerId** | **NSString***|  | [optional] 

### Return type

[**NSArray<OAIOpenItem>***](OAIOpenItem.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

