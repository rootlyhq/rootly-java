

# NewFormFieldDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | The kind of the form field |  |
|**inputKind** | [**InputKindEnum**](#InputKindEnum) | The input kind of the form field |  [optional] |
|**valueKind** | [**ValueKindEnum**](#ValueKindEnum) | The value kind of the form field |  [optional] |
|**valueKindCatalogId** | **String** | The ID of the catalog used when value_kind is &#x60;catalog_entity&#x60; |  [optional] |
|**name** | **String** | The name of the form field |  |
|**description** | **String** | The description of the form field |  [optional] |
|**shown** | **List&lt;String&gt;** |  |  [optional] |
|**required** | **List&lt;String&gt;** |  |  [optional] |
|**showOnIncidentDetails** | **Boolean** | Whether the form field is shown on the incident details panel |  [optional] |
|**enabled** | **Boolean** | Whether the form field is enabled |  [optional] |
|**defaultValues** | **List&lt;String&gt;** |  |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| CUSTOM | &quot;custom&quot; |
| TITLE | &quot;title&quot; |
| SUMMARY | &quot;summary&quot; |
| MITIGATION_MESSAGE | &quot;mitigation_message&quot; |
| RESOLUTION_MESSAGE | &quot;resolution_message&quot; |
| SEVERITY | &quot;severity&quot; |
| ENVIRONMENTS | &quot;environments&quot; |
| TYPES | &quot;types&quot; |
| SERVICES | &quot;services&quot; |
| CAUSES | &quot;causes&quot; |
| FUNCTIONALITIES | &quot;functionalities&quot; |
| TEAMS | &quot;teams&quot; |
| VISIBILITY | &quot;visibility&quot; |
| MARK_AS_TEST | &quot;mark_as_test&quot; |
| MARK_AS_BACKFILLED | &quot;mark_as_backfilled&quot; |
| LABELS | &quot;labels&quot; |
| NOTIFY_EMAILS | &quot;notify_emails&quot; |
| TRIGGER_MANUAL_WORKFLOWS | &quot;trigger_manual_workflows&quot; |
| SHOW_ONGOING_INCIDENTS | &quot;show_ongoing_incidents&quot; |
| ATTACH_ALERTS | &quot;attach_alerts&quot; |
| MARK_AS_IN_TRIAGE | &quot;mark_as_in_triage&quot; |
| IN_TRIAGE_AT | &quot;in_triage_at&quot; |
| STARTED_AT | &quot;started_at&quot; |
| DETECTED_AT | &quot;detected_at&quot; |
| ACKNOWLEDGED_AT | &quot;acknowledged_at&quot; |
| MITIGATED_AT | &quot;mitigated_at&quot; |
| RESOLVED_AT | &quot;resolved_at&quot; |
| CLOSED_AT | &quot;closed_at&quot; |
| MANUAL_STARTING_DATETIME_FIELD | &quot;manual_starting_datetime_field&quot; |



## Enum: InputKindEnum

| Name | Value |
|---- | -----|
| TEXT | &quot;text&quot; |
| TEXTAREA | &quot;textarea&quot; |
| SELECT | &quot;select&quot; |
| MULTI_SELECT | &quot;multi_select&quot; |
| DATE | &quot;date&quot; |
| DATETIME | &quot;datetime&quot; |
| NUMBER | &quot;number&quot; |
| CHECKBOX | &quot;checkbox&quot; |
| TAGS | &quot;tags&quot; |
| RICH_TEXT | &quot;rich_text&quot; |



## Enum: ValueKindEnum

| Name | Value |
|---- | -----|
| INHERIT | &quot;inherit&quot; |
| GROUP | &quot;group&quot; |
| SERVICE | &quot;service&quot; |
| FUNCTIONALITY | &quot;functionality&quot; |
| USER | &quot;user&quot; |
| CATALOG_ENTITY | &quot;catalog_entity&quot; |



