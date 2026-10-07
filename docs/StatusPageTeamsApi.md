# StatusPageTeamsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createStatusPageTeam**](StatusPageTeamsApi.md#createStatusPageTeam) | **POST** /v1/status-pages/{status_page_id}/teams | Grants a team access to a status page |
| [**deleteStatusPageTeam**](StatusPageTeamsApi.md#deleteStatusPageTeam) | **DELETE** /v1/status-pages/{status_page_id}/teams/{id} | Removes a team&#39;s access to a status page |
| [**getStatusPageTeam**](StatusPageTeamsApi.md#getStatusPageTeam) | **GET** /v1/status-pages/{status_page_id}/teams/{id} | Retrieves a status page team assignment |
| [**listStatusPageTeams**](StatusPageTeamsApi.md#listStatusPageTeams) | **GET** /v1/status-pages/{status_page_id}/teams | Lists the teams with access to a status page |
| [**updateStatusPageTeam**](StatusPageTeamsApi.md#updateStatusPageTeam) | **PUT** /v1/status-pages/{status_page_id}/teams/{id} | Updates a status page team assignment |


<a id="createStatusPageTeam"></a>
# **createStatusPageTeam**
> StatusPageTeamResponse createStatusPageTeam(statusPageId, newStatusPageTeam)

Grants a team access to a status page

Assigns a team to a status page. Members of the team get the chosen permission level on that page in addition to their role. Requires an owner or admin role.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageTeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageTeamsApi apiInstance = new StatusPageTeamsApi(defaultClient);
    String statusPageId = "statusPageId_example"; // String | 
    NewStatusPageTeam newStatusPageTeam = new NewStatusPageTeam(); // NewStatusPageTeam | 
    try {
      StatusPageTeamResponse result = apiInstance.createStatusPageTeam(statusPageId, newStatusPageTeam);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageTeamsApi#createStatusPageTeam");
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
| **statusPageId** | **String**|  | |
| **newStatusPageTeam** | [**NewStatusPageTeam**](NewStatusPageTeam.md)|  | |

### Return type

[**StatusPageTeamResponse**](StatusPageTeamResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | status page team assignment created |  -  |
| **422** | team is already assigned |  -  |
| **404** | caller is not an owner or admin |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteStatusPageTeam"></a>
# **deleteStatusPageTeam**
> StatusPageTeamResponse deleteStatusPageTeam(statusPageId, id)

Removes a team&#39;s access to a status page

Removes a team from a status page. Its members lose the page access the assignment granted on their next request. Requires an owner or admin role.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageTeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageTeamsApi apiInstance = new StatusPageTeamsApi(defaultClient);
    String statusPageId = "statusPageId_example"; // String | 
    String id = "id_example"; // String | 
    try {
      StatusPageTeamResponse result = apiInstance.deleteStatusPageTeam(statusPageId, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageTeamsApi#deleteStatusPageTeam");
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
| **statusPageId** | **String**|  | |
| **id** | **String**|  | |

### Return type

[**StatusPageTeamResponse**](StatusPageTeamResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | status page team assignment deleted |  -  |
| **404** | resource not found |  -  |

<a id="getStatusPageTeam"></a>
# **getStatusPageTeam**
> StatusPageTeamResponse getStatusPageTeam(statusPageId, id)

Retrieves a status page team assignment

Retrieves a specific status page team assignment by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageTeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageTeamsApi apiInstance = new StatusPageTeamsApi(defaultClient);
    String statusPageId = "statusPageId_example"; // String | 
    String id = "id_example"; // String | 
    try {
      StatusPageTeamResponse result = apiInstance.getStatusPageTeam(statusPageId, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageTeamsApi#getStatusPageTeam");
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
| **statusPageId** | **String**|  | |
| **id** | **String**|  | |

### Return type

[**StatusPageTeamResponse**](StatusPageTeamResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | status page team assignment found |  -  |
| **404** | resource not found |  -  |

<a id="listStatusPageTeams"></a>
# **listStatusPageTeams**
> StatusPageTeamList listStatusPageTeams(statusPageId, include, pageNumber, pageSize)

Lists the teams with access to a status page

Lists the teams assigned to a status page, oldest first

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageTeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageTeamsApi apiInstance = new StatusPageTeamsApi(defaultClient);
    String statusPageId = "statusPageId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      StatusPageTeamList result = apiInstance.listStatusPageTeams(statusPageId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageTeamsApi#listStatusPageTeams");
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
| **statusPageId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**StatusPageTeamList**](StatusPageTeamList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateStatusPageTeam"></a>
# **updateStatusPageTeam**
> StatusPageTeamResponse updateStatusPageTeam(statusPageId, id, updateStatusPageTeam)

Updates a status page team assignment

Changes the permission level of a team on a status page. Requires an owner or admin role. To move the grant to another team, delete it and create a new one.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageTeamsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageTeamsApi apiInstance = new StatusPageTeamsApi(defaultClient);
    String statusPageId = "statusPageId_example"; // String | 
    String id = "id_example"; // String | 
    UpdateStatusPageTeam updateStatusPageTeam = new UpdateStatusPageTeam(); // UpdateStatusPageTeam | 
    try {
      StatusPageTeamResponse result = apiInstance.updateStatusPageTeam(statusPageId, id, updateStatusPageTeam);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageTeamsApi#updateStatusPageTeam");
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
| **statusPageId** | **String**|  | |
| **id** | **String**|  | |
| **updateStatusPageTeam** | [**UpdateStatusPageTeam**](UpdateStatusPageTeam.md)|  | |

### Return type

[**StatusPageTeamResponse**](StatusPageTeamResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | status page team assignment updated |  -  |
| **404** | resource not found |  -  |

