

# Dashboard


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**teamId** | **Integer** | The dashboard team |  [optional] |
|**userId** | **Integer** | The dashboard user owner if owner is of type user |  [optional] |
|**name** | **String** | The name of the dashboard |  |
|**description** | **String** | The description of the dashboard |  [optional] |
|**owner** | [**OwnerEnum**](#OwnerEnum) | The owner type of the dashboard |  |
|**_public** | **Boolean** | Whether the dashboard is public |  |
|**range** | **String** | The date range for dashboard panel data |  [optional] |
|**period** | **String** | The grouping period for dashboard panel data |  [optional] |
|**autoRefresh** | **Boolean** | Whether the dashboard auto-updates the UI with new data. |  [optional] |
|**color** | [**ColorEnum**](#ColorEnum) | The hex color of the dashboard |  [optional] |
|**icon** | **String** | The emoji icon of the dashboard |  [optional] |
|**createdAt** | **String** | Date of creation |  [optional] |
|**updatedAt** | **String** | Date of last update |  [optional] |



## Enum: OwnerEnum

| Name | Value |
|---- | -----|
| USER | &quot;user&quot; |
| TEAM | &quot;team&quot; |



## Enum: ColorEnum

| Name | Value |
|---- | -----|
| _FCF2_CF | &quot;#FCF2CF&quot; |
| _D7_F5_E1 | &quot;#D7F5E1&quot; |
| _E9_E2_FF | &quot;#E9E2FF&quot; |
| _FAE6_E8 | &quot;#FAE6E8&quot; |
| _FAEEE6 | &quot;#FAEEE6&quot; |



