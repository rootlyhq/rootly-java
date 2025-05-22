

# AlertEvent


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**action** | [**ActionEnum**](#ActionEnum) |  |  |
|**source** | **String** |  |  |
|**userId** | **Integer** | Author of the note. |  [optional] |
|**details** | **String** | Note message. |  [optional] |
|**createdAt** | **String** |  |  |
|**updatedAt** | **String** |  |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| INFORMATIONAL | &quot;informational&quot; |
| NOTIFICATION | &quot;notification&quot; |
| ACTION | &quot;action&quot; |
| STATUS_UPDATE | &quot;status_update&quot; |
| RECORDING | &quot;recording&quot; |
| ALERT_GROUPING | &quot;alert_grouping&quot; |
| ALERT_URGENCY | &quot;alert_urgency&quot; |
| ALERT_ROUTING | &quot;alert_routing&quot; |
| NOTE | &quot;note&quot; |
| NOISE | &quot;noise&quot; |
| MAINTENANCE | &quot;maintenance&quot; |



## Enum: ActionEnum

| Name | Value |
|---- | -----|
| CREATED | &quot;created&quot; |
| EMAILED | &quot;emailed&quot; |
| SLACKED | &quot;slacked&quot; |
| CALLED | &quot;called&quot; |
| TEXTED | &quot;texted&quot; |
| NOTIFIED | &quot;notified&quot; |
| OPENED | &quot;opened&quot; |
| RETRIGGERED | &quot;retriggered&quot; |
| ANSWERED | &quot;answered&quot; |
| ACKNOWLEDGED | &quot;acknowledged&quot; |
| ESCALATED | &quot;escalated&quot; |
| PAGED | &quot;paged&quot; |
| RESOLVED | &quot;resolved&quot; |
| ATTACHED | &quot;attached&quot; |
| SNOOZED | &quot;snoozed&quot; |
| TRIGGERED | &quot;triggered&quot; |
| UPDATED | &quot;updated&quot; |
| ADDED | &quot;added&quot; |
| REMOVED | &quot;removed&quot; |
| MARKED | &quot;marked&quot; |
| NOT_MARKED | &quot;not_marked&quot; |
| MUTED | &quot;muted&quot; |



