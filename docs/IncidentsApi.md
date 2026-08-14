# IncidentsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addSubscribersToIncident**](IncidentsApi.md#addSubscribersToIncident) | **POST** /v1/incidents/{id}/add_subscribers | Add subscribers to incident |
| [**assignUserToIncident**](IncidentsApi.md#assignUserToIncident) | **POST** /v1/incidents/{id}/assign_role_to_user | Assign user to incident |
| [**cancelIncident**](IncidentsApi.md#cancelIncident) | **PUT** /v1/incidents/{id}/cancel | Cancel an incident |
| [**createIncident**](IncidentsApi.md#createIncident) | **POST** /v1/incidents | Creates an incident |
| [**deleteIncident**](IncidentsApi.md#deleteIncident) | **DELETE** /v1/incidents/{id} | Delete an incident |
| [**detachFromParentIncident**](IncidentsApi.md#detachFromParentIncident) | **PUT** /v1/incidents/{id}/detach_from_parent | Detach an incident from its parent |
| [**getIncident**](IncidentsApi.md#getIncident) | **GET** /v1/incidents/{id} | Retrieves an incident |
| [**listIncidents**](IncidentsApi.md#listIncidents) | **GET** /v1/incidents | List incidents |
| [**markAsDuplicateIncident**](IncidentsApi.md#markAsDuplicateIncident) | **PUT** /v1/incidents/{id}/duplicate | Mark an incident as a duplicate |
| [**mitigateIncident**](IncidentsApi.md#mitigateIncident) | **PUT** /v1/incidents/{id}/mitigate | Mitigate an incident |
| [**removeAssignedUserFromIncident**](IncidentsApi.md#removeAssignedUserFromIncident) | **DELETE** /v1/incidents/{id}/unassign_role_from_user | Remove assigned user from incident |
| [**removeSubscribersToIncident**](IncidentsApi.md#removeSubscribersToIncident) | **DELETE** /v1/incidents/{id}/remove_subscribers | Remove subscribers from incident |
| [**resolveIncident**](IncidentsApi.md#resolveIncident) | **PUT** /v1/incidents/{id}/resolve | Resolve an incident |
| [**restartIncident**](IncidentsApi.md#restartIncident) | **PUT** /v1/incidents/{id}/restart | Restart an incident |
| [**triageIncident**](IncidentsApi.md#triageIncident) | **PUT** /v1/incidents/{id}/in_triage | Triage an incident |
| [**unmarkAsDuplicateIncident**](IncidentsApi.md#unmarkAsDuplicateIncident) | **PUT** /v1/incidents/{id}/unmark_as_duplicate | Remove duplicate marking from an incident |
| [**updateIncident**](IncidentsApi.md#updateIncident) | **PUT** /v1/incidents/{id} | Update an incident |


<a id="addSubscribersToIncident"></a>
# **addSubscribersToIncident**
> IncidentResponse addSubscribersToIncident(id, addSubscribers)

Add subscribers to incident

Add subscribers to incident

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    AddSubscribers addSubscribers = new AddSubscribers(); // AddSubscribers | 
    try {
      IncidentResponse result = apiInstance.addSubscribersToIncident(id, addSubscribers);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#addSubscribersToIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **addSubscribers** | [**AddSubscribers**](AddSubscribers.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | add subscribers to incident |  -  |
| **404** | resource not found |  -  |

<a id="assignUserToIncident"></a>
# **assignUserToIncident**
> IncidentResponse assignUserToIncident(id, assignRoleToUser)

Assign user to incident

Assign user to incident

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    AssignRoleToUser assignRoleToUser = new AssignRoleToUser(); // AssignRoleToUser | 
    try {
      IncidentResponse result = apiInstance.assignUserToIncident(id, assignRoleToUser);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#assignUserToIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **assignRoleToUser** | [**AssignRoleToUser**](AssignRoleToUser.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | assign user to incident |  -  |
| **404** | resource not found |  -  |

<a id="cancelIncident"></a>
# **cancelIncident**
> IncidentResponse cancelIncident(id, cancelIncident)

Cancel an incident

Cancel a specific incident by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    CancelIncident cancelIncident = new CancelIncident(); // CancelIncident | 
    try {
      IncidentResponse result = apiInstance.cancelIncident(id, cancelIncident);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#cancelIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **cancelIncident** | [**CancelIncident**](CancelIncident.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident cancel |  -  |
| **404** | resource not found |  -  |

<a id="createIncident"></a>
# **createIncident**
> IncidentResponse createIncident(newIncident)

Creates an incident

Creates a new incident from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    NewIncident newIncident = new NewIncident(); // NewIncident | 
    try {
      IncidentResponse result = apiInstance.createIncident(newIncident);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#createIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **newIncident** | [**NewIncident**](NewIncident.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident created |  -  |
| **422** | invalid causes association |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteIncident"></a>
# **deleteIncident**
> IncidentResponse deleteIncident(id)

Delete an incident

Delete a specific incident by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      IncidentResponse result = apiInstance.deleteIncident(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#deleteIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident deleted |  -  |
| **404** | resource not found |  -  |

<a id="detachFromParentIncident"></a>
# **detachFromParentIncident**
> IncidentResponse detachFromParentIncident(id)

Detach an incident from its parent

Detach a sub-incident from its parent incident

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      IncidentResponse result = apiInstance.detachFromParentIncident(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#detachFromParentIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident detached from parent |  -  |
| **422** | incident has no parent |  -  |
| **404** | resource not found |  -  |

<a id="getIncident"></a>
# **getIncident**
> IncidentResponse getIncident(id, include)

Retrieves an incident

Retrieves a specific incident by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    String include = "sub_statuses"; // String | comma separated if needed. eg: sub_statuses,causes,subscribers
    try {
      IncidentResponse result = apiInstance.getIncident(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#getIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **include** | **String**| comma separated if needed. eg: sub_statuses,causes,subscribers | [optional] [enum: sub_statuses, causes, subscribers, roles, slack_messages, environments, incident_types, services, functionalities, groups, events, action_items, custom_field_selections, feedbacks, incident_post_mortem, alerts] |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident found by slug |  -  |
| **404** | resource not found |  -  |

<a id="listIncidents"></a>
# **listIncidents**
> IncidentList listIncidents(pageAfter, pageNumber, pageSize, filterSearch, filterKind, filterStatus, filterPrivate, filterUserId, filterSeverity, filterSeverityId, filterLabels, filterTypes, filterTypeIds, filterEnvironments, filterEnvironmentIds, filterFunctionalities, filterFunctionalityIds, filterFunctionalityNames, filterServices, filterServiceIds, filterServiceNames, filterTeams, filterTeamIds, filterTeamNames, filterCause, filterCauseIds, filterCustomFieldSelectedOptionIds, filterSlackChannelId, filterSequentialId, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterUpdatedAtGt, filterUpdatedAtGte, filterUpdatedAtLt, filterUpdatedAtLte, filterStartedAtGt, filterStartedAtGte, filterStartedAtLt, filterStartedAtLte, filterDetectedAtGt, filterDetectedAtGte, filterDetectedAtLt, filterDetectedAtLte, filterAcknowledgedAtGt, filterAcknowledgedAtGte, filterAcknowledgedAtLt, filterAcknowledgedAtLte, filterMitigatedAtGt, filterMitigatedAtGte, filterMitigatedAtLt, filterMitigatedAtLte, filterResolvedAtGt, filterResolvedAtGte, filterResolvedAtLt, filterResolvedAtLte, filterClosedAtGt, filterClosedAtGte, filterClosedAtLt, filterClosedAtLte, filterInTriageAtGt, filterInTriageAtGte, filterInTriageAtLt, filterInTriageAtLte, filterKindEq, filterKindNotEq, filterKindIn, filterKindNotIn, filterStatusEq, filterStatusNotEq, filterStatusIn, filterStatusNotIn, filterPrivateEq, filterPrivateNotEq, filterPrivateIn, filterPrivateNotIn, filterUserIdEq, filterUserIdNotEq, filterUserIdIn, filterUserIdNotIn, filterSeverityEq, filterSeverityNotEq, filterSeverityIn, filterSeverityNotIn, filterSeverityIdEq, filterSeverityIdNotEq, filterSeverityIdIn, filterSeverityIdNotIn, filterLabelsEq, filterLabelsNotEq, filterLabelsIn, filterLabelsNotIn, filterZendeskTicketIdEq, filterZendeskTicketIdNotEq, filterZendeskTicketIdIn, filterZendeskTicketIdNotIn, filterSequentialIdEq, filterSequentialIdNotEq, filterSequentialIdIn, filterSequentialIdNotIn, filterTypesEq, filterTypesNotEq, filterTypesIn, filterTypesNotIn, filterTypeIdsEq, filterTypeIdsNotEq, filterTypeIdsIn, filterTypeIdsNotIn, filterEnvironmentsEq, filterEnvironmentsNotEq, filterEnvironmentsIn, filterEnvironmentsNotIn, filterEnvironmentIdsEq, filterEnvironmentIdsNotEq, filterEnvironmentIdsIn, filterEnvironmentIdsNotIn, filterServicesEq, filterServicesNotEq, filterServicesIn, filterServicesNotIn, filterServiceIdsEq, filterServiceIdsNotEq, filterServiceIdsIn, filterServiceIdsNotIn, filterServiceNamesEq, filterServiceNamesNotEq, filterServiceNamesIn, filterServiceNamesNotIn, filterFunctionalitiesEq, filterFunctionalitiesNotEq, filterFunctionalitiesIn, filterFunctionalitiesNotIn, filterFunctionalityIdsEq, filterFunctionalityIdsNotEq, filterFunctionalityIdsIn, filterFunctionalityIdsNotIn, filterFunctionalityNamesEq, filterFunctionalityNamesNotEq, filterFunctionalityNamesIn, filterFunctionalityNamesNotIn, filterCausesEq, filterCausesNotEq, filterCausesIn, filterCausesNotIn, filterCauseIdsEq, filterCauseIdsNotEq, filterCauseIdsIn, filterCauseIdsNotIn, filterTeamsEq, filterTeamsNotEq, filterTeamsIn, filterTeamsNotIn, filterTeamIdsEq, filterTeamIdsNotEq, filterTeamIdsIn, filterTeamIdsNotIn, filterTeamNamesEq, filterTeamNamesNotEq, filterTeamNamesIn, filterTeamNamesNotIn, sort, include)

List incidents

List incidents

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    String pageAfter = "pageAfter_example"; // String | The cursor to fetch results using cursor pagination. A cursor is provided in meta.next_cursor in the response.
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterKind = "filterKind_example"; // String | 
    String filterStatus = "filterStatus_example"; // String | 
    String filterPrivate = "filterPrivate_example"; // String | 
    Integer filterUserId = 56; // Integer | 
    String filterSeverity = "filterSeverity_example"; // String | 
    String filterSeverityId = "filterSeverityId_example"; // String | 
    String filterLabels = "filterLabels_example"; // String | 
    String filterTypes = "filterTypes_example"; // String | 
    String filterTypeIds = "filterTypeIds_example"; // String | 
    String filterEnvironments = "filterEnvironments_example"; // String | 
    String filterEnvironmentIds = "filterEnvironmentIds_example"; // String | 
    String filterFunctionalities = "filterFunctionalities_example"; // String | 
    String filterFunctionalityIds = "filterFunctionalityIds_example"; // String | 
    String filterFunctionalityNames = "filterFunctionalityNames_example"; // String | 
    String filterServices = "filterServices_example"; // String | 
    String filterServiceIds = "filterServiceIds_example"; // String | 
    String filterServiceNames = "filterServiceNames_example"; // String | 
    String filterTeams = "filterTeams_example"; // String | 
    String filterTeamIds = "filterTeamIds_example"; // String | 
    String filterTeamNames = "filterTeamNames_example"; // String | 
    String filterCause = "filterCause_example"; // String | 
    String filterCauseIds = "filterCauseIds_example"; // String | 
    String filterCustomFieldSelectedOptionIds = "filterCustomFieldSelectedOptionIds_example"; // String | 
    String filterSlackChannelId = "filterSlackChannelId_example"; // String | 
    String filterSequentialId = "filterSequentialId_example"; // String | Filter by the human-readable incident number (the 123 in INC-123).
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String filterUpdatedAtGt = "filterUpdatedAtGt_example"; // String | 
    String filterUpdatedAtGte = "filterUpdatedAtGte_example"; // String | 
    String filterUpdatedAtLt = "filterUpdatedAtLt_example"; // String | 
    String filterUpdatedAtLte = "filterUpdatedAtLte_example"; // String | 
    String filterStartedAtGt = "filterStartedAtGt_example"; // String | 
    String filterStartedAtGte = "filterStartedAtGte_example"; // String | 
    String filterStartedAtLt = "filterStartedAtLt_example"; // String | 
    String filterStartedAtLte = "filterStartedAtLte_example"; // String | 
    String filterDetectedAtGt = "filterDetectedAtGt_example"; // String | 
    String filterDetectedAtGte = "filterDetectedAtGte_example"; // String | 
    String filterDetectedAtLt = "filterDetectedAtLt_example"; // String | 
    String filterDetectedAtLte = "filterDetectedAtLte_example"; // String | 
    String filterAcknowledgedAtGt = "filterAcknowledgedAtGt_example"; // String | 
    String filterAcknowledgedAtGte = "filterAcknowledgedAtGte_example"; // String | 
    String filterAcknowledgedAtLt = "filterAcknowledgedAtLt_example"; // String | 
    String filterAcknowledgedAtLte = "filterAcknowledgedAtLte_example"; // String | 
    String filterMitigatedAtGt = "filterMitigatedAtGt_example"; // String | 
    String filterMitigatedAtGte = "filterMitigatedAtGte_example"; // String | 
    String filterMitigatedAtLt = "filterMitigatedAtLt_example"; // String | 
    String filterMitigatedAtLte = "filterMitigatedAtLte_example"; // String | 
    String filterResolvedAtGt = "filterResolvedAtGt_example"; // String | 
    String filterResolvedAtGte = "filterResolvedAtGte_example"; // String | 
    String filterResolvedAtLt = "filterResolvedAtLt_example"; // String | 
    String filterResolvedAtLte = "filterResolvedAtLte_example"; // String | 
    String filterClosedAtGt = "filterClosedAtGt_example"; // String | 
    String filterClosedAtGte = "filterClosedAtGte_example"; // String | 
    String filterClosedAtLt = "filterClosedAtLt_example"; // String | 
    String filterClosedAtLte = "filterClosedAtLte_example"; // String | 
    String filterInTriageAtGt = "filterInTriageAtGt_example"; // String | 
    String filterInTriageAtGte = "filterInTriageAtGte_example"; // String | 
    String filterInTriageAtLt = "filterInTriageAtLt_example"; // String | 
    String filterInTriageAtLte = "filterInTriageAtLte_example"; // String | 
    String filterKindEq = "filterKindEq_example"; // String | 
    String filterKindNotEq = "filterKindNotEq_example"; // String | 
    String filterKindIn = "filterKindIn_example"; // String | 
    String filterKindNotIn = "filterKindNotIn_example"; // String | 
    String filterStatusEq = "filterStatusEq_example"; // String | 
    String filterStatusNotEq = "filterStatusNotEq_example"; // String | 
    String filterStatusIn = "filterStatusIn_example"; // String | 
    String filterStatusNotIn = "filterStatusNotIn_example"; // String | 
    String filterPrivateEq = "filterPrivateEq_example"; // String | 
    String filterPrivateNotEq = "filterPrivateNotEq_example"; // String | 
    String filterPrivateIn = "filterPrivateIn_example"; // String | 
    String filterPrivateNotIn = "filterPrivateNotIn_example"; // String | 
    String filterUserIdEq = "filterUserIdEq_example"; // String | 
    String filterUserIdNotEq = "filterUserIdNotEq_example"; // String | 
    String filterUserIdIn = "filterUserIdIn_example"; // String | 
    String filterUserIdNotIn = "filterUserIdNotIn_example"; // String | 
    String filterSeverityEq = "filterSeverityEq_example"; // String | 
    String filterSeverityNotEq = "filterSeverityNotEq_example"; // String | 
    String filterSeverityIn = "filterSeverityIn_example"; // String | 
    String filterSeverityNotIn = "filterSeverityNotIn_example"; // String | 
    String filterSeverityIdEq = "filterSeverityIdEq_example"; // String | 
    String filterSeverityIdNotEq = "filterSeverityIdNotEq_example"; // String | 
    String filterSeverityIdIn = "filterSeverityIdIn_example"; // String | 
    String filterSeverityIdNotIn = "filterSeverityIdNotIn_example"; // String | 
    String filterLabelsEq = "filterLabelsEq_example"; // String | 
    String filterLabelsNotEq = "filterLabelsNotEq_example"; // String | 
    String filterLabelsIn = "filterLabelsIn_example"; // String | 
    String filterLabelsNotIn = "filterLabelsNotIn_example"; // String | 
    String filterZendeskTicketIdEq = "filterZendeskTicketIdEq_example"; // String | 
    String filterZendeskTicketIdNotEq = "filterZendeskTicketIdNotEq_example"; // String | 
    String filterZendeskTicketIdIn = "filterZendeskTicketIdIn_example"; // String | 
    String filterZendeskTicketIdNotIn = "filterZendeskTicketIdNotIn_example"; // String | 
    String filterSequentialIdEq = "filterSequentialIdEq_example"; // String | 
    String filterSequentialIdNotEq = "filterSequentialIdNotEq_example"; // String | 
    String filterSequentialIdIn = "filterSequentialIdIn_example"; // String | 
    String filterSequentialIdNotIn = "filterSequentialIdNotIn_example"; // String | 
    String filterTypesEq = "filterTypesEq_example"; // String | 
    String filterTypesNotEq = "filterTypesNotEq_example"; // String | 
    String filterTypesIn = "filterTypesIn_example"; // String | 
    String filterTypesNotIn = "filterTypesNotIn_example"; // String | 
    String filterTypeIdsEq = "filterTypeIdsEq_example"; // String | 
    String filterTypeIdsNotEq = "filterTypeIdsNotEq_example"; // String | 
    String filterTypeIdsIn = "filterTypeIdsIn_example"; // String | 
    String filterTypeIdsNotIn = "filterTypeIdsNotIn_example"; // String | 
    String filterEnvironmentsEq = "filterEnvironmentsEq_example"; // String | 
    String filterEnvironmentsNotEq = "filterEnvironmentsNotEq_example"; // String | 
    String filterEnvironmentsIn = "filterEnvironmentsIn_example"; // String | 
    String filterEnvironmentsNotIn = "filterEnvironmentsNotIn_example"; // String | 
    String filterEnvironmentIdsEq = "filterEnvironmentIdsEq_example"; // String | 
    String filterEnvironmentIdsNotEq = "filterEnvironmentIdsNotEq_example"; // String | 
    String filterEnvironmentIdsIn = "filterEnvironmentIdsIn_example"; // String | 
    String filterEnvironmentIdsNotIn = "filterEnvironmentIdsNotIn_example"; // String | 
    String filterServicesEq = "filterServicesEq_example"; // String | 
    String filterServicesNotEq = "filterServicesNotEq_example"; // String | 
    String filterServicesIn = "filterServicesIn_example"; // String | 
    String filterServicesNotIn = "filterServicesNotIn_example"; // String | 
    String filterServiceIdsEq = "filterServiceIdsEq_example"; // String | 
    String filterServiceIdsNotEq = "filterServiceIdsNotEq_example"; // String | 
    String filterServiceIdsIn = "filterServiceIdsIn_example"; // String | 
    String filterServiceIdsNotIn = "filterServiceIdsNotIn_example"; // String | 
    String filterServiceNamesEq = "filterServiceNamesEq_example"; // String | 
    String filterServiceNamesNotEq = "filterServiceNamesNotEq_example"; // String | 
    String filterServiceNamesIn = "filterServiceNamesIn_example"; // String | 
    String filterServiceNamesNotIn = "filterServiceNamesNotIn_example"; // String | 
    String filterFunctionalitiesEq = "filterFunctionalitiesEq_example"; // String | 
    String filterFunctionalitiesNotEq = "filterFunctionalitiesNotEq_example"; // String | 
    String filterFunctionalitiesIn = "filterFunctionalitiesIn_example"; // String | 
    String filterFunctionalitiesNotIn = "filterFunctionalitiesNotIn_example"; // String | 
    String filterFunctionalityIdsEq = "filterFunctionalityIdsEq_example"; // String | 
    String filterFunctionalityIdsNotEq = "filterFunctionalityIdsNotEq_example"; // String | 
    String filterFunctionalityIdsIn = "filterFunctionalityIdsIn_example"; // String | 
    String filterFunctionalityIdsNotIn = "filterFunctionalityIdsNotIn_example"; // String | 
    String filterFunctionalityNamesEq = "filterFunctionalityNamesEq_example"; // String | 
    String filterFunctionalityNamesNotEq = "filterFunctionalityNamesNotEq_example"; // String | 
    String filterFunctionalityNamesIn = "filterFunctionalityNamesIn_example"; // String | 
    String filterFunctionalityNamesNotIn = "filterFunctionalityNamesNotIn_example"; // String | 
    String filterCausesEq = "filterCausesEq_example"; // String | 
    String filterCausesNotEq = "filterCausesNotEq_example"; // String | 
    String filterCausesIn = "filterCausesIn_example"; // String | 
    String filterCausesNotIn = "filterCausesNotIn_example"; // String | 
    String filterCauseIdsEq = "filterCauseIdsEq_example"; // String | 
    String filterCauseIdsNotEq = "filterCauseIdsNotEq_example"; // String | 
    String filterCauseIdsIn = "filterCauseIdsIn_example"; // String | 
    String filterCauseIdsNotIn = "filterCauseIdsNotIn_example"; // String | 
    String filterTeamsEq = "filterTeamsEq_example"; // String | 
    String filterTeamsNotEq = "filterTeamsNotEq_example"; // String | 
    String filterTeamsIn = "filterTeamsIn_example"; // String | 
    String filterTeamsNotIn = "filterTeamsNotIn_example"; // String | 
    String filterTeamIdsEq = "filterTeamIdsEq_example"; // String | 
    String filterTeamIdsNotEq = "filterTeamIdsNotEq_example"; // String | 
    String filterTeamIdsIn = "filterTeamIdsIn_example"; // String | 
    String filterTeamIdsNotIn = "filterTeamIdsNotIn_example"; // String | 
    String filterTeamNamesEq = "filterTeamNamesEq_example"; // String | 
    String filterTeamNamesNotEq = "filterTeamNamesNotEq_example"; // String | 
    String filterTeamNamesIn = "filterTeamNamesIn_example"; // String | 
    String filterTeamNamesNotIn = "filterTeamNamesNotIn_example"; // String | 
    String sort = "created_at"; // String | comma separated if needed. eg: created_at,updated_at
    String include = "sub_statuses"; // String | comma separated if needed. eg: sub_statuses,causes,subscribers
    try {
      IncidentList result = apiInstance.listIncidents(pageAfter, pageNumber, pageSize, filterSearch, filterKind, filterStatus, filterPrivate, filterUserId, filterSeverity, filterSeverityId, filterLabels, filterTypes, filterTypeIds, filterEnvironments, filterEnvironmentIds, filterFunctionalities, filterFunctionalityIds, filterFunctionalityNames, filterServices, filterServiceIds, filterServiceNames, filterTeams, filterTeamIds, filterTeamNames, filterCause, filterCauseIds, filterCustomFieldSelectedOptionIds, filterSlackChannelId, filterSequentialId, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterUpdatedAtGt, filterUpdatedAtGte, filterUpdatedAtLt, filterUpdatedAtLte, filterStartedAtGt, filterStartedAtGte, filterStartedAtLt, filterStartedAtLte, filterDetectedAtGt, filterDetectedAtGte, filterDetectedAtLt, filterDetectedAtLte, filterAcknowledgedAtGt, filterAcknowledgedAtGte, filterAcknowledgedAtLt, filterAcknowledgedAtLte, filterMitigatedAtGt, filterMitigatedAtGte, filterMitigatedAtLt, filterMitigatedAtLte, filterResolvedAtGt, filterResolvedAtGte, filterResolvedAtLt, filterResolvedAtLte, filterClosedAtGt, filterClosedAtGte, filterClosedAtLt, filterClosedAtLte, filterInTriageAtGt, filterInTriageAtGte, filterInTriageAtLt, filterInTriageAtLte, filterKindEq, filterKindNotEq, filterKindIn, filterKindNotIn, filterStatusEq, filterStatusNotEq, filterStatusIn, filterStatusNotIn, filterPrivateEq, filterPrivateNotEq, filterPrivateIn, filterPrivateNotIn, filterUserIdEq, filterUserIdNotEq, filterUserIdIn, filterUserIdNotIn, filterSeverityEq, filterSeverityNotEq, filterSeverityIn, filterSeverityNotIn, filterSeverityIdEq, filterSeverityIdNotEq, filterSeverityIdIn, filterSeverityIdNotIn, filterLabelsEq, filterLabelsNotEq, filterLabelsIn, filterLabelsNotIn, filterZendeskTicketIdEq, filterZendeskTicketIdNotEq, filterZendeskTicketIdIn, filterZendeskTicketIdNotIn, filterSequentialIdEq, filterSequentialIdNotEq, filterSequentialIdIn, filterSequentialIdNotIn, filterTypesEq, filterTypesNotEq, filterTypesIn, filterTypesNotIn, filterTypeIdsEq, filterTypeIdsNotEq, filterTypeIdsIn, filterTypeIdsNotIn, filterEnvironmentsEq, filterEnvironmentsNotEq, filterEnvironmentsIn, filterEnvironmentsNotIn, filterEnvironmentIdsEq, filterEnvironmentIdsNotEq, filterEnvironmentIdsIn, filterEnvironmentIdsNotIn, filterServicesEq, filterServicesNotEq, filterServicesIn, filterServicesNotIn, filterServiceIdsEq, filterServiceIdsNotEq, filterServiceIdsIn, filterServiceIdsNotIn, filterServiceNamesEq, filterServiceNamesNotEq, filterServiceNamesIn, filterServiceNamesNotIn, filterFunctionalitiesEq, filterFunctionalitiesNotEq, filterFunctionalitiesIn, filterFunctionalitiesNotIn, filterFunctionalityIdsEq, filterFunctionalityIdsNotEq, filterFunctionalityIdsIn, filterFunctionalityIdsNotIn, filterFunctionalityNamesEq, filterFunctionalityNamesNotEq, filterFunctionalityNamesIn, filterFunctionalityNamesNotIn, filterCausesEq, filterCausesNotEq, filterCausesIn, filterCausesNotIn, filterCauseIdsEq, filterCauseIdsNotEq, filterCauseIdsIn, filterCauseIdsNotIn, filterTeamsEq, filterTeamsNotEq, filterTeamsIn, filterTeamsNotIn, filterTeamIdsEq, filterTeamIdsNotEq, filterTeamIdsIn, filterTeamIdsNotIn, filterTeamNamesEq, filterTeamNamesNotEq, filterTeamNamesIn, filterTeamNamesNotIn, sort, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#listIncidents");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **pageAfter** | **String**| The cursor to fetch results using cursor pagination. A cursor is provided in meta.next_cursor in the response. | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSearch** | **String**|  | [optional] |
| **filterKind** | **String**|  | [optional] |
| **filterStatus** | **String**|  | [optional] |
| **filterPrivate** | **String**|  | [optional] |
| **filterUserId** | **Integer**|  | [optional] |
| **filterSeverity** | **String**|  | [optional] |
| **filterSeverityId** | **String**|  | [optional] |
| **filterLabels** | **String**|  | [optional] |
| **filterTypes** | **String**|  | [optional] |
| **filterTypeIds** | **String**|  | [optional] |
| **filterEnvironments** | **String**|  | [optional] |
| **filterEnvironmentIds** | **String**|  | [optional] |
| **filterFunctionalities** | **String**|  | [optional] |
| **filterFunctionalityIds** | **String**|  | [optional] |
| **filterFunctionalityNames** | **String**|  | [optional] |
| **filterServices** | **String**|  | [optional] |
| **filterServiceIds** | **String**|  | [optional] |
| **filterServiceNames** | **String**|  | [optional] |
| **filterTeams** | **String**|  | [optional] |
| **filterTeamIds** | **String**|  | [optional] |
| **filterTeamNames** | **String**|  | [optional] |
| **filterCause** | **String**|  | [optional] |
| **filterCauseIds** | **String**|  | [optional] |
| **filterCustomFieldSelectedOptionIds** | **String**|  | [optional] |
| **filterSlackChannelId** | **String**|  | [optional] |
| **filterSequentialId** | **String**| Filter by the human-readable incident number (the 123 in INC-123). | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **filterUpdatedAtGt** | **String**|  | [optional] |
| **filterUpdatedAtGte** | **String**|  | [optional] |
| **filterUpdatedAtLt** | **String**|  | [optional] |
| **filterUpdatedAtLte** | **String**|  | [optional] |
| **filterStartedAtGt** | **String**|  | [optional] |
| **filterStartedAtGte** | **String**|  | [optional] |
| **filterStartedAtLt** | **String**|  | [optional] |
| **filterStartedAtLte** | **String**|  | [optional] |
| **filterDetectedAtGt** | **String**|  | [optional] |
| **filterDetectedAtGte** | **String**|  | [optional] |
| **filterDetectedAtLt** | **String**|  | [optional] |
| **filterDetectedAtLte** | **String**|  | [optional] |
| **filterAcknowledgedAtGt** | **String**|  | [optional] |
| **filterAcknowledgedAtGte** | **String**|  | [optional] |
| **filterAcknowledgedAtLt** | **String**|  | [optional] |
| **filterAcknowledgedAtLte** | **String**|  | [optional] |
| **filterMitigatedAtGt** | **String**|  | [optional] |
| **filterMitigatedAtGte** | **String**|  | [optional] |
| **filterMitigatedAtLt** | **String**|  | [optional] |
| **filterMitigatedAtLte** | **String**|  | [optional] |
| **filterResolvedAtGt** | **String**|  | [optional] |
| **filterResolvedAtGte** | **String**|  | [optional] |
| **filterResolvedAtLt** | **String**|  | [optional] |
| **filterResolvedAtLte** | **String**|  | [optional] |
| **filterClosedAtGt** | **String**|  | [optional] |
| **filterClosedAtGte** | **String**|  | [optional] |
| **filterClosedAtLt** | **String**|  | [optional] |
| **filterClosedAtLte** | **String**|  | [optional] |
| **filterInTriageAtGt** | **String**|  | [optional] |
| **filterInTriageAtGte** | **String**|  | [optional] |
| **filterInTriageAtLt** | **String**|  | [optional] |
| **filterInTriageAtLte** | **String**|  | [optional] |
| **filterKindEq** | **String**|  | [optional] |
| **filterKindNotEq** | **String**|  | [optional] |
| **filterKindIn** | **String**|  | [optional] |
| **filterKindNotIn** | **String**|  | [optional] |
| **filterStatusEq** | **String**|  | [optional] |
| **filterStatusNotEq** | **String**|  | [optional] |
| **filterStatusIn** | **String**|  | [optional] |
| **filterStatusNotIn** | **String**|  | [optional] |
| **filterPrivateEq** | **String**|  | [optional] |
| **filterPrivateNotEq** | **String**|  | [optional] |
| **filterPrivateIn** | **String**|  | [optional] |
| **filterPrivateNotIn** | **String**|  | [optional] |
| **filterUserIdEq** | **String**|  | [optional] |
| **filterUserIdNotEq** | **String**|  | [optional] |
| **filterUserIdIn** | **String**|  | [optional] |
| **filterUserIdNotIn** | **String**|  | [optional] |
| **filterSeverityEq** | **String**|  | [optional] |
| **filterSeverityNotEq** | **String**|  | [optional] |
| **filterSeverityIn** | **String**|  | [optional] |
| **filterSeverityNotIn** | **String**|  | [optional] |
| **filterSeverityIdEq** | **String**|  | [optional] |
| **filterSeverityIdNotEq** | **String**|  | [optional] |
| **filterSeverityIdIn** | **String**|  | [optional] |
| **filterSeverityIdNotIn** | **String**|  | [optional] |
| **filterLabelsEq** | **String**|  | [optional] |
| **filterLabelsNotEq** | **String**|  | [optional] |
| **filterLabelsIn** | **String**|  | [optional] |
| **filterLabelsNotIn** | **String**|  | [optional] |
| **filterZendeskTicketIdEq** | **String**|  | [optional] |
| **filterZendeskTicketIdNotEq** | **String**|  | [optional] |
| **filterZendeskTicketIdIn** | **String**|  | [optional] |
| **filterZendeskTicketIdNotIn** | **String**|  | [optional] |
| **filterSequentialIdEq** | **String**|  | [optional] |
| **filterSequentialIdNotEq** | **String**|  | [optional] |
| **filterSequentialIdIn** | **String**|  | [optional] |
| **filterSequentialIdNotIn** | **String**|  | [optional] |
| **filterTypesEq** | **String**|  | [optional] |
| **filterTypesNotEq** | **String**|  | [optional] |
| **filterTypesIn** | **String**|  | [optional] |
| **filterTypesNotIn** | **String**|  | [optional] |
| **filterTypeIdsEq** | **String**|  | [optional] |
| **filterTypeIdsNotEq** | **String**|  | [optional] |
| **filterTypeIdsIn** | **String**|  | [optional] |
| **filterTypeIdsNotIn** | **String**|  | [optional] |
| **filterEnvironmentsEq** | **String**|  | [optional] |
| **filterEnvironmentsNotEq** | **String**|  | [optional] |
| **filterEnvironmentsIn** | **String**|  | [optional] |
| **filterEnvironmentsNotIn** | **String**|  | [optional] |
| **filterEnvironmentIdsEq** | **String**|  | [optional] |
| **filterEnvironmentIdsNotEq** | **String**|  | [optional] |
| **filterEnvironmentIdsIn** | **String**|  | [optional] |
| **filterEnvironmentIdsNotIn** | **String**|  | [optional] |
| **filterServicesEq** | **String**|  | [optional] |
| **filterServicesNotEq** | **String**|  | [optional] |
| **filterServicesIn** | **String**|  | [optional] |
| **filterServicesNotIn** | **String**|  | [optional] |
| **filterServiceIdsEq** | **String**|  | [optional] |
| **filterServiceIdsNotEq** | **String**|  | [optional] |
| **filterServiceIdsIn** | **String**|  | [optional] |
| **filterServiceIdsNotIn** | **String**|  | [optional] |
| **filterServiceNamesEq** | **String**|  | [optional] |
| **filterServiceNamesNotEq** | **String**|  | [optional] |
| **filterServiceNamesIn** | **String**|  | [optional] |
| **filterServiceNamesNotIn** | **String**|  | [optional] |
| **filterFunctionalitiesEq** | **String**|  | [optional] |
| **filterFunctionalitiesNotEq** | **String**|  | [optional] |
| **filterFunctionalitiesIn** | **String**|  | [optional] |
| **filterFunctionalitiesNotIn** | **String**|  | [optional] |
| **filterFunctionalityIdsEq** | **String**|  | [optional] |
| **filterFunctionalityIdsNotEq** | **String**|  | [optional] |
| **filterFunctionalityIdsIn** | **String**|  | [optional] |
| **filterFunctionalityIdsNotIn** | **String**|  | [optional] |
| **filterFunctionalityNamesEq** | **String**|  | [optional] |
| **filterFunctionalityNamesNotEq** | **String**|  | [optional] |
| **filterFunctionalityNamesIn** | **String**|  | [optional] |
| **filterFunctionalityNamesNotIn** | **String**|  | [optional] |
| **filterCausesEq** | **String**|  | [optional] |
| **filterCausesNotEq** | **String**|  | [optional] |
| **filterCausesIn** | **String**|  | [optional] |
| **filterCausesNotIn** | **String**|  | [optional] |
| **filterCauseIdsEq** | **String**|  | [optional] |
| **filterCauseIdsNotEq** | **String**|  | [optional] |
| **filterCauseIdsIn** | **String**|  | [optional] |
| **filterCauseIdsNotIn** | **String**|  | [optional] |
| **filterTeamsEq** | **String**|  | [optional] |
| **filterTeamsNotEq** | **String**|  | [optional] |
| **filterTeamsIn** | **String**|  | [optional] |
| **filterTeamsNotIn** | **String**|  | [optional] |
| **filterTeamIdsEq** | **String**|  | [optional] |
| **filterTeamIdsNotEq** | **String**|  | [optional] |
| **filterTeamIdsIn** | **String**|  | [optional] |
| **filterTeamIdsNotIn** | **String**|  | [optional] |
| **filterTeamNamesEq** | **String**|  | [optional] |
| **filterTeamNamesNotEq** | **String**|  | [optional] |
| **filterTeamNamesIn** | **String**|  | [optional] |
| **filterTeamNamesNotIn** | **String**|  | [optional] |
| **sort** | **String**| comma separated if needed. eg: created_at,updated_at | [optional] [enum: created_at, -created_at, updated_at, -updated_at, started_at, -started_at, in_triage_at, -in_triage_at, mitigated_at, -mitigated_at, resolved_at, -resolved_at] |
| **include** | **String**| comma separated if needed. eg: sub_statuses,causes,subscribers | [optional] [enum: sub_statuses, causes, subscribers, roles, slack_messages, environments, incident_types, services, functionalities, groups, events, action_items, custom_field_selections, feedbacks, incident_post_mortem, alerts] |

### Return type

[**IncidentList**](IncidentList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |
| **400** | malformed date filter |  -  |

<a id="markAsDuplicateIncident"></a>
# **markAsDuplicateIncident**
> IncidentResponse markAsDuplicateIncident(id, resolveIncident)

Mark an incident as a duplicate

Mark an incident as a duplicate

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    ResolveIncident resolveIncident = new ResolveIncident(); // ResolveIncident | 
    try {
      IncidentResponse result = apiInstance.markAsDuplicateIncident(id, resolveIncident);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#markAsDuplicateIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **resolveIncident** | [**ResolveIncident**](ResolveIncident.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident marked as duplicated |  -  |
| **404** | resource not found |  -  |

<a id="mitigateIncident"></a>
# **mitigateIncident**
> IncidentResponse mitigateIncident(id, mitigateIncident)

Mitigate an incident

Mitigate a specific incident by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    MitigateIncident mitigateIncident = new MitigateIncident(); // MitigateIncident | 
    try {
      IncidentResponse result = apiInstance.mitigateIncident(id, mitigateIncident);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#mitigateIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **mitigateIncident** | [**MitigateIncident**](MitigateIncident.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident mitigated |  -  |
| **404** | resource not found |  -  |

<a id="removeAssignedUserFromIncident"></a>
# **removeAssignedUserFromIncident**
> IncidentResponse removeAssignedUserFromIncident(id, unassignRoleFromUser)

Remove assigned user from incident

Remove assigned user from incident

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    UnassignRoleFromUser unassignRoleFromUser = new UnassignRoleFromUser(); // UnassignRoleFromUser | 
    try {
      IncidentResponse result = apiInstance.removeAssignedUserFromIncident(id, unassignRoleFromUser);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#removeAssignedUserFromIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **unassignRoleFromUser** | [**UnassignRoleFromUser**](UnassignRoleFromUser.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | remove assigned user from incident |  -  |
| **404** | resource not found |  -  |

<a id="removeSubscribersToIncident"></a>
# **removeSubscribersToIncident**
> IncidentResponse removeSubscribersToIncident(id, removeSubscribers)

Remove subscribers from incident

Remove subscribers to incident

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    RemoveSubscribers removeSubscribers = new RemoveSubscribers(); // RemoveSubscribers | 
    try {
      IncidentResponse result = apiInstance.removeSubscribersToIncident(id, removeSubscribers);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#removeSubscribersToIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **removeSubscribers** | [**RemoveSubscribers**](RemoveSubscribers.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | remove subscribers from incident |  -  |
| **404** | resource not found |  -  |

<a id="resolveIncident"></a>
# **resolveIncident**
> IncidentResponse resolveIncident(id, resolveIncident)

Resolve an incident

Resolve a specific incident by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    ResolveIncident resolveIncident = new ResolveIncident(); // ResolveIncident | 
    try {
      IncidentResponse result = apiInstance.resolveIncident(id, resolveIncident);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#resolveIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **resolveIncident** | [**ResolveIncident**](ResolveIncident.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident resolved |  -  |
| **404** | resource not found |  -  |

<a id="restartIncident"></a>
# **restartIncident**
> IncidentResponse restartIncident(id, restartIncident)

Restart an incident

Restart a specific incident by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    RestartIncident restartIncident = new RestartIncident(); // RestartIncident | 
    try {
      IncidentResponse result = apiInstance.restartIncident(id, restartIncident);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#restartIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **restartIncident** | [**RestartIncident**](RestartIncident.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident restarted |  -  |
| **404** | resource not found |  -  |

<a id="triageIncident"></a>
# **triageIncident**
> IncidentResponse triageIncident(id, inTriageIncident)

Triage an incident

Set a specific incident by ID to triage state

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    InTriageIncident inTriageIncident = new InTriageIncident(); // InTriageIncident | 
    try {
      IncidentResponse result = apiInstance.triageIncident(id, inTriageIncident);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#triageIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **inTriageIncident** | [**InTriageIncident**](InTriageIncident.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident set to triage |  -  |
| **404** | resource not found |  -  |

<a id="unmarkAsDuplicateIncident"></a>
# **unmarkAsDuplicateIncident**
> IncidentResponse unmarkAsDuplicateIncident(id)

Remove duplicate marking from an incident

Remove the duplicate marking from an incident

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      IncidentResponse result = apiInstance.unmarkAsDuplicateIncident(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#unmarkAsDuplicateIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | duplicate marking removed |  -  |
| **422** | incident is not marked as duplicate |  -  |
| **404** | resource not found |  -  |

<a id="updateIncident"></a>
# **updateIncident**
> IncidentResponse updateIncident(id, updateIncident)

Update an incident

Update a specific incident by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentsApi apiInstance = new IncidentsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    UpdateIncident updateIncident = new UpdateIncident(); // UpdateIncident | 
    try {
      IncidentResponse result = apiInstance.updateIncident(id, updateIncident);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentsApi#updateIncident");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **updateIncident** | [**UpdateIncident**](UpdateIncident.md)|  | |

### Return type

[**IncidentResponse**](IncidentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident updated |  -  |
| **404** | resource not found |  -  |

