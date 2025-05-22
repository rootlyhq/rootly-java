

# AddSlackBookmarkTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**playbookId** | **String** | The playbook id if bookmark is of an incident playbook |  [optional] |
|**channel** | [**Object**](Object.md) |  |  |
|**title** | **String** | The bookmark title. Required if not a playbook bookmark |  [optional] |
|**link** | **String** | The bookmark link. Required if not a playbook bookmark |  [optional] |
|**emoji** | **String** | The bookmark emoji |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| ADD_SLACK_BOOKMARK | &quot;add_slack_bookmark&quot; |



