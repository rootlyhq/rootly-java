

# UpdateWorkflowDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | Deprecated. &#x60;slug&#x60; is derived from &#x60;name&#x60;; any submitted value is ignored. This property will be removed from the request schema in a future version. |  [optional] |
|**name** | **String** | The title of the workflow |  [optional] |
|**description** | **String** | The description of the workflow |  [optional] |
|**command** | **String** | Workflow command |  [optional] |
|**commandFeedbackEnabled** | **Boolean** | This will notify you back when the workflow is starting |  [optional] |
|**wait** | **String** | Wait this duration before executing |  [optional] |
|**repeatEveryDuration** | **String** | Repeat workflow every duration |  [optional] |
|**repeatConditionDurationSinceFirstRun** | **String** | The workflow will stop repeating if its runtime since it&#39;s first workflow run exceeds the duration set in this field |  [optional] |
|**repeatConditionNumberOfRepeats** | **Integer** | The workflow will stop repeating if the number of repeats exceeds the value set in this field |  [optional] |
|**continuouslyRepeat** | **Boolean** | When continuously repeat is true, repeat workflows aren&#39;t automatically stopped when conditions aren&#39;t met. This setting won&#39;t override your conditions set by repeat_condition_duration_since_first_run and repeat_condition_number_of_repeats parameters. |  [optional] |
|**runOncePerResource** | **Boolean** | When true, the workflow runs at most once per incident. Later triggers on the same incident create a canceled run instead. Manual runs and repeats are not affected. Only applies to incident workflows. |  [optional] |
|**enabled** | **Boolean** |  |  [optional] |
|**locked** | **Boolean** | Restricts workflow edits to admins when turned on. Only admins can set this field. |  [optional] |
|**position** | **Integer** | The order which the workflow should run with other workflows. |  [optional] |
|**workflowGroupId** | **String** | The group this workflow belongs to. |  [optional] |
|**triggerParams** | [**NewWorkflowDataAttributesTriggerParams**](NewWorkflowDataAttributesTriggerParams.md) |  |  [optional] |
|**environmentIds** | **List&lt;String&gt;** |  |  [optional] |
|**severityIds** | **List&lt;String&gt;** |  |  [optional] |
|**incidentTypeIds** | **List&lt;String&gt;** |  |  [optional] |
|**incidentRoleIds** | **List&lt;String&gt;** |  |  [optional] |
|**serviceIds** | **List&lt;String&gt;** |  |  [optional] |
|**functionalityIds** | **List&lt;String&gt;** |  |  [optional] |
|**groupIds** | **List&lt;String&gt;** |  |  [optional] |
|**groupAssignmentIds** | **List&lt;String&gt;** | Owning team IDs. Requires team-scoped workflows. |  [optional] |
|**causeIds** | **List&lt;String&gt;** |  |  [optional] |
|**subStatusIds** | **List&lt;String&gt;** |  |  [optional] |
|**failureNotificationMode** | [**FailureNotificationModeEnum**](#FailureNotificationModeEnum) | Where failure notifications for this workflow are sent. &#x60;inherit&#x60; uses the account default channel, &#x60;custom&#x60; uses &#x60;failure_notification_channels&#x60;, &#x60;off&#x60; suppresses them. |  [optional] |
|**failureNotificationChannels** | [**List&lt;NewWorkflowDataAttributesFailureNotificationChannelsInner&gt;**](NewWorkflowDataAttributesFailureNotificationChannelsInner.md) | Slack channels notified when a run of this workflow fails. Used when &#x60;failure_notification_mode&#x60; is &#x60;custom&#x60;. |  [optional] |



## Enum: FailureNotificationModeEnum

| Name | Value |
|---- | -----|
| INHERIT | &quot;inherit&quot; |
| CUSTOM | &quot;custom&quot; |
| OFF | &quot;off&quot; |



