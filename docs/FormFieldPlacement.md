

# FormFieldPlacement


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**formFieldId** | **String** | The form field that is placed. |  |
|**formSetId** | **String** | The form set this field is placed in. |  |
|**form** | **String** | The form this field is placed on. |  |
|**position** | **Integer** | The position of the field placement. |  |
|**required** | **Boolean** | Whether the field is unconditionally required on this form. |  |
|**requiredOperator** | [**RequiredOperatorEnum**](#RequiredOperatorEnum) | Logical operator when evaluating multiple form_field_placement_conditions with conditioned&#x3D;required |  [optional] |
|**placementOperator** | [**PlacementOperatorEnum**](#PlacementOperatorEnum) | Logical operator when evaluating multiple form_field_placement_conditions with conditioned&#x3D;placement |  [optional] |



## Enum: RequiredOperatorEnum

| Name | Value |
|---- | -----|
| AND | &quot;and&quot; |
| OR | &quot;or&quot; |



## Enum: PlacementOperatorEnum

| Name | Value |
|---- | -----|
| AND | &quot;and&quot; |
| OR | &quot;or&quot; |



