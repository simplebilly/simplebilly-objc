# OAITicketMessageApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listMessagesApi**](OAITicketMessageApi.md#listmessagesapi) | **GET** /api/v1/support/tickets/{ticket_id}/messages | 
[**sendMessageApi**](OAITicketMessageApi.md#sendmessageapi) | **POST** /api/v1/support/tickets/{ticket_id}/messages | 


# **listMessagesApi**
```objc
-(NSURLSessionTask*) listMessagesApiWithTicketId: (NSString*) ticketId
        completionHandler: (void (^)(NSArray<OAITicketMessage>* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* ticketId = @"ticketId_example"; // 

OAITicketMessageApi*apiInstance = [[OAITicketMessageApi alloc] init];

[apiInstance listMessagesApiWithTicketId:ticketId
          completionHandler: ^(NSArray<OAITicketMessage>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITicketMessageApi->listMessagesApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **NSString***|  | 

### Return type

[**NSArray<OAITicketMessage>***](OAITicketMessage.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMessageApi**
```objc
-(NSURLSessionTask*) sendMessageApiWithTicketId: (NSString*) ticketId
    sendMessageDto: (OAISendMessageDto*) sendMessageDto
        completionHandler: (void (^)(OAITicketMessage* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* ticketId = @"ticketId_example"; // 
OAISendMessageDto* sendMessageDto = [[OAISendMessageDto alloc] init]; // 

OAITicketMessageApi*apiInstance = [[OAITicketMessageApi alloc] init];

[apiInstance sendMessageApiWithTicketId:ticketId
              sendMessageDto:sendMessageDto
          completionHandler: ^(OAITicketMessage* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITicketMessageApi->sendMessageApi: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **NSString***|  | 
 **sendMessageDto** | [**OAISendMessageDto***](OAISendMessageDto.md)|  | 

### Return type

[**OAITicketMessage***](OAITicketMessage.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

