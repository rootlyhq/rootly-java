

# NewHeartbeatDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the heartbeat |  |
|**description** | **String** | The description of the heartbeat |  [optional] |
|**alertSummary** | **String** | Summary of alerts triggered when heartbeat expires. |  |
|**alertDescription** | **String** | Description of alerts triggered when heartbeat expires. |  [optional] |
|**alertUrgencyId** | **String** | Urgency of alerts triggered when heartbeat expires. |  [optional] |
|**interval** | **Integer** |  |  |
|**intervalUnit** | [**IntervalUnitEnum**](#IntervalUnitEnum) |  |  |
|**notificationTargetId** | **String** |  |  |
|**notificationTargetType** | [**NotificationTargetTypeEnum**](#NotificationTargetTypeEnum) |  |  |
|**enabled** | **Boolean** | Whether to trigger alerts when heartbeat is expired. |  [optional] |



## Enum: IntervalUnitEnum

| Name | Value |
|---- | -----|
| MINUTES | &quot;minutes&quot; |
| HOURS | &quot;hours&quot; |
| DAYS | &quot;days&quot; |



## Enum: NotificationTargetTypeEnum

| Name | Value |
|---- | -----|
| USER | &quot;User&quot; |
| GROUP | &quot;Group&quot; |
| SERVICE | &quot;Service&quot; |
| ESCALATION_POLICY | &quot;EscalationPolicy&quot; |



