

# OnCallPayReport


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**status** | [**StatusEnum**](#StatusEnum) | The current status of the report. |  |
|**startDate** | **LocalDate** | The start date of the report period. |  |
|**endDate** | **LocalDate** | The end date of the report period. |  |
|**totalDuration** | **Integer** | Total on-call duration in seconds. |  [optional] |
|**usersCount** | **Integer** | Number of users included in the report. |  [optional] |
|**currency** | **String** | The currency code for monetary values. |  [optional] |
|**payType** | [**PayTypeEnum**](#PayTypeEnum) | The pay calculation type. |  [optional] |
|**hourlyRateCents** | **Integer** | Hourly pay rate in cents. |  [optional] |
|**dailyRateCents** | **Integer** | Daily pay rate in cents. |  [optional] |
|**totalPayCents** | **Integer** | Total pay amount in cents. |  [optional] |
|**includeShadow** | **Boolean** | Whether shadow shifts are included. |  [optional] |
|**showIndividualShiftData** | **Boolean** | Whether individual shift data is shown. |  [optional] |
|**hasSingleRate** | **Boolean** | Whether a single rate is applied to all users. |  [optional] |
|**enabledGranularTimeBreakdown** | **Boolean** | Whether granular time breakdown is enabled. |  [optional] |
|**lastGeneratedAt** | **OffsetDateTime** | When the report was last generated. |  [optional] |
|**timeZone** | **String** | The team&#39;s IANA timezone used to interpret start_date and end_date. |  [optional] |
|**csvFileUrl** | **URI** | Download URL for the generated CSV report. Null until the report is generated. |  [optional] |
|**xlsxFileUrl** | **URI** | Download URL for the generated XLSX report. Null until the report is generated. |  [optional] |
|**createdAt** | **OffsetDateTime** |  |  |
|**updatedAt** | **OffsetDateTime** |  |  |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| PROCESSING | &quot;processing&quot; |
| GENERATED | &quot;generated&quot; |
| DOWNLOADED | &quot;downloaded&quot; |



## Enum: PayTypeEnum

| Name | Value |
|---- | -----|
| HOURLY | &quot;hourly&quot; |
| DAILY | &quot;daily&quot; |



