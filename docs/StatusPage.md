

# StatusPage


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**title** | **String** | The title of the status page |  |
|**publicTitle** | **String** | The public title of the status page |  [optional] |
|**description** | **String** | The description of the status page |  [optional] |
|**publicDescription** | **String** | The public description of the status page |  [optional] |
|**headerColor** | **String** | The color of the header. Eg. \&quot;#0061F2\&quot; |  [optional] |
|**footerColor** | **String** | The color of the footer. Eg. \&quot;#1F2F41\&quot; |  [optional] |
|**allowSearchEngineIndex** | **Boolean** | Allow search engines to include your public status page in search results |  [optional] |
|**showUptime** | **Boolean** | Show uptime |  [optional] |
|**showUptimeLastDays** | [**ShowUptimeLastDaysEnum**](#ShowUptimeLastDaysEnum) | Show uptime over x days |  [optional] |
|**successMessage** | **String** | Message showing when all components are operational |  [optional] |
|**failureMessage** | **String** | Message showing when at least one component is not operational |  [optional] |
|**authenticationEnabled** | **Boolean** | Enable authentication |  [optional] |
|**authenticationPassword** | **String** | Authentication password |  [optional] |
|**websiteUrl** | **String** | Website URL |  [optional] |
|**websitePrivacyUrl** | **String** | Website Privacy URL |  [optional] |
|**websiteSupportUrl** | **String** | Website Support URL |  [optional] |
|**gaTrackingId** | **String** | Google Analytics tracking ID |  [optional] |
|**timeZone** | **String** | A valid IANA time zone name. |  [optional] |
|**_public** | **Boolean** | Make the status page accessible to the public |  [optional] |
|**serviceIds** | **List&lt;String&gt;** | Services attached to the status page |  [optional] |
|**functionalityIds** | **List&lt;String&gt;** | Functionalities attached to the status page |  [optional] |
|**externalDomainNames** | **List&lt;String&gt;** | External domain names attached to the status page |  [optional] |
|**enabled** | **Boolean** | Enabled / Disable the status page |  [optional] |
|**createdAt** | **String** | Date of creation |  |
|**updatedAt** | **String** | Date of last update |  |



## Enum: ShowUptimeLastDaysEnum

| Name | Value |
|---- | -----|
| NUMBER_30 | 30 |
| NUMBER_60 | 60 |
| NUMBER_90 | 90 |
| NUMBER_180 | 180 |
| NUMBER_360 | 360 |



