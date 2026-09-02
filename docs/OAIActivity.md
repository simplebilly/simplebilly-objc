# OAIActivity

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activityType** | [**OAIActivityType***](OAIActivityType.md) | One of: call | email | meeting | task | note | 
**assignedTo** | **NSString*** | User responsible (&#x60;employee.employee_id&#x60;). | [optional] 
**contactId** | **NSString*** | Contact this activity belongs to (&#x60;contact.contact_id&#x60;). References the contact entity. | [optional] 
**_description** | **NSString*** |  | [optional] 
**dueDate** | **NSDate*** | Follow-up / Wiedervorlage date. Open activities with a due date in the past are overdue. | [optional] 
**reminderDate** | **NSDate*** | When to remind about the follow-up. | [optional] 
**status** | [**OAIActivityStatus***](OAIActivityStatus.md) | One of: open | done | cancelled | 
**subject** | **NSString*** | Short subject line. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


