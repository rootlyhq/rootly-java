

# PatchAlertRouteDataAttributesRulesInnerDestinationsInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | The ID of the destination. Required for updating or deleting existing destinations. |  [optional] |
|**destroy** | **Boolean** | Set to true to delete this destination |  [optional] |
|**targetType** | [**TargetTypeEnum**](#TargetTypeEnum) | The type of the target. Please contact support if you encounter issues using &#x60;Functionality&#x60; as a target type. |  [optional] |
|**targetId** | **UUID** | The ID of the target |  [optional] |



## Enum: TargetTypeEnum

| Name | Value |
|---- | -----|
| SERVICE | &quot;Service&quot; |
| GROUP | &quot;Group&quot; |
| FUNCTIONALITY | &quot;Functionality&quot; |
| ESCALATION_POLICY | &quot;EscalationPolicy&quot; |



