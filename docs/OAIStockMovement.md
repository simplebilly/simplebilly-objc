# OAIStockMovement

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delta** | **NSNumber*** | Signed movement: positive &#x3D; into stock, negative &#x3D; out of stock. | 
**movementType** | [**OAIMovementType***](OAIMovementType.md) | One of the &#x60;MOVEMENT_*&#x60; constants. | 
**productId** | **NSString*** | References the product entity. | 
**quantity** | **NSNumber*** | Absolute quantity moved (always &gt;&#x3D; 0). | 
**reason** | **NSString*** |  | [optional] 
**referenceId** | **NSString*** | Primary-key of the referencing entity. | [optional] 
**referenceType** | [**OAIReferenceType***](OAIReferenceType.md) | Entity that caused the movement, e.g. &#x60;goods_receipt&#x60;, &#x60;stock_transfer&#x60;. | [optional] 
**warehouseId** | **NSString*** | References the warehouse entity. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


