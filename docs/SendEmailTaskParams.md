

# SendEmailTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**from** | **String** | The from email address. Need to use SMTP integration if different than rootly.com |  [optional] |
|**to** | **List&lt;String&gt;** |  |  |
|**cc** | **List&lt;String&gt;** |  |  [optional] |
|**bcc** | **List&lt;String&gt;** |  |  [optional] |
|**subject** | **String** | The subject |  |
|**preheader** | **String** | The preheader |  [optional] |
|**body** | **String** | The email body |  |
|**includeHeader** | **Boolean** |  |  [optional] |
|**includeFooter** | **Boolean** |  |  [optional] |
|**customLogoUrl** | **String** | URL to your custom email logo |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| SEND_EMAIL | &quot;send_email&quot; |



