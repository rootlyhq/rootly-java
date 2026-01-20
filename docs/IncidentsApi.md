# IncidentsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addSubscribersToIncident**](IncidentsApi.md#addSubscribersToIncident) | **POST** /v1/incidents/{id}/add_subscribers | Add subscribers to incident |
| [**assignUserToIncident**](IncidentsApi.md#assignUserToIncident) | **POST** /v1/incidents/{id}/assign_role_to_user | Assign user to incident |
| [**cancelIncident**](IncidentsApi.md#cancelIncident) | **PUT** /v1/incidents/{id}/cancel | Cancel an incident |
| [**createIncident**](IncidentsApi.md#createIncident) | **POST** /v1/incidents | Creates an incident |
| [**deleteIncident**](IncidentsApi.md#deleteIncident) | **DELETE** /v1/incidents/{id} | Delete an incident |
| [**getIncident**](IncidentsApi.md#getIncident) | **GET** /v1/incidents/{id} | Retrieves an incident |
| [**listIncidents**](IncidentsApi.md#listIncidents) | **GET** /v1/incidents | List incidents |
| [**markAsDuplicateIncident**](IncidentsApi.md#markAsDuplicateIncident) | **PUT** /v1/incidents/{id}/duplicate | Mark an incident as a duplicate |
| [**mitigateIncident**](IncidentsApi.md#mitigateIncident) | **PUT** /v1/incidents/{id}/mitigate | Mitigate an incident |
| [**removeAssignedUserFromIncident**](IncidentsApi.md#removeAssignedUserFromIncident) | **DELETE** /v1/incidents/{id}/unassign_role_from_user | Remove assigned user from incident |
| [**removeSubscribersToIncident**](IncidentsApi.md#removeSubscribersToIncident) | **DELETE** /v1/incidents/{id}/remove_subscribers | Remove subscribers from incident |
| [**resolveIncident**](IncidentsApi.md#resolveIncident) | **PUT** /v1/incidents/{id}/resolve | Resolve an incident |
| [**restartIncident**](IncidentsApi.md#restartIncident) | **PUT** /v1/incidents/{id}/restart | Restart an incident |
| [**triageIncident**](IncidentsApi.md#triageIncident) | **PUT** /v1/incidents/{id}/in_triage | Triage an incident |
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
> IncidentList listIncidents(pageNumber, pageSize, filterSearch, filterKind, filterStatus, filterPrivate, filterUserId, filterSeverity, filterSeverityId, filterLabels, filterTypes, filterTypeIds, filterEnvironments, filterEnvironmentIds, filterFunctionalities, filterFunctionalityIds, filterServices, filterServiceIds, filterTeams, filterTeamIds, filterCause, filterCauseIds, filterCustomFieldSelectedOptionIds, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterUpdatedAtGt, filterUpdatedAtGte, filterUpdatedAtLt, filterUpdatedAtLte, filterStartedAtGt, filterStartedAtGte, filterStartedAtLt, filterStartedAtLte, filterDetectedAtGt, filterDetectedAtGte, filterDetectedAtLt, filterDetectedAtLte, filterAcknowledgedAtGt, filterAcknowledgedAtGte, filterAcknowledgedAtLt, filterAcknowledgedAtLte, filterMitigatedAtGt, filterMitigatedAtGte, filterMitigatedAtLt, filterMitigatedAtLte, filterResolvedAtGt, filterResolvedAtGte, filterResolvedAtLt, filterResolvedAtLte, filterClosedAtGt, filterClosedAtGte, filterClosedAtLt, filterClosedAtLte, filterInTriageAtGt, filterInTriageAtGte, filterInTriageAtLt, filterInTriageAtLte, sort, include)

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
    String filterServices = "filterServices_example"; // String | 
    String filterServiceIds = "filterServiceIds_example"; // String | 
    String filterTeams = "filterTeams_example"; // String | 
    String filterTeamIds = "filterTeamIds_example"; // String | 
    String filterCause = "filterCause_example"; // String | 
    String filterCauseIds = "filterCauseIds_example"; // String | 
    String filterCustomFieldSelectedOptionIds = "filterCustomFieldSelectedOptionIds_example"; // String | 
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
    String sort = "created_at"; // String | comma separated if needed. eg: created_at,updated_at
    String include = "sub_statuses"; // String | comma separated if needed. eg: sub_statuses,causes,subscribers
    try {
      IncidentList result = apiInstance.listIncidents(pageNumber, pageSize, filterSearch, filterKind, filterStatus, filterPrivate, filterUserId, filterSeverity, filterSeverityId, filterLabels, filterTypes, filterTypeIds, filterEnvironments, filterEnvironmentIds, filterFunctionalities, filterFunctionalityIds, filterServices, filterServiceIds, filterTeams, filterTeamIds, filterCause, filterCauseIds, filterCustomFieldSelectedOptionIds, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterUpdatedAtGt, filterUpdatedAtGte, filterUpdatedAtLt, filterUpdatedAtLte, filterStartedAtGt, filterStartedAtGte, filterStartedAtLt, filterStartedAtLte, filterDetectedAtGt, filterDetectedAtGte, filterDetectedAtLt, filterDetectedAtLte, filterAcknowledgedAtGt, filterAcknowledgedAtGte, filterAcknowledgedAtLt, filterAcknowledgedAtLte, filterMitigatedAtGt, filterMitigatedAtGte, filterMitigatedAtLt, filterMitigatedAtLte, filterResolvedAtGt, filterResolvedAtGte, filterResolvedAtLt, filterResolvedAtLte, filterClosedAtGt, filterClosedAtGte, filterClosedAtLt, filterClosedAtLte, filterInTriageAtGt, filterInTriageAtGte, filterInTriageAtLt, filterInTriageAtLte, sort, include);
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
| **filterServices** | **String**|  | [optional] |
| **filterServiceIds** | **String**|  | [optional] |
| **filterTeams** | **String**|  | [optional] |
| **filterTeamIds** | **String**|  | [optional] |
| **filterCause** | **String**|  | [optional] |
| **filterCauseIds** | **String**|  | [optional] |
| **filterCustomFieldSelectedOptionIds** | **String**|  | [optional] |
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
| **sort** | **String**| comma separated if needed. eg: created_at,updated_at | [optional] [enum: created_at, -created_at, updated_at, -updated_at] |
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

