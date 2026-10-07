

# NewPlaybookDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**title** | **String** | The title of the playbook |  |
|**summary** | **String** | The summary of the playbook |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) | Whether the playbook body lives in Rootly (&#x60;internal_document&#x60;) or at an external link (&#x60;external_url&#x60;). |  [optional] |
|**content** | **String** | Sanitized HTML instructions. Still returned when &#x60;kind&#x60; is &#x60;external_url&#x60;, where the body may be stale — branch on &#x60;kind&#x60;, not on &#x60;content&#x60; being present. |  [optional] |
|**externalUrl** | **String** | The external url of the playbook |  [optional] |
|**severityIds** | **List&lt;String&gt;** | The Severity IDs to attach to the incident |  [optional] |
|**environmentIds** | **List&lt;String&gt;** | The Environment IDs to attach to the incident |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | The Service IDs to attach to the incident |  [optional] |
|**functionalityIds** | **List&lt;String&gt;** | The Functionality IDs to attach to the incident |  [optional] |
|**groupIds** | **List&lt;String&gt;** | The Team IDs to attach to the incident |  [optional] |
|**incidentTypeIds** | **List&lt;String&gt;** | The Incident Type IDs to attach to the incident |  [optional] |
|**causeIds** | **List&lt;String&gt;** | The Cause IDs to attach to the incident |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| INTERNAL_DOCUMENT | &quot;internal_document&quot; |
| EXTERNAL_URL | &quot;external_url&quot; |



