

# WorkflowGroup


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | The kind of the workflow group |  [optional] |
|**name** | **String** | The name of the workflow group. |  |
|**slug** | **String** | The slug of the workflow group. |  [optional] |
|**description** | **String** | A description of the workflow group. |  [optional] |
|**icon** | **String** | An emoji icon displayed next to the workflow group. |  [optional] |
|**expanded** | **Boolean** | Whether the group is expanded or collapsed. |  [optional] |
|**position** | **Integer** | The position of the workflow group |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| SIMPLE | &quot;simple&quot; |
| INCIDENT | &quot;incident&quot; |
| POST_MORTEM | &quot;post_mortem&quot; |
| ACTION_ITEM | &quot;action_item&quot; |
| PULSE | &quot;pulse&quot; |
| ALERT | &quot;alert&quot; |



