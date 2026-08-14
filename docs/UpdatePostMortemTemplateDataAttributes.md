

# UpdatePostMortemTemplateDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | Deprecated. &#x60;slug&#x60; is derived from &#x60;name&#x60;; any submitted value is ignored. This property will be removed from the request schema in a future version. |  [optional] |
|**name** | **String** | The name of the postmortem template |  [optional] |
|**_default** | **Boolean** | Default selected template when editing a postmortem |  [optional] |
|**content** | **String** | The postmortem template. Supports TipTap blocks (followup and timeline components), Liquid syntax, and HTML. Will be sanitized and applied to both content and content_html fields. |  [optional] |
|**format** | [**FormatEnum**](#FormatEnum) | The format of the input |  [optional] |



## Enum: FormatEnum

| Name | Value |
|---- | -----|
| HTML | &quot;html&quot; |
| MARKDOWN | &quot;markdown&quot; |



