

# NewEdgeConnectorEdgeConnector


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | Connector name |  |
|**description** | **String** | Connector description |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | Connector status |  [optional] |
|**subscriptions** | **List&lt;String&gt;** | Array of event types to subscribe to |  [optional] |
|**ownerGroupIds** | **List&lt;UUID&gt;** | IDs of the teams (groups) that own this connector. Required when the caller is a team admin without tenant-wide edge connector permissions |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| ACTIVE | &quot;active&quot; |
| PAUSED | &quot;paused&quot; |



