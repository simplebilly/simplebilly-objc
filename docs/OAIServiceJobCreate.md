# OAIServiceJobCreate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **NSString*** | Street + zip + city of the job location. | [optional] 
**customerEmail** | **NSString*** | Customer email for email notifications. | [optional] 
**customerId** | **NSString*** | References the customer entity. | [optional] 
**customerName** | **NSString*** | Denormalized customer name for quick display. | [optional] 
**customerPhone** | **NSString*** | Customer phone for SMS notifications later. | [optional] 
**_description** | **NSString*** | What work needs to be done. | [optional] 
**estimatedDurationMinutes** | **NSNumber*** | Estimated time for the job in minutes. | [optional] 
**lat** | **NSNumber*** | Latitude for map display (OpenStreetMap). | [optional] 
**lng** | **NSNumber*** | Longitude for map display (OpenStreetMap). | [optional] 
**notes** | **NSString*** |  | [optional] 
**status** | [**OAIServiceJobStatus***](OAIServiceJobStatus.md) | Dispatch status: \&quot;pending\&quot;, \&quot;assigned\&quot;, \&quot;en_route\&quot;, \&quot;in_progress\&quot;, \&quot;completed\&quot;, \&quot;cancelled\&quot;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


