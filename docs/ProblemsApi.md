# ProblemsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createProblem**](ProblemsApi.md#createProblem) | **POST** /v1/problems | Creates a problem |
| [**deleteProblem**](ProblemsApi.md#deleteProblem) | **DELETE** /v1/problems/{id} | Deletes a problem |
| [**getProblem**](ProblemsApi.md#getProblem) | **GET** /v1/problems/{id} | Retrieves a problem |
| [**linkProblemIncidents**](ProblemsApi.md#linkProblemIncidents) | **POST** /v1/problems/{id}/incidents | Links incidents to a problem |
| [**listProblems**](ProblemsApi.md#listProblems) | **GET** /v1/problems | List problems |
| [**unlinkProblemIncident**](ProblemsApi.md#unlinkProblemIncident) | **DELETE** /v1/problems/{id}/incidents/{incident_id} | Unlinks an incident from a problem |
| [**updateProblem**](ProblemsApi.md#updateProblem) | **PUT** /v1/problems/{id} | Update a problem |


<a id="createProblem"></a>
# **createProblem**
> ProblemResponse createProblem(newProblem)

Creates a problem

Creates a new problem from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ProblemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ProblemsApi apiInstance = new ProblemsApi(defaultClient);
    NewProblem newProblem = new NewProblem(); // NewProblem | 
    try {
      ProblemResponse result = apiInstance.createProblem(newProblem);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProblemsApi#createProblem");
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
| **newProblem** | [**NewProblem**](NewProblem.md)|  | |

### Return type

[**ProblemResponse**](ProblemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | problem created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteProblem"></a>
# **deleteProblem**
> ProblemResponse deleteProblem(id)

Deletes a problem

Soft-deletes a problem

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ProblemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ProblemsApi apiInstance = new ProblemsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      ProblemResponse result = apiInstance.deleteProblem(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProblemsApi#deleteProblem");
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

### Return type

[**ProblemResponse**](ProblemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | problem deleted |  -  |
| **404** | problem not found |  -  |

<a id="getProblem"></a>
# **getProblem**
> ProblemResponse getProblem(id)

Retrieves a problem

API callers lacking access to the problem&#39;s team receive an error. The API deliberately returns 404 rather than 403 so existence is not leaked.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ProblemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ProblemsApi apiInstance = new ProblemsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      ProblemResponse result = apiInstance.getProblem(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProblemsApi#getProblem");
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

### Return type

[**ProblemResponse**](ProblemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | linked incidents hidden without incident read permission |  -  |
| **404** | problem belongs to another team |  -  |

<a id="linkProblemIncidents"></a>
# **linkProblemIncidents**
> ProblemResponse linkProblemIncidents(id, linkIncidents)

Links incidents to a problem

Links one or more incidents to a problem. Accepts &#x60;incident_id&#x60; (single) or &#x60;incident_ids&#x60; (array).

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ProblemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ProblemsApi apiInstance = new ProblemsApi(defaultClient);
    String id = "id_example"; // String | 
    LinkIncidents linkIncidents = new LinkIncidents(); // LinkIncidents | 
    try {
      ProblemResponse result = apiInstance.linkProblemIncidents(id, linkIncidents);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProblemsApi#linkProblemIncidents");
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
| **linkIncidents** | [**LinkIncidents**](LinkIncidents.md)|  | |

### Return type

[**ProblemResponse**](ProblemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident linked |  -  |
| **400** | incident_id missing |  -  |
| **404** | incident not found or inaccessible |  -  |

<a id="listProblems"></a>
# **listProblems**
> ProblemList listProblems(pageNumber, pageSize, sort, filterSearch, filterOwnerUserId, filterOwnerGroupId, filterCreatedByUserId, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterDueDateGt, filterDueDateGte, filterDueDateLt, filterDueDateLte, filterStatusEq, filterStatusNotEq, filterStatusIn, filterStatusNotIn, filterPriorityEq, filterPriorityNotEq, filterPriorityIn, filterPriorityNotIn)

List problems

Sorting by incidents_count would let callers without incident read infer relative hidden incident counts, so it is rejected.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ProblemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ProblemsApi apiInstance = new ProblemsApi(defaultClient);
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String sort = "sort_example"; // String | 
    String filterSearch = "filterSearch_example"; // String | 
    Integer filterOwnerUserId = 56; // Integer | 
    String filterOwnerGroupId = "filterOwnerGroupId_example"; // String | 
    Integer filterCreatedByUserId = 56; // Integer | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String filterDueDateGt = "filterDueDateGt_example"; // String | 
    String filterDueDateGte = "filterDueDateGte_example"; // String | 
    String filterDueDateLt = "filterDueDateLt_example"; // String | 
    String filterDueDateLte = "filterDueDateLte_example"; // String | 
    String filterStatusEq = "filterStatusEq_example"; // String | 
    String filterStatusNotEq = "filterStatusNotEq_example"; // String | 
    String filterStatusIn = "filterStatusIn_example"; // String | 
    String filterStatusNotIn = "filterStatusNotIn_example"; // String | 
    String filterPriorityEq = "filterPriorityEq_example"; // String | 
    String filterPriorityNotEq = "filterPriorityNotEq_example"; // String | 
    String filterPriorityIn = "filterPriorityIn_example"; // String | 
    String filterPriorityNotIn = "filterPriorityNotIn_example"; // String | 
    try {
      ProblemList result = apiInstance.listProblems(pageNumber, pageSize, sort, filterSearch, filterOwnerUserId, filterOwnerGroupId, filterCreatedByUserId, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterDueDateGt, filterDueDateGte, filterDueDateLt, filterDueDateLte, filterStatusEq, filterStatusNotEq, filterStatusIn, filterStatusNotIn, filterPriorityEq, filterPriorityNotEq, filterPriorityIn, filterPriorityNotIn);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProblemsApi#listProblems");
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
| **sort** | **String**|  | [optional] |
| **filterSearch** | **String**|  | [optional] |
| **filterOwnerUserId** | **Integer**|  | [optional] |
| **filterOwnerGroupId** | **String**|  | [optional] |
| **filterCreatedByUserId** | **Integer**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **filterDueDateGt** | **String**|  | [optional] |
| **filterDueDateGte** | **String**|  | [optional] |
| **filterDueDateLt** | **String**|  | [optional] |
| **filterDueDateLte** | **String**|  | [optional] |
| **filterStatusEq** | **String**|  | [optional] |
| **filterStatusNotEq** | **String**|  | [optional] |
| **filterStatusIn** | **String**|  | [optional] |
| **filterStatusNotIn** | **String**|  | [optional] |
| **filterPriorityEq** | **String**|  | [optional] |
| **filterPriorityNotEq** | **String**|  | [optional] |
| **filterPriorityIn** | **String**|  | [optional] |
| **filterPriorityNotIn** | **String**|  | [optional] |

### Return type

[**ProblemList**](ProblemList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | sorted by incidents_count with incident read permission |  -  |
| **400** | incidents_count sort rejected without incident read permission |  -  |
| **404** | problem-management feature flag disabled |  -  |

<a id="unlinkProblemIncident"></a>
# **unlinkProblemIncident**
> ProblemResponse unlinkProblemIncident(id, incidentId)

Unlinks an incident from a problem

Unlinks an incident from a problem

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ProblemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ProblemsApi apiInstance = new ProblemsApi(defaultClient);
    String id = "id_example"; // String | 
    String incidentId = "incidentId_example"; // String | 
    try {
      ProblemResponse result = apiInstance.unlinkProblemIncident(id, incidentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProblemsApi#unlinkProblemIncident");
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
| **incidentId** | **String**|  | |

### Return type

[**ProblemResponse**](ProblemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident unlinked |  -  |
| **404** | incident not linked |  -  |

<a id="updateProblem"></a>
# **updateProblem**
> ProblemResponse updateProblem(id, updateProblem)

Update a problem

When a status transition fails validation, accompanying field updates roll back with it.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ProblemsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ProblemsApi apiInstance = new ProblemsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateProblem updateProblem = new UpdateProblem(); // UpdateProblem | 
    try {
      ProblemResponse result = apiInstance.updateProblem(id, updateProblem);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProblemsApi#updateProblem");
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
| **updateProblem** | [**UpdateProblem**](UpdateProblem.md)|  | |

### Return type

[**ProblemResponse**](ProblemResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | status transition applies other fields atomically |  -  |
| **422** | failed transition does not persist other fields |  -  |
| **404** | problem not found |  -  |

