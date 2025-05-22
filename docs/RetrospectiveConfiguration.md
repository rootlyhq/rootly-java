

# RetrospectiveConfiguration


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | The kind of the configuration. |  [optional] |
|**severityIds** | **List&lt;String&gt;** | The Severity ID&#39;s to attach to the retrospective configuration |  [optional] |
|**groupIds** | **List&lt;String&gt;** | The Team ID&#39;s to attach to the retrospective configuration |  [optional] |
|**incidentTypeIds** | **List&lt;String&gt;** | The Incident Type ID&#39;s to attach to the retrospective configuration |  [optional] |
|**createdAt** | **String** | Date of creation |  [optional] |
|**updatedAt** | **String** | Date of last update |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| SKIP | &quot;skip&quot; |
| MANDATORY | &quot;mandatory&quot; |



