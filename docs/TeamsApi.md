# TeamsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**bulkDeleteGroups**](TeamsApi.md#bulkDeleteGroups) | **POST** /v1/teams/bulk_delete | Bulk delete Teams |
| [**bulkUpsertGroups**](TeamsApi.md#bulkUpsertGroups) | **POST** /v1/teams/bulk_upsert | Bulk upsert Teams |
| [**createGroupCatalogProperty**](TeamsApi.md#createGroupCatalogProperty) | **POST** /v1/teams/properties | Creates a Catalog Property |
| [**createTeam**](TeamsApi.md#createTeam) | **POST** /v1/teams | Creates a team |
| [**deleteTeam**](TeamsApi.md#deleteTeam) | **DELETE** /v1/teams/{id} | Delete a team |
| [**getTeam**](TeamsApi.md#getTeam) | **GET** /v1/teams/{id} | Retrieves a team |
| [**getTeamIncidentsChart**](TeamsApi.md#getTeamIncidentsChart) | **GET** /v1/teams/{id}/incidents_chart | Get team incidents chart |
| [**listGroupCatalogProperties**](TeamsApi.md#listGroupCatalogProperties) | **GET** /v1/teams/properties | List Catalog Properties |
| [**listTeams**](TeamsApi.md#listTeams) | **GET** /v1/teams | List teams |
| [**updateTeam**](TeamsApi.md#updateTeam) | **PUT** /v1/teams/{id} | Update a team |


<a id="bulkDeleteGroups"></a>
# **bulkDeleteGroups**
> BulkDestroyTeamsResponse bulkDeleteGroups(bulkDestroyTeams)

Bulk delete Teams

Delete teams by external_id list, or prune by managed_by source. Two mutually exclusive modes.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.TeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    TeamsApi apiInstance = new TeamsApi(defaultClient);
    BulkDestroyTeams bulkDestroyTeams = new BulkDestroyTeams(); // BulkDestroyTeams | 
    try {
      BulkDestroyTeamsResponse result = apiInstance.bulkDeleteGroups(bulkDestroyTeams);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TeamsApi#bulkDeleteGroups");
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
| **bulkDestroyTeams** | [**BulkDestroyTeams**](BulkDestroyTeams.md)|  | |

### Return type

[**BulkDestroyTeamsResponse**](BulkDestroyTeamsResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | records deleted successfully |  -  |
| **422** | validation or partial-failure error |  -  |
| **401** | unauthorized |  -  |

<a id="bulkUpsertGroups"></a>
# **bulkUpsertGroups**
> BulkUpsertTeamsResponse bulkUpsertGroups(bulkUpsertTeams)

Bulk upsert Teams

Create or update multiple teams by external_id. Only attributes present in the payload are written (managed-fields semantics). Transactional: all succeed or all fail. Requires an API key with both create and update capability across the resource scope (team/org-scoped); record-scoped principals cannot use this endpoint (they receive 404), which also prevents the create-vs-update branch from leaking whether an external_id exists.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.TeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    TeamsApi apiInstance = new TeamsApi(defaultClient);
    BulkUpsertTeams bulkUpsertTeams = new BulkUpsertTeams(); // BulkUpsertTeams | 
    try {
      BulkUpsertTeamsResponse result = apiInstance.bulkUpsertGroups(bulkUpsertTeams);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TeamsApi#bulkUpsertGroups");
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
| **bulkUpsertTeams** | [**BulkUpsertTeams**](BulkUpsertTeams.md)|  | |

### Return type

[**BulkUpsertTeamsResponse**](BulkUpsertTeamsResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | records upserted successfully |  -  |
| **422** | validation or record-level error |  -  |
| **401** | unauthorized |  -  |

<a id="createGroupCatalogProperty"></a>
# **createGroupCatalogProperty**
> CatalogPropertyResponse createGroupCatalogProperty(newCatalogProperty)

Creates a Catalog Property

Creates a new Catalog Property from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.TeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    TeamsApi apiInstance = new TeamsApi(defaultClient);
    NewCatalogProperty newCatalogProperty = new NewCatalogProperty(); // NewCatalogProperty | 
    try {
      CatalogPropertyResponse result = apiInstance.createGroupCatalogProperty(newCatalogProperty);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TeamsApi#createGroupCatalogProperty");
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
| **newCatalogProperty** | [**NewCatalogProperty**](NewCatalogProperty.md)|  | |

### Return type

[**CatalogPropertyResponse**](CatalogPropertyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | catalog_property created ignores wrong catalog_type attribute |  -  |
| **422** | exceeds max fields per catalog |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="createTeam"></a>
# **createTeam**
> TeamResponse createTeam(newTeam)

Creates a team

Creates a new team from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.TeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    TeamsApi apiInstance = new TeamsApi(defaultClient);
    NewTeam newTeam = new NewTeam(); // NewTeam | 
    try {
      TeamResponse result = apiInstance.createTeam(newTeam);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TeamsApi#createTeam");
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
| **newTeam** | [**NewTeam**](NewTeam.md)|  | |

### Return type

[**TeamResponse**](TeamResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | team created |  -  |
| **422** | invalid association |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteTeam"></a>
# **deleteTeam**
> TeamResponse deleteTeam(id)

Delete a team

Delete a specific team by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.TeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    TeamsApi apiInstance = new TeamsApi(defaultClient);
    GetTeamIdParameter id = new GetTeamIdParameter(); // GetTeamIdParameter | 
    try {
      TeamResponse result = apiInstance.deleteTeam(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TeamsApi#deleteTeam");
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
| **id** | [**GetTeamIdParameter**](.md)|  | |

### Return type

[**TeamResponse**](TeamResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | team deleted |  -  |
| **404** | resource not found |  -  |

<a id="getTeam"></a>
# **getTeam**
> TeamResponse getTeam(id, include)

Retrieves a team

Retrieves a specific team by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.TeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    TeamsApi apiInstance = new TeamsApi(defaultClient);
    GetTeamIdParameter id = new GetTeamIdParameter(); // GetTeamIdParameter | 
    String include = "users"; // String | comma separated if needed. eg: users
    try {
      TeamResponse result = apiInstance.getTeam(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TeamsApi#getTeam");
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
| **id** | [**GetTeamIdParameter**](.md)|  | |
| **include** | **String**| comma separated if needed. eg: users | [optional] [enum: users, schedules, escalation_policies] |

### Return type

[**TeamResponse**](TeamResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | team found by slug |  -  |
| **404** | resource not found |  -  |

<a id="getTeamIncidentsChart"></a>
# **getTeamIncidentsChart**
> IncidentsChartResponse getTeamIncidentsChart(id, period)

Get team incidents chart

Get team incidents chart

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.TeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    TeamsApi apiInstance = new TeamsApi(defaultClient);
    String id = "id_example"; // String | 
    String period = "period_example"; // String | 
    try {
      IncidentsChartResponse result = apiInstance.getTeamIncidentsChart(id, period);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TeamsApi#getTeamIncidentsChart");
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
| **id** | **String**|  | |
| **period** | **String**|  | |

### Return type

[**IncidentsChartResponse**](IncidentsChartResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |
| **404** | resource not found |  -  |

<a id="listGroupCatalogProperties"></a>
# **listGroupCatalogProperties**
> CatalogPropertyList listGroupCatalogProperties(include, sort, pageNumber, pageSize, filterSlug, filterName, filterKind, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List Catalog Properties

List Group Catalog Properties

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.TeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    TeamsApi apiInstance = new TeamsApi(defaultClient);
    String include = "catalog"; // String | comma separated if needed. eg: catalog
    String sort = "created_at"; // String | comma separated if needed. eg: created_at,updated_at
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterKind = "filterKind_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      CatalogPropertyList result = apiInstance.listGroupCatalogProperties(include, sort, pageNumber, pageSize, filterSlug, filterName, filterKind, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TeamsApi#listGroupCatalogProperties");
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
| **include** | **String**| comma separated if needed. eg: catalog | [optional] [enum: catalog] |
| **sort** | **String**| comma separated if needed. eg: created_at,updated_at | [optional] [enum: created_at, -created_at, updated_at, -updated_at, position, -position] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterKind** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**CatalogPropertyList**](CatalogPropertyList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="listTeams"></a>
# **listTeams**
> TeamList listTeams(include, pageNumber, pageSize, filterSearch, filterSlug, filterName, filterBackstageId, filterCortexId, filterOpslevelId, filterExternalId, filterColor, filterAlertBroadcastEnabled, filterIncidentBroadcastEnabled, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterSlugEq, filterSlugNotEq, filterSlugIn, filterSlugNotIn, filterNameEq, filterNameNotEq, filterNameIn, filterNameNotIn, filterColorEq, filterColorNotEq, filterColorIn, filterColorNotIn, filterAlertBroadcastEnabledEq, filterAlertBroadcastEnabledNotEq, filterAlertBroadcastEnabledIn, filterAlertBroadcastEnabledNotIn, filterIncidentBroadcastEnabledEq, filterIncidentBroadcastEnabledNotEq, filterIncidentBroadcastEnabledIn, filterIncidentBroadcastEnabledNotIn, sort)

List teams

List teams

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.TeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    TeamsApi apiInstance = new TeamsApi(defaultClient);
    String include = "users"; // String | comma separated if needed. eg: users
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterBackstageId = "filterBackstageId_example"; // String | 
    String filterCortexId = "filterCortexId_example"; // String | 
    String filterOpslevelId = "filterOpslevelId_example"; // String | 
    String filterExternalId = "filterExternalId_example"; // String | 
    String filterColor = "filterColor_example"; // String | 
    Boolean filterAlertBroadcastEnabled = true; // Boolean | 
    Boolean filterIncidentBroadcastEnabled = true; // Boolean | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String filterSlugEq = "filterSlugEq_example"; // String | 
    String filterSlugNotEq = "filterSlugNotEq_example"; // String | 
    String filterSlugIn = "filterSlugIn_example"; // String | 
    String filterSlugNotIn = "filterSlugNotIn_example"; // String | 
    String filterNameEq = "filterNameEq_example"; // String | 
    String filterNameNotEq = "filterNameNotEq_example"; // String | 
    String filterNameIn = "filterNameIn_example"; // String | 
    String filterNameNotIn = "filterNameNotIn_example"; // String | 
    String filterColorEq = "filterColorEq_example"; // String | 
    String filterColorNotEq = "filterColorNotEq_example"; // String | 
    String filterColorIn = "filterColorIn_example"; // String | 
    String filterColorNotIn = "filterColorNotIn_example"; // String | 
    String filterAlertBroadcastEnabledEq = "filterAlertBroadcastEnabledEq_example"; // String | 
    String filterAlertBroadcastEnabledNotEq = "filterAlertBroadcastEnabledNotEq_example"; // String | 
    String filterAlertBroadcastEnabledIn = "filterAlertBroadcastEnabledIn_example"; // String | 
    String filterAlertBroadcastEnabledNotIn = "filterAlertBroadcastEnabledNotIn_example"; // String | 
    String filterIncidentBroadcastEnabledEq = "filterIncidentBroadcastEnabledEq_example"; // String | 
    String filterIncidentBroadcastEnabledNotEq = "filterIncidentBroadcastEnabledNotEq_example"; // String | 
    String filterIncidentBroadcastEnabledIn = "filterIncidentBroadcastEnabledIn_example"; // String | 
    String filterIncidentBroadcastEnabledNotIn = "filterIncidentBroadcastEnabledNotIn_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      TeamList result = apiInstance.listTeams(include, pageNumber, pageSize, filterSearch, filterSlug, filterName, filterBackstageId, filterCortexId, filterOpslevelId, filterExternalId, filterColor, filterAlertBroadcastEnabled, filterIncidentBroadcastEnabled, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterSlugEq, filterSlugNotEq, filterSlugIn, filterSlugNotIn, filterNameEq, filterNameNotEq, filterNameIn, filterNameNotIn, filterColorEq, filterColorNotEq, filterColorIn, filterColorNotIn, filterAlertBroadcastEnabledEq, filterAlertBroadcastEnabledNotEq, filterAlertBroadcastEnabledIn, filterAlertBroadcastEnabledNotIn, filterIncidentBroadcastEnabledEq, filterIncidentBroadcastEnabledNotEq, filterIncidentBroadcastEnabledIn, filterIncidentBroadcastEnabledNotIn, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TeamsApi#listTeams");
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
| **include** | **String**| comma separated if needed. eg: users | [optional] [enum: users, schedules, escalation_policies] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSearch** | **String**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterBackstageId** | **String**|  | [optional] |
| **filterCortexId** | **String**|  | [optional] |
| **filterOpslevelId** | **String**|  | [optional] |
| **filterExternalId** | **String**|  | [optional] |
| **filterColor** | **String**|  | [optional] |
| **filterAlertBroadcastEnabled** | **Boolean**|  | [optional] |
| **filterIncidentBroadcastEnabled** | **Boolean**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **filterSlugEq** | **String**|  | [optional] |
| **filterSlugNotEq** | **String**|  | [optional] |
| **filterSlugIn** | **String**|  | [optional] |
| **filterSlugNotIn** | **String**|  | [optional] |
| **filterNameEq** | **String**|  | [optional] |
| **filterNameNotEq** | **String**|  | [optional] |
| **filterNameIn** | **String**|  | [optional] |
| **filterNameNotIn** | **String**|  | [optional] |
| **filterColorEq** | **String**|  | [optional] |
| **filterColorNotEq** | **String**|  | [optional] |
| **filterColorIn** | **String**|  | [optional] |
| **filterColorNotIn** | **String**|  | [optional] |
| **filterAlertBroadcastEnabledEq** | **String**|  | [optional] |
| **filterAlertBroadcastEnabledNotEq** | **String**|  | [optional] |
| **filterAlertBroadcastEnabledIn** | **String**|  | [optional] |
| **filterAlertBroadcastEnabledNotIn** | **String**|  | [optional] |
| **filterIncidentBroadcastEnabledEq** | **String**|  | [optional] |
| **filterIncidentBroadcastEnabledNotEq** | **String**|  | [optional] |
| **filterIncidentBroadcastEnabledIn** | **String**|  | [optional] |
| **filterIncidentBroadcastEnabledNotIn** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**TeamList**](TeamList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateTeam"></a>
# **updateTeam**
> TeamResponse updateTeam(id, updateTeam)

Update a team

Update a specific team by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.TeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    TeamsApi apiInstance = new TeamsApi(defaultClient);
    GetTeamIdParameter id = new GetTeamIdParameter(); // GetTeamIdParameter | 
    UpdateTeam updateTeam = new UpdateTeam(); // UpdateTeam | 
    try {
      TeamResponse result = apiInstance.updateTeam(id, updateTeam);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TeamsApi#updateTeam");
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
| **id** | [**GetTeamIdParameter**](.md)|  | |
| **updateTeam** | [**UpdateTeam**](UpdateTeam.md)|  | |

### Return type

[**TeamResponse**](TeamResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | team updated |  -  |
| **404** | resource not found |  -  |

