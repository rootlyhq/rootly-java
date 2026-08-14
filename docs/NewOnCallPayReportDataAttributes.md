

# NewOnCallPayReportDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**startDate** | **LocalDate** | The start date for the report period. |  |
|**endDate** | **LocalDate** | The end date for the report period. |  |
|**scheduleIds** | **List&lt;String&gt;** | List of schedule UUIDs to scope the report. |  [optional] |
|**timeZone** | **String** | IANA timezone used to compute day and weekend boundaries. Defaults to the team&#39;s timezone. |  [optional] |
|**useRespondersTimeZone** | **Boolean** | When true, day and weekend boundaries are computed in each responder&#39;s personal timezone instead of the report-wide timezone. |  [optional] |



