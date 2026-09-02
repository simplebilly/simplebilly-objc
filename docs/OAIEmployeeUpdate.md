# OAIEmployeeUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **NSString*** |  | [optional] 
**backupEmployeeId** | **NSString*** | References another employee who covers when this employee is absent. | [optional] 
**bic** | **NSString*** |  | [optional] 
**city** | **NSString*** |  | [optional] 
**country** | [**OAICountryCode***](OAICountryCode.md) |  | [optional] 
**dateOfBirth** | **NSDate*** |  | [optional] 
**departmentId** | **NSString*** | References the department entity. | [optional] 
**email** | **NSString*** |  | [optional] 
**firstName** | **NSString*** |  | [optional] 
**gender** | [**OAIGender***](OAIGender.md) | Gender for pay-transparency reporting: \&quot;male\&quot;, \&quot;female\&quot; or \&quot;diverse\&quot;. | [optional] 
**hireDate** | **NSDate*** |  | [optional] 
**hourlyCost** | **NSString*** | Hourly cost rate in EUR for labor-cost reporting; when unset the rate is derived from &#x60;monthly_salary / (weekly_hours * 4.33)&#x60;. | [optional] 
**iban** | **NSString*** |  | [optional] 
**jobTitle** | **NSString*** |  | [optional] 
**lastLogin** | **NSDate*** |  | [optional] 
**lastName** | **NSString*** |  | [optional] 
**lastUpdated** | **NSDate*** |  | [optional] 
**monthlySalary** | **NSString*** | Gross monthly salary in EUR for pay-transparency reporting. | [optional] 
**phone** | **NSString*** |  | [optional] 
**state** | **NSString*** |  | [optional] 
**status** | [**OAIEmployeeStatus***](OAIEmployeeStatus.md) |  | [optional] 
**userId** | **NSString*** | References the user entity. | [optional] 
**weeklyHours** | **NSString*** | Contractual weekly working hours for pay-transparency normalization. | [optional] 
**zip** | **NSString*** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


