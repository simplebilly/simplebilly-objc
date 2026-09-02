# OAISupportTicketApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTicketApi**](OAISupportTicketApi.md#createticketapi) | **POST** /api/v1/support/tickets | 
[**deleteTicketApi**](OAISupportTicketApi.md#deleteticketapi) | **DELETE** /api/v1/support/tickets/{ticket_id} | 
[**getTicketApi**](OAISupportTicketApi.md#getticketapi) | **GET** /api/v1/support/tickets/{ticket_id} | 
[**listTicketsApi**](OAISupportTicketApi.md#listticketsapi) | **GET** /api/v1/support/tickets | 
[**updateTicketApi**](OAISupportTicketApi.md#updateticketapi) | **PUT** /api/v1/support/tickets/{ticket_id} | 


# **createTicketApi**
```objc
-(NSURLSessionTask*) createTicketApiWithCreateTicketRequest: (OAICreateTicketRequest*) createTicketRequest
        completionHandler: (void (^)(OAISupportTicket* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAICreateTicketRequest* createTicketRequest = [[OAICreateTicketRequest alloc] init]; // 

OAISupportTicketApi*apiInstance = [[OAISupportTicketApi alloc] init];

[apiInstance createTicketApiWithCreateTicketRequest:createTicketRequest
          completionHandler: ^(OAISupportTicket* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupportTicketApi->createTicketApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTicketRequest** | [**OAICreateTicketRequest***](OAICreateTicketRequest.md)|  | 

### Return type

[**OAISupportTicket***](OAISupportTicket.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTicketApi**
```objc
-(NSURLSessionTask*) deleteTicketApiWithTicketId: (NSString*) ticketId
        completionHandler: (void (^)(NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* ticketId = @"ticketId_example"; // 

OAISupportTicketApi*apiInstance = [[OAISupportTicketApi alloc] init];

[apiInstance deleteTicketApiWithTicketId:ticketId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAISupportTicketApi->deleteTicketApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketApi**
```objc
-(NSURLSessionTask*) getTicketApiWithTicketId: (NSString*) ticketId
        completionHandler: (void (^)(OAISupportTicket* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* ticketId = @"ticketId_example"; // 

OAISupportTicketApi*apiInstance = [[OAISupportTicketApi alloc] init];

[apiInstance getTicketApiWithTicketId:ticketId
          completionHandler: ^(OAISupportTicket* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupportTicketApi->getTicketApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **NSString***|  | 

### Return type

[**OAISupportTicket***](OAISupportTicket.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTicketsApi**
```objc
-(NSURLSessionTask*) listTicketsApiWithStatus: (NSString*) status
    priority: (NSString*) priority
    assignedTo: (NSString*) assignedTo
    channelType: (NSString*) channelType
    customerId: (NSString*) customerId
    search: (NSString*) search
    page: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
        completionHandler: (void (^)(NSArray<OAISupportTicket>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* status = @"status_example"; //  (optional)
NSString* priority = @"priority_example"; //  (optional)
NSString* assignedTo = @"assignedTo_example"; //  (optional)
NSString* channelType = @"channelType_example"; //  (optional)
NSString* customerId = @"customerId_example"; //  (optional)
NSString* search = @"search_example"; //  (optional)
NSNumber* page = @56; //  (optional)
NSNumber* pageSize = @56; //  (optional)

OAISupportTicketApi*apiInstance = [[OAISupportTicketApi alloc] init];

[apiInstance listTicketsApiWithStatus:status
              priority:priority
              assignedTo:assignedTo
              channelType:channelType
              customerId:customerId
              search:search
              page:page
              pageSize:pageSize
          completionHandler: ^(NSArray<OAISupportTicket>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupportTicketApi->listTicketsApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **NSString***|  | [optional] 
 **priority** | **NSString***|  | [optional] 
 **assignedTo** | **NSString***|  | [optional] 
 **channelType** | **NSString***|  | [optional] 
 **customerId** | **NSString***|  | [optional] 
 **search** | **NSString***|  | [optional] 
 **page** | **NSNumber***|  | [optional] 
 **pageSize** | **NSNumber***|  | [optional] 

### Return type

[**NSArray<OAISupportTicket>***](OAISupportTicket.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTicketApi**
```objc
-(NSURLSessionTask*) updateTicketApiWithTicketId: (NSString*) ticketId
    supportTicketUpdate: (OAISupportTicketUpdate*) supportTicketUpdate
        completionHandler: (void (^)(OAISupportTicket* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* ticketId = @"ticketId_example"; // 
OAISupportTicketUpdate* supportTicketUpdate = [[OAISupportTicketUpdate alloc] init]; // 

OAISupportTicketApi*apiInstance = [[OAISupportTicketApi alloc] init];

[apiInstance updateTicketApiWithTicketId:ticketId
              supportTicketUpdate:supportTicketUpdate
          completionHandler: ^(OAISupportTicket* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISupportTicketApi->updateTicketApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **NSString***|  | 
 **supportTicketUpdate** | [**OAISupportTicketUpdate***](OAISupportTicketUpdate.md)|  | 

### Return type

[**OAISupportTicket***](OAISupportTicket.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

