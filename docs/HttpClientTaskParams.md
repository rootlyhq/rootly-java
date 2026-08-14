

# HttpClientTaskParams


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**taskType** | [**TaskTypeEnum**](#TaskTypeEnum) |  |  [optional] |
|**headers** | **String** | JSON map of HTTP headers |  [optional] |
|**params** | **String** | JSON map of HTTP query parameters |  [optional] |
|**body** | **String** | HTTP body |  [optional] |
|**url** | **String** | URL endpoint |  |
|**eventUrl** | **String** |  |  [optional] |
|**eventMessage** | **String** |  |  [optional] |
|**method** | [**MethodEnum**](#MethodEnum) | HTTP method |  [optional] |
|**succeedOnStatus** | **String** | HTTP status code expected. Can be a regular expression. Eg: 200, 200|203, 20[0-3] |  |
|**postToIncidentTimeline** | **Boolean** |  |  [optional] |
|**postToSlackChannels** | [**List&lt;AddActionItemTaskParamsPostToSlackChannelsInner&gt;**](AddActionItemTaskParamsPostToSlackChannelsInner.md) |  |  [optional] |
|**retryCount** | **Integer** | Number of times to retry on HTTP 429 responses (0-4). 0 disables retry. |  [optional] |
|**retryWaitTime** | **Integer** | Seconds to wait before each retry (1-15). Retry-After header is honored when present and &lt;&#x3D; 90s, taking the larger of retry_wait_time and the header value. |  [optional] |



## Enum: TaskTypeEnum

| Name | Value |
|---- | -----|
| HTTP_CLIENT | &quot;http_client&quot; |



## Enum: MethodEnum

| Name | Value |
|---- | -----|
| GET | &quot;GET&quot; |
| POST | &quot;POST&quot; |
| PATCH | &quot;PATCH&quot; |
| PUT | &quot;PUT&quot; |
| DELETE | &quot;DELETE&quot; |
| OPTIONS | &quot;OPTIONS&quot; |



