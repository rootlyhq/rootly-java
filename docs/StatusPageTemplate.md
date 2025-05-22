

# StatusPageTemplate


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**statusPageId** | **String** |  |  |
|**title** | **String** | Title of the template |  |
|**body** | **String** | Description of the event the template will populate |  |
|**updateStatus** | **String** | Status of the event the template will populate |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) | The kind of the status page template |  [optional] |
|**shouldNotifySubscribers** | **Boolean** | Controls if incident subscribers should be notified |  [optional] |
|**enabled** | **Boolean** | Enable / Disable the status page template |  [optional] |
|**position** | **Integer** | Position of the workflow task |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| NORMAL | &quot;normal&quot; |
| SCHEDULED | &quot;scheduled&quot; |



