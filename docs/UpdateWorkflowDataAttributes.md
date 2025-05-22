

# UpdateWorkflowDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The title of the workflow |  [optional] |
|**slug** | **String** | The slug of the workflow |  [optional] |
|**description** | **String** | The description of the workflow |  [optional] |
|**command** | **String** | Workflow command |  [optional] |
|**commandFeedbackEnabled** | **Boolean** | This will notify you back when the workflow is starting |  [optional] |
|**wait** | **String** | Wait this duration before executing |  [optional] |
|**repeatEveryDuration** | **String** | Repeat workflow every duration |  [optional] |
|**repeatConditionDurationSinceFirstRun** | **String** | The workflow will stop repeating if its runtime since it&#39;s first workflow run exceeds the duration set in this field |  [optional] |
|**repeatConditionNumberOfRepeats** | **Integer** | The workflow will stop repeating if the number of repeats exceeds the value set in this field |  [optional] |
|**continuouslyRepeat** | **Boolean** | When continuously repeat is true, repeat workflows aren&#39;t automatically stopped when conditions aren&#39;t met. This setting won&#39;t override your conditions set by repeat_condition_duration_since_first_run and repeat_condition_number_of_repeats parameters. |  [optional] |
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
|**causeIds** | **List&lt;String&gt;** |  |  [optional] |
|**subStatusIds** | **List&lt;String&gt;** |  |  [optional] |



