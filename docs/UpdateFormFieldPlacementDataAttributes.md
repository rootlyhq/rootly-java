

# UpdateFormFieldPlacementDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**formSetId** | **String** | The form set this field is placed in. |  [optional] |
|**form** | **String** | The form this field is placed on. |  [optional] |
|**position** | **Integer** | The position of the field placement. |  [optional] |
|**required** | **Boolean** | Whether the field is unconditionally required on this form. |  [optional] |
|**requiredOperator** | [**RequiredOperatorEnum**](#RequiredOperatorEnum) | Logical operator when evaluating multiple form_field_placement_conditions with conditioned&#x3D;required |  [optional] |
|**placementOperator** | [**PlacementOperatorEnum**](#PlacementOperatorEnum) | Logical operator when evaluating multiple form_field_placement_conditions with conditioned&#x3D;placement |  [optional] |
|**nonEditable** | **Boolean** | Whether the field is read-only and cannot be edited by users. |  [optional] |



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



