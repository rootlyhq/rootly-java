

# NewAlertFieldDataAttributes


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | Deprecated. &#x60;slug&#x60; is derived from &#x60;name&#x60;; any submitted value is ignored. This property will be removed from the request schema in a future version. |  [optional] |
|**name** | **String** | The name of the alert field |  |
|**ownerGroupIds** | **List&lt;String&gt;** | IDs of the teams that own the alert field. Callers with org-wide alert field permissions may omit it or pass an empty list to create an org-wide field. Callers without them (team admins, team-scoped API keys) get their administered teams by default when it is omitted, and must otherwise pass at least one team they administer; an explicit empty list or null is rejected. |  [optional] |



