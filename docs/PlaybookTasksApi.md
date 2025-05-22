# PlaybookTasksApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createPlaybookTask**](PlaybookTasksApi.md#createPlaybookTask) | **POST** /v1/playbooks/{playbook_id}/playbook_tasks | Creates a playbook task |
| [**deletePlaybookTask**](PlaybookTasksApi.md#deletePlaybookTask) | **DELETE** /v1/playbook_tasks/{id} | Delete a playbook task |
| [**getPlaybookTask**](PlaybookTasksApi.md#getPlaybookTask) | **GET** /v1/playbook_tasks/{id} | Retrieves a playbook task |
| [**listPlaybookTasks**](PlaybookTasksApi.md#listPlaybookTasks) | **GET** /v1/playbooks/{playbook_id}/playbook_tasks | List playbook tasks |
| [**updatePlaybookTask**](PlaybookTasksApi.md#updatePlaybookTask) | **PUT** /v1/playbook_tasks/{id} | Update a playbook task |


<a id="createPlaybookTask"></a>
# **createPlaybookTask**
> PlaybookTaskResponse createPlaybookTask(playbookId, newPlaybookTask)

Creates a playbook task

Creates a new task from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PlaybookTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PlaybookTasksApi apiInstance = new PlaybookTasksApi(defaultClient);
    String playbookId = "playbookId_example"; // String | 
    NewPlaybookTask newPlaybookTask = new NewPlaybookTask(); // NewPlaybookTask | 
    try {
      PlaybookTaskResponse result = apiInstance.createPlaybookTask(playbookId, newPlaybookTask);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PlaybookTasksApi#createPlaybookTask");
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
| **playbookId** | **String**|  | |
| **newPlaybookTask** | [**NewPlaybookTask**](NewPlaybookTask.md)|  | |

### Return type

[**PlaybookTaskResponse**](PlaybookTaskResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | playbook_task created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deletePlaybookTask"></a>
# **deletePlaybookTask**
> PlaybookTaskResponse deletePlaybookTask(id)

Delete a playbook task

Delete a specific playbook task by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PlaybookTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PlaybookTasksApi apiInstance = new PlaybookTasksApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      PlaybookTaskResponse result = apiInstance.deletePlaybookTask(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PlaybookTasksApi#deletePlaybookTask");
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

[**PlaybookTaskResponse**](PlaybookTaskResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | playbook_task deleted |  -  |
| **404** | resource not found |  -  |

<a id="getPlaybookTask"></a>
# **getPlaybookTask**
> PlaybookTaskResponse getPlaybookTask(id)

Retrieves a playbook task

Retrieves a specific playbook_task by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PlaybookTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PlaybookTasksApi apiInstance = new PlaybookTasksApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      PlaybookTaskResponse result = apiInstance.getPlaybookTask(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PlaybookTasksApi#getPlaybookTask");
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

[**PlaybookTaskResponse**](PlaybookTaskResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | playbook_task found |  -  |
| **404** | resource not found |  -  |

<a id="listPlaybookTasks"></a>
# **listPlaybookTasks**
> PlaybookTaskList listPlaybookTasks(playbookId, include, pageNumber, pageSize)

List playbook tasks

List playbook tasks

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PlaybookTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PlaybookTasksApi apiInstance = new PlaybookTasksApi(defaultClient);
    String playbookId = "playbookId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      PlaybookTaskList result = apiInstance.listPlaybookTasks(playbookId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PlaybookTasksApi#listPlaybookTasks");
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
| **playbookId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**PlaybookTaskList**](PlaybookTaskList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updatePlaybookTask"></a>
# **updatePlaybookTask**
> PlaybookTaskResponse updatePlaybookTask(id, updatePlaybookTask)

Update a playbook task

Update a specific playbook task by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PlaybookTasksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PlaybookTasksApi apiInstance = new PlaybookTasksApi(defaultClient);
    String id = "id_example"; // String | 
    UpdatePlaybookTask updatePlaybookTask = new UpdatePlaybookTask(); // UpdatePlaybookTask | 
    try {
      PlaybookTaskResponse result = apiInstance.updatePlaybookTask(id, updatePlaybookTask);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PlaybookTasksApi#updatePlaybookTask");
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
| **updatePlaybookTask** | [**UpdatePlaybookTask**](UpdatePlaybookTask.md)|  | |

### Return type

[**PlaybookTaskResponse**](PlaybookTaskResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | playbook_task updated |  -  |
| **404** | resource not found |  -  |

