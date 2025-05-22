

# CreatePagertreeAlertTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**title** | **String** | Title of alert as text |  [optional] |
|**description** | **String** | Description of alert as text |  [optional] |
|**urgency** | [**UrgencyEnum**](#UrgencyEnum) |  |  [optional] |
|**severity** | [**SeverityEnum**](#SeverityEnum) |  |  [optional] |
|**teams** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**users** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**incident** | **Boolean** | Setting to true makes an alert a Pagertree incident |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| CREATE_PAGERTREE_ALERT | &quot;create_pagertree_alert&quot; |



## Enum: UrgencyEnum

| Name | Value |
|---- | -----|
| AUTO | &quot;auto&quot; |
| CRITICAL | &quot;critical&quot; |
| HIGH | &quot;high&quot; |
| MEDIUM | &quot;medium&quot; |
| LOW | &quot;low&quot; |



## Enum: SeverityEnum

| Name | Value |
|---- | -----|
| AUTO | &quot;auto&quot; |
| SEV_1 | &quot;SEV-1&quot; |
| SEV_2 | &quot;SEV-2&quot; |
| SEV_3 | &quot;SEV-3&quot; |
| SEV_4 | &quot;SEV-4&quot; |



