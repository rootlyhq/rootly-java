

# UpdateStatusPageTemplateDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**title** | **String** | Title of the template |  |
|**body** | **String** | Description of the event the template will populate |  |
|**updateStatus** | [**UpdateStatusEnum**](#UpdateStatusEnum) | Status of the event the template will populate |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) | The kind of the status page template |  [optional] |
|**shouldNotifySubscribers** | **Boolean** | Controls if incident subscribers should be notified |  [optional] |
|**position** | **Integer** | Position of the workflow task |  [optional] |
|**enabled** | **Boolean** | Enable / Disable the status page template |  [optional] |



## Enum: UpdateStatusEnum

| Name | Value |
|---- | -----|
| INVESTIGATING | &quot;investigating&quot; |
| IDENTIFIED | &quot;identified&quot; |
| MONITORING | &quot;monitoring&quot; |
| RESOLVED | &quot;resolved&quot; |
| SCHEDULED | &quot;scheduled&quot; |
| IN_PROGRESS | &quot;in_progress&quot; |
| VERIFYING | &quot;verifying&quot; |
| COMPLETED | &quot;completed&quot; |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| NORMAL | &quot;normal&quot; |
| SCHEDULED | &quot;scheduled&quot; |



