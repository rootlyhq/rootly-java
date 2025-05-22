

# UpdateHeartbeatDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the heartbeat |  [optional] |
|**description** | **String** | The description of the heartbeat |  [optional] |
|**alertSummary** | **String** | Summary of alerts triggered when heartbeat expires. |  [optional] |
|**alertUrgencyId** | **String** | Urgency of alerts triggered when heartbeat expires. |  [optional] |
|**interval** | **Integer** |  |  [optional] |
|**intervalUnit** | [**IntervalUnitEnum**](#IntervalUnitEnum) |  |  [optional] |
|**notificationTargetId** | **String** |  |  [optional] |
|**notificationTargetType** | [**NotificationTargetTypeEnum**](#NotificationTargetTypeEnum) |  |  [optional] |
|**enabled** | **Boolean** | Whether to trigger alerts when heartbeat is expired. |  [optional] |



## Enum: IntervalUnitEnum

| Name | Value |
|---- | -----|
| SECONDS | &quot;seconds&quot; |
| MINUTES | &quot;minutes&quot; |
| HOURS | &quot;hours&quot; |



## Enum: NotificationTargetTypeEnum

| Name | Value |
|---- | -----|
| USER | &quot;User&quot; |
| GROUP | &quot;Group&quot; |
| SERVICE | &quot;Service&quot; |
| ESCALATION_POLICY | &quot;EscalationPolicy&quot; |



