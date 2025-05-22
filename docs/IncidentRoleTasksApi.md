# IncidentRoleTasksApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIncidentRoleTask**](IncidentRoleTasksApi.md#createIncidentRoleTask) | **POST** /v1/incident_roles/{incident_role_id}/incident_role_tasks | Creates an incident role task |
| [**deleteIncidentRoleTask**](IncidentRoleTasksApi.md#deleteIncidentRoleTask) | **DELETE** /v1/incident_role_tasks/{id} | Delete an incident role task |
| [**getIncidentRoleTask**](IncidentRoleTasksApi.md#getIncidentRoleTask) | **GET** /v1/incident_role_tasks/{id} | Retrieves an incident role task |
| [**listIncidentRoleTasks**](IncidentRoleTasksApi.md#listIncidentRoleTasks) | **GET** /v1/incident_roles/{incident_role_id}/incident_role_tasks | List incident role tasks |
| [**updateIncidentRoleTask**](IncidentRoleTasksApi.md#updateIncidentRoleTask) | **PUT** /v1/incident_role_tasks/{id} | Update an incident role task |


<a id="createIncidentRoleTask"></a>
# **createIncidentRoleTask**
> IncidentRoleTaskResponse createIncidentRoleTask(incidentRoleId, newIncidentRoleTask)

Creates an incident role task

Creates a new task from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentRoleTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentRoleTasksApi apiInstance = new IncidentRoleTasksApi(defaultClient);
    String incidentRoleId = "incidentRoleId_example"; // String | 
    NewIncidentRoleTask newIncidentRoleTask = new NewIncidentRoleTask(); // NewIncidentRoleTask | 
    try {
      IncidentRoleTaskResponse result = apiInstance.createIncidentRoleTask(incidentRoleId, newIncidentRoleTask);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentRoleTasksApi#createIncidentRoleTask");
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
| **incidentRoleId** | **String**|  | |
| **newIncidentRoleTask** | [**NewIncidentRoleTask**](NewIncidentRoleTask.md)|  | |

### Return type

[**IncidentRoleTaskResponse**](IncidentRoleTaskResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident_role_task created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteIncidentRoleTask"></a>
# **deleteIncidentRoleTask**
> IncidentRoleTaskResponse deleteIncidentRoleTask(id)

Delete an incident role task

Delete a specific incident_role task by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentRoleTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentRoleTasksApi apiInstance = new IncidentRoleTasksApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentRoleTaskResponse result = apiInstance.deleteIncidentRoleTask(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentRoleTasksApi#deleteIncidentRoleTask");
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

[**IncidentRoleTaskResponse**](IncidentRoleTaskResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_role_task deleted |  -  |
| **404** | resource not found |  -  |

<a id="getIncidentRoleTask"></a>
# **getIncidentRoleTask**
> IncidentRoleTaskResponse getIncidentRoleTask(id)

Retrieves an incident role task

Retrieves a specific incident_role_task by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentRoleTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentRoleTasksApi apiInstance = new IncidentRoleTasksApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentRoleTaskResponse result = apiInstance.getIncidentRoleTask(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentRoleTasksApi#getIncidentRoleTask");
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

[**IncidentRoleTaskResponse**](IncidentRoleTaskResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_role_task found |  -  |
| **404** | resource not found |  -  |

<a id="listIncidentRoleTasks"></a>
# **listIncidentRoleTasks**
> IncidentRoleTaskList listIncidentRoleTasks(incidentRoleId, include, pageNumber, pageSize)

List incident role tasks

List incident_role tasks

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentRoleTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentRoleTasksApi apiInstance = new IncidentRoleTasksApi(defaultClient);
    String incidentRoleId = "incidentRoleId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      IncidentRoleTaskList result = apiInstance.listIncidentRoleTasks(incidentRoleId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentRoleTasksApi#listIncidentRoleTasks");
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
| **incidentRoleId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**IncidentRoleTaskList**](IncidentRoleTaskList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateIncidentRoleTask"></a>
# **updateIncidentRoleTask**
> IncidentRoleTaskResponse updateIncidentRoleTask(id, updateIncidentRoleTask)

Update an incident role task

Update a specific incident_role task by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentRoleTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentRoleTasksApi apiInstance = new IncidentRoleTasksApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateIncidentRoleTask updateIncidentRoleTask = new UpdateIncidentRoleTask(); // UpdateIncidentRoleTask | 
    try {
      IncidentRoleTaskResponse result = apiInstance.updateIncidentRoleTask(id, updateIncidentRoleTask);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentRoleTasksApi#updateIncidentRoleTask");
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
| **updateIncidentRoleTask** | [**UpdateIncidentRoleTask**](UpdateIncidentRoleTask.md)|  | |

### Return type

[**IncidentRoleTaskResponse**](IncidentRoleTaskResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_role_task updated |  -  |
| **404** | resource not found |  -  |

