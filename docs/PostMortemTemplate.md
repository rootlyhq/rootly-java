

# PostMortemTemplate


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** | The name of the postmortem template |  |
|**slug** | **String** | The slugified name of the postmortem template |  [optional] |
|**_default** | **Boolean** | Default selected template when editing a postmortem |  [optional] |
|**content** | **String** | The postmortem template. Liquid syntax and markdown are supported |  [optional] |
|**contentHtml** | **String** | The postmortem template in HTML format with TipTap blocks support. Supports followup and timeline components. Liquid syntax is supported. |  [optional] |
|**contentJson** | **Object** | The postmortem template in TipTap JSON format |  [optional] |
|**format** | [**FormatEnum**](#FormatEnum) | The format of the input |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: FormatEnum

| Name | Value |
|---- | -----|
| HTML | &quot;html&quot; |
| MARKDOWN | &quot;markdown&quot; |



