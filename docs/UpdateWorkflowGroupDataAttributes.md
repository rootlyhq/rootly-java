

# UpdateWorkflowGroupDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | Deprecated. &#x60;slug&#x60; is derived from &#x60;name&#x60; and &#x60;kind&#x60;; any submitted value is ignored. This property will be removed from the request schema in a future version. |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) | The kind of the workflow group |  [optional] |
|**name** | **String** | The name of the workflow group. |  [optional] |
|**description** | **String** | A description of the workflow group. |  [optional] |
|**icon** | **String** | An emoji icon displayed next to the workflow group. |  [optional] |
|**expanded** | **Boolean** | Whether the group is expanded or collapsed. |  [optional] |
|**position** | **Integer** | The position of the workflow group |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| SIMPLE | &quot;simple&quot; |
| INCIDENT | &quot;incident&quot; |
| POST_MORTEM | &quot;post_mortem&quot; |
| ACTION_ITEM | &quot;action_item&quot; |
| PULSE | &quot;pulse&quot; |
| ALERT | &quot;alert&quot; |



