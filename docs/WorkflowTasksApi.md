# WorkflowTasksApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createWorkflowTask**](WorkflowTasksApi.md#createWorkflowTask) | **POST** /v1/workflows/{workflow_id}/workflow_tasks | Creates a workflow task |
| [**deleteWorkflowTask**](WorkflowTasksApi.md#deleteWorkflowTask) | **DELETE** /v1/workflow_tasks/{id} | Delete a workflow task |
| [**getWorkflowTask**](WorkflowTasksApi.md#getWorkflowTask) | **GET** /v1/workflow_tasks/{id} | Retrieves a workflow task |
| [**listWorkflowTasks**](WorkflowTasksApi.md#listWorkflowTasks) | **GET** /v1/workflows/{workflow_id}/workflow_tasks | List workflow tasks |
| [**updateWorkflowTask**](WorkflowTasksApi.md#updateWorkflowTask) | **PUT** /v1/workflow_tasks/{id} | Update a workflow task |


<a id="createWorkflowTask"></a>
# **createWorkflowTask**
> WorkflowTaskResponse createWorkflowTask(workflowId, newWorkflowTask)

Creates a workflow task

Creates a new workflow task from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowTasksApi apiInstance = new WorkflowTasksApi(defaultClient);
    String workflowId = "workflowId_example"; // String | 
    NewWorkflowTask newWorkflowTask = new NewWorkflowTask(); // NewWorkflowTask | 
    try {
      WorkflowTaskResponse result = apiInstance.createWorkflowTask(workflowId, newWorkflowTask);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowTasksApi#createWorkflowTask");
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
| **workflowId** | **String**|  | |
| **newWorkflowTask** | [**NewWorkflowTask**](NewWorkflowTask.md)|  | |

### Return type

[**WorkflowTaskResponse**](WorkflowTaskResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | workflow task created |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteWorkflowTask"></a>
# **deleteWorkflowTask**
> WorkflowTaskResponse deleteWorkflowTask(id)

Delete a workflow task

Delete a specific workflow task by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowTasksApi apiInstance = new WorkflowTasksApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WorkflowTaskResponse result = apiInstance.deleteWorkflowTask(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowTasksApi#deleteWorkflowTask");
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

[**WorkflowTaskResponse**](WorkflowTaskResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | workflow_task deleted |  -  |
| **404** | resource not found |  -  |

<a id="getWorkflowTask"></a>
# **getWorkflowTask**
> WorkflowTaskResponse getWorkflowTask(id)

Retrieves a workflow task

Retrieves a specific workflow_task by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowTasksApi apiInstance = new WorkflowTasksApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WorkflowTaskResponse result = apiInstance.getWorkflowTask(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowTasksApi#getWorkflowTask");
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

[**WorkflowTaskResponse**](WorkflowTaskResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | workflow_task found |  -  |
| **404** | resource not found |  -  |

<a id="listWorkflowTasks"></a>
# **listWorkflowTasks**
> WorkflowTaskList listWorkflowTasks(workflowId, include, pageNumber, pageSize, filterSearch, filterName, filterSlug)

List workflow tasks

List workflow tasks

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowTasksApi apiInstance = new WorkflowTasksApi(defaultClient);
    String workflowId = "workflowId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    try {
      WorkflowTaskList result = apiInstance.listWorkflowTasks(workflowId, include, pageNumber, pageSize, filterSearch, filterName, filterSlug);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowTasksApi#listWorkflowTasks");
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
| **workflowId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSearch** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |

### Return type

[**WorkflowTaskList**](WorkflowTaskList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateWorkflowTask"></a>
# **updateWorkflowTask**
> WorkflowTaskResponse updateWorkflowTask(id, updateWorkflowTask)

Update a workflow task

Update a specific workflow task by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowTasksApi apiInstance = new WorkflowTasksApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateWorkflowTask updateWorkflowTask = new UpdateWorkflowTask(); // UpdateWorkflowTask | 
    try {
      WorkflowTaskResponse result = apiInstance.updateWorkflowTask(id, updateWorkflowTask);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowTasksApi#updateWorkflowTask");
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
| **updateWorkflowTask** | [**UpdateWorkflowTask**](UpdateWorkflowTask.md)|  | |

### Return type

[**WorkflowTaskResponse**](WorkflowTaskResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | workflow_task updated |  -  |
| **404** | resource not found |  -  |

