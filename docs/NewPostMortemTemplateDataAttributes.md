

# NewPostMortemTemplateDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the postmortem template |  |
|**_default** | **Boolean** | Default selected template when editing a postmortem |  [optional] |
|**content** | **String** | The postmortem template. Supports TipTap blocks (followup and timeline components), Liquid syntax, and HTML. Will be sanitized and applied to both content and content_html fields. |  [optional] |
|**format** | [**FormatEnum**](#FormatEnum) | The format of the input |  [optional] |



## Enum: FormatEnum

| Name | Value |
|---- | -----|
| HTML | &quot;html&quot; |
| MARKDOWN | &quot;markdown&quot; |



