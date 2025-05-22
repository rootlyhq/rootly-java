

# AddMicrosoftTeamsTabTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**playbookId** | **String** | The playbook id if tab is of an incident playbook |  [optional] |
|**team** | [**Object**](Object.md) |  |  |
|**channel** | [**Object**](Object.md) |  |  |
|**title** | **String** | The tab title. Required if not a playbook tab |  [optional] |
|**link** | **String** | The tab link. Required if not a playbook tab |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| ADD_MICROSOFT_TEAMS_TAB | &quot;add_microsoft_teams_tab&quot; |



