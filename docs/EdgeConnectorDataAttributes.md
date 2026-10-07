

# EdgeConnectorDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | Connector name |  |
|**description** | **String** | Connector description |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | Connector status |  |
|**subscriptions** | **List&lt;String&gt;** | Array of event types to subscribe to |  [optional] |
|**ownerGroupIds** | **List&lt;UUID&gt;** | IDs of the teams (groups) that own this connector. Empty means the connector is not scoped to a team |  [optional] |
|**lastPollAt** | **OffsetDateTime** | Last time connector polled |  [optional] |
|**online** | **Boolean** | Whether connector is currently online |  [optional] |
|**deliveriesCount** | **Integer** | Total number of deliveries |  [optional] |
|**deliveriesQueuedCount** | **Integer** | Number of queued deliveries |  [optional] |
|**deliveriesRunningCount** | **Integer** | Number of running deliveries |  [optional] |
|**deliveriesCompletedCount** | **Integer** | Number of completed deliveries |  [optional] |
|**deliveriesFailedCount** | **Integer** | Number of failed deliveries |  [optional] |
|**createdAt** | **OffsetDateTime** |  |  [optional] |
|**updatedAt** | **OffsetDateTime** |  |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| ACTIVE | &quot;active&quot; |
| PAUSED | &quot;paused&quot; |



