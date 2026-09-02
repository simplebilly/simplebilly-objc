# OAIBudgetsApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**budgetsApi**](OAIBudgetsApi.md#budgetsapi) | **GET** /api/v1/bookkeeping/budgets | 
[**upsertBudgetGoalApi**](OAIBudgetsApi.md#upsertbudgetgoalapi) | **PUT** /api/v1/bookkeeping/budgets/goals/{category} | 


# **budgetsApi**
```objc
-(NSURLSessionTask*) budgetsApiWithYear: (NSNumber*) year
    month: (NSNumber*) month
        completionHandler: (void (^)(OAIBudgetErgebnis* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* year = @56; // 
NSNumber* month = @56; // 

OAIBudgetsApi*apiInstance = [[OAIBudgetsApi alloc] init];

[apiInstance budgetsApiWithYear:year
              month:month
          completionHandler: ^(OAIBudgetErgebnis* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBudgetsApi->budgetsApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***|  | 
 **month** | **NSNumber***|  | 

### Return type

[**OAIBudgetErgebnis***](OAIBudgetErgebnis.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsertBudgetGoalApi**
```objc
-(NSURLSessionTask*) upsertBudgetGoalApiWithCategory: (NSString*) category
    budgetGoalRequest: (OAIBudgetGoalRequest*) budgetGoalRequest
        completionHandler: (void (^)(OAIBudget* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* category = @"category_example"; // 
OAIBudgetGoalRequest* budgetGoalRequest = [[OAIBudgetGoalRequest alloc] init]; // 

OAIBudgetsApi*apiInstance = [[OAIBudgetsApi alloc] init];

[apiInstance upsertBudgetGoalApiWithCategory:category
              budgetGoalRequest:budgetGoalRequest
          completionHandler: ^(OAIBudget* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBudgetsApi->upsertBudgetGoalApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | **NSString***|  | 
 **budgetGoalRequest** | [**OAIBudgetGoalRequest***](OAIBudgetGoalRequest.md)|  | 

### Return type

[**OAIBudget***](OAIBudget.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

