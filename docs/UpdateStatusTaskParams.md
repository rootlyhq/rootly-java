

# UpdateStatusTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) |  |  |
|**inactivityTimeout** | **String** | In format &#39;1 hour&#39;, &#39;1 day&#39;, etc |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| UPDATE_STATUS | &quot;update_status&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| IN_TRIAGE | &quot;in_triage&quot; |
| STARTED | &quot;started&quot; |
| MITIGATED | &quot;mitigated&quot; |
| RESOLVED | &quot;resolved&quot; |
| CLOSED | &quot;closed&quot; |
| CANCELLED | &quot;cancelled&quot; |



