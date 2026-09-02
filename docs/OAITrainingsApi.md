# OAITrainingsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMyTrainings**](OAITrainingsApi.md#getmytrainings) | **GET** /api/v1/trainings/me | 
[**getTrainingContent**](OAITrainingsApi.md#gettrainingcontent) | **GET** /api/v1/trainings/content/{code} | 
[**getTrainingOverview**](OAITrainingsApi.md#gettrainingoverview) | **GET** /api/v1/trainings/overview | 
[**submitTrainingResult**](OAITrainingsApi.md#submittrainingresult) | **POST** /api/v1/trainings/submit-result | 


# **getMyTrainings**
```objc
-(NSURLSessionTask*) getMyTrainingsWithCompletionHandler: 
        (void (^)(NSArray<OAIMyTrainingItem>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAITrainingsApi*apiInstance = [[OAITrainingsApi alloc] init];

[apiInstance getMyTrainingsWithCompletionHandler: 
          ^(NSArray<OAIMyTrainingItem>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITrainingsApi->getMyTrainings: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIMyTrainingItem>***](OAIMyTrainingItem.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrainingContent**
```objc
-(NSURLSessionTask*) getTrainingContentWithCode: (NSString*) code
        completionHandler: (void (^)(OAITrainingContent* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* code = @"code_example"; // Training code, e.g. data_privacy

OAITrainingsApi*apiInstance = [[OAITrainingsApi alloc] init];

[apiInstance getTrainingContentWithCode:code
          completionHandler: ^(OAITrainingContent* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITrainingsApi->getTrainingContent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **NSString***| Training code, e.g. data_privacy | 

### Return type

[**OAITrainingContent***](OAITrainingContent.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrainingOverview**
```objc
-(NSURLSessionTask*) getTrainingOverviewWithCompletionHandler: 
        (void (^)(NSArray<OAIHrTrainingOverview>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAITrainingsApi*apiInstance = [[OAITrainingsApi alloc] init];

[apiInstance getTrainingOverviewWithCompletionHandler: 
          ^(NSArray<OAIHrTrainingOverview>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITrainingsApi->getTrainingOverview: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<OAIHrTrainingOverview>***](OAIHrTrainingOverview.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitTrainingResult**
```objc
-(NSURLSessionTask*) submitTrainingResultWithSubmitResultDto: (OAISubmitResultDto*) submitResultDto
        completionHandler: (void (^)(OAISubmitResultResponse* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAISubmitResultDto* submitResultDto = [[OAISubmitResultDto alloc] init]; // 

OAITrainingsApi*apiInstance = [[OAITrainingsApi alloc] init];

[apiInstance submitTrainingResultWithSubmitResultDto:submitResultDto
          completionHandler: ^(OAISubmitResultResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITrainingsApi->submitTrainingResult: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submitResultDto** | [**OAISubmitResultDto***](OAISubmitResultDto.md)|  | 

### Return type

[**OAISubmitResultResponse***](OAISubmitResultResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

