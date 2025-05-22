

# SendDashboardReportTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**dashboardIds** | **List&lt;String&gt;** |  |  |
|**from** | **String** | The from email address. Need to use SMTP integration if different than rootly.com |  [optional] |
|**to** | **List&lt;String&gt;** |  |  |
|**subject** | **String** | The subject |  |
|**preheader** | **String** | The preheader |  [optional] |
|**body** | **String** | The email body |  |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| SEND_DASHBOARD_REPORT | &quot;send_dashboard_report&quot; |



