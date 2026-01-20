# IncidentRetrospectivesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**listIncidentPostMortems**](IncidentRetrospectivesApi.md#listIncidentPostMortems) | **GET** /v1/post_mortems | List incident retrospectives |
| [**listIncidentPostmortem**](IncidentRetrospectivesApi.md#listIncidentPostmortem) | **GET** /v1/post_mortems/{id} | Retrieves an incident retrospective |
| [**updateIncidentPostmortem**](IncidentRetrospectivesApi.md#updateIncidentPostmortem) | **PUT** /v1/post_mortems/{id} | Update an incident retrospective |


<a id="listIncidentPostMortems"></a>
# **listIncidentPostMortems**
> IncidentPostMortemList listIncidentPostMortems(include, pageNumber, pageSize, filterSearch, filterStatus, filterSeverity, filterType, filterUserId, filterTypes, filterTypeIds, filterEnvironments, filterEnvironmentIds, filterFunctionalities, filterFunctionalityIds, filterServices, filterServiceIds, filterTeams, filterTeamIds, filterCauses, filterCauseIds, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterStartedAtGt, filterStartedAtGte, filterStartedAtLt, filterStartedAtLte, filterMitigatedAtGt, filterMitigatedAtGte, filterMitigatedAtLt, filterMitigatedAtLte, filterResolvedAtGt, filterResolvedAtGte, filterResolvedAtLt, filterResolvedAtLte, sort)

List incident retrospectives

List incident retrospectives

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentRetrospectivesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentRetrospectivesApi apiInstance = new IncidentRetrospectivesApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterStatus = "filterStatus_example"; // String | 
    String filterSeverity = "filterSeverity_example"; // String | 
    String filterType = "filterType_example"; // String | 
    Integer filterUserId = 56; // Integer | 
    String filterTypes = "filterTypes_example"; // String | Filter by incident type slugs
    String filterTypeIds = "filterTypeIds_example"; // String | Filter by incident type IDs (UUIDs)
    String filterEnvironments = "filterEnvironments_example"; // String | Filter by environment slugs
    String filterEnvironmentIds = "filterEnvironmentIds_example"; // String | Filter by environment IDs (UUIDs)
    String filterFunctionalities = "filterFunctionalities_example"; // String | Filter by functionality slugs
    String filterFunctionalityIds = "filterFunctionalityIds_example"; // String | Filter by functionality IDs (UUIDs)
    String filterServices = "filterServices_example"; // String | Filter by service slugs
    String filterServiceIds = "filterServiceIds_example"; // String | Filter by service IDs (UUIDs)
    String filterTeams = "filterTeams_example"; // String | Filter by team/group slugs
    String filterTeamIds = "filterTeamIds_example"; // String | Filter by team/group IDs (UUIDs)
    String filterCauses = "filterCauses_example"; // String | Filter by cause slugs
    String filterCauseIds = "filterCauseIds_example"; // String | Filter by cause IDs (UUIDs)
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String filterStartedAtGt = "filterStartedAtGt_example"; // String | 
    String filterStartedAtGte = "filterStartedAtGte_example"; // String | 
    String filterStartedAtLt = "filterStartedAtLt_example"; // String | 
    String filterStartedAtLte = "filterStartedAtLte_example"; // String | 
    String filterMitigatedAtGt = "filterMitigatedAtGt_example"; // String | 
    String filterMitigatedAtGte = "filterMitigatedAtGte_example"; // String | 
    String filterMitigatedAtLt = "filterMitigatedAtLt_example"; // String | 
    String filterMitigatedAtLte = "filterMitigatedAtLte_example"; // String | 
    String filterResolvedAtGt = "filterResolvedAtGt_example"; // String | 
    String filterResolvedAtGte = "filterResolvedAtGte_example"; // String | 
    String filterResolvedAtLt = "filterResolvedAtLt_example"; // String | 
    String filterResolvedAtLte = "filterResolvedAtLte_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      IncidentPostMortemList result = apiInstance.listIncidentPostMortems(include, pageNumber, pageSize, filterSearch, filterStatus, filterSeverity, filterType, filterUserId, filterTypes, filterTypeIds, filterEnvironments, filterEnvironmentIds, filterFunctionalities, filterFunctionalityIds, filterServices, filterServiceIds, filterTeams, filterTeamIds, filterCauses, filterCauseIds, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterStartedAtGt, filterStartedAtGte, filterStartedAtLt, filterStartedAtLte, filterMitigatedAtGt, filterMitigatedAtGte, filterMitigatedAtLt, filterMitigatedAtLte, filterResolvedAtGt, filterResolvedAtGte, filterResolvedAtLt, filterResolvedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentRetrospectivesApi#listIncidentPostMortems");
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
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSearch** | **String**|  | [optional] |
| **filterStatus** | **String**|  | [optional] |
| **filterSeverity** | **String**|  | [optional] |
| **filterType** | **String**|  | [optional] |
| **filterUserId** | **Integer**|  | [optional] |
| **filterTypes** | **String**| Filter by incident type slugs | [optional] |
| **filterTypeIds** | **String**| Filter by incident type IDs (UUIDs) | [optional] |
| **filterEnvironments** | **String**| Filter by environment slugs | [optional] |
| **filterEnvironmentIds** | **String**| Filter by environment IDs (UUIDs) | [optional] |
| **filterFunctionalities** | **String**| Filter by functionality slugs | [optional] |
| **filterFunctionalityIds** | **String**| Filter by functionality IDs (UUIDs) | [optional] |
| **filterServices** | **String**| Filter by service slugs | [optional] |
| **filterServiceIds** | **String**| Filter by service IDs (UUIDs) | [optional] |
| **filterTeams** | **String**| Filter by team/group slugs | [optional] |
| **filterTeamIds** | **String**| Filter by team/group IDs (UUIDs) | [optional] |
| **filterCauses** | **String**| Filter by cause slugs | [optional] |
| **filterCauseIds** | **String**| Filter by cause IDs (UUIDs) | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **filterStartedAtGt** | **String**|  | [optional] |
| **filterStartedAtGte** | **String**|  | [optional] |
| **filterStartedAtLt** | **String**|  | [optional] |
| **filterStartedAtLte** | **String**|  | [optional] |
| **filterMitigatedAtGt** | **String**|  | [optional] |
| **filterMitigatedAtGte** | **String**|  | [optional] |
| **filterMitigatedAtLt** | **String**|  | [optional] |
| **filterMitigatedAtLte** | **String**|  | [optional] |
| **filterResolvedAtGt** | **String**|  | [optional] |
| **filterResolvedAtGte** | **String**|  | [optional] |
| **filterResolvedAtLt** | **String**|  | [optional] |
| **filterResolvedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**IncidentPostMortemList**](IncidentPostMortemList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="listIncidentPostmortem"></a>
# **listIncidentPostmortem**
> IncidentPostMortemResponse listIncidentPostmortem(id)

Retrieves an incident retrospective

List incidents retrospectives

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentRetrospectivesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentRetrospectivesApi apiInstance = new IncidentRetrospectivesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      IncidentPostMortemResponse result = apiInstance.listIncidentPostmortem(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentRetrospectivesApi#listIncidentPostmortem");
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

[**IncidentPostMortemResponse**](IncidentPostMortemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_post_mortem found |  -  |
| **404** | resource not found |  -  |

<a id="updateIncidentPostmortem"></a>
# **updateIncidentPostmortem**
> IncidentPostMortemResponse updateIncidentPostmortem(id, updateIncidentPostMortem)

Update an incident retrospective

Update a specific incident retrospective by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentRetrospectivesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentRetrospectivesApi apiInstance = new IncidentRetrospectivesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    UpdateIncidentPostMortem updateIncidentPostMortem = new UpdateIncidentPostMortem(); // UpdateIncidentPostMortem | 
    try {
      IncidentPostMortemResponse result = apiInstance.updateIncidentPostmortem(id, updateIncidentPostMortem);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentRetrospectivesApi#updateIncidentPostmortem");
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
| **updateIncidentPostMortem** | [**UpdateIncidentPostMortem**](UpdateIncidentPostMortem.md)|  | |

### Return type

[**IncidentPostMortemResponse**](IncidentPostMortemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_post_mortem updated |  -  |
| **404** | resource not found |  -  |

