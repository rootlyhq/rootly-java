

# GetGitlabCommitsTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**serviceIds** | **List&lt;String&gt;** |  |  [optional] |
|**gitlabRepositoryNames** | **List&lt;String&gt;** |  |  [optional] |
|**branch** | **String** | The branch |  |
|**pastDuration** | **String** | How far back to fetch commits (in format &#39;1 minute&#39;, &#39;30 days&#39;, &#39;3 months&#39;, etc.) |  |
|**servicesImpactedByIncident** | **Boolean** |  |  [optional] |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**postToSlackChannels** | [**List&lt;Object&gt;**](Object.md) |  |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| GET_GITLAB_COMMITS | &quot;get_gitlab_commits&quot; |



