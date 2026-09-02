# OAIApiResponseGdprExportData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activityLog** | [**NSArray&lt;OAIGdprActivity&gt;***](OAIGdprActivity.md) |  | 
**apiKeys** | [**NSArray&lt;OAIGdprApiKey&gt;***](OAIGdprApiKey.md) | Key identifiers and names only — never a usable credential. | 
**billing** | [**NSArray&lt;OAIGdprBillingInfo&gt;***](OAIGdprBillingInfo.md) |  | 
**exportedAt** | **NSDate*** |  | 
**generatedByAi** | **NSNumber*** | Honesty field: this document is a plain data dump, never AI-generated. | 
**notifications** | [**NSArray&lt;OAIGdprNotification&gt;***](OAIGdprNotification.md) |  | 
**refreshTokens** | [**NSArray&lt;OAIGdprRefreshToken&gt;***](OAIGdprRefreshToken.md) | Session records: metadata only, never the token hash. | 
**tenants** | [**NSArray&lt;OAIGdprTenant&gt;***](OAIGdprTenant.md) |  | 
**usageEvents** | [**NSArray&lt;OAIGdprUsageEvent&gt;***](OAIGdprUsageEvent.md) |  | 
**user** | [**OAIGdprUser***](OAIGdprUser.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


