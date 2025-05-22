# WorkflowsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createWorkflow**](WorkflowsApi.md#createWorkflow) | **POST** /v1/workflows | Creates a workflow |
| [**deleteWorkflow**](WorkflowsApi.md#deleteWorkflow) | **DELETE** /v1/workflows/{id} | Delete a workflow |
| [**getWorkflow**](WorkflowsApi.md#getWorkflow) | **GET** /v1/workflows/{id} | Retrieves a workflow |
| [**listWorkflows**](WorkflowsApi.md#listWorkflows) | **GET** /v1/workflows | List workflows |
| [**updateWorkflow**](WorkflowsApi.md#updateWorkflow) | **PUT** /v1/workflows/{id} | Update a workflow |


<a id="createWorkflow"></a>
# **createWorkflow**
> WorkflowResponse createWorkflow(newWorkflow)

Creates a workflow

Creates a new workflow from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowsApi apiInstance = new WorkflowsApi(defaultClient);
    NewWorkflow newWorkflow = new NewWorkflow(); // NewWorkflow | 
    try {
      WorkflowResponse result = apiInstance.createWorkflow(newWorkflow);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowsApi#createWorkflow");
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
| **newWorkflow** | [**NewWorkflow**](NewWorkflow.md)|  | |

### Return type

[**WorkflowResponse**](WorkflowResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | admins can set &#39;locked&#39; while creating a workflow |  -  |
| **401** | responds with unauthorized for invalid token |  -  |
| **403** | non-admins can&#39;t set &#39;locked&#39; while creating a workflow |  -  |

<a id="deleteWorkflow"></a>
# **deleteWorkflow**
> WorkflowResponse deleteWorkflow(id)

Delete a workflow

Delete a specific workflow by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowsApi apiInstance = new WorkflowsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WorkflowResponse result = apiInstance.deleteWorkflow(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowsApi#deleteWorkflow");
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

[**WorkflowResponse**](WorkflowResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | admin can destroy locked workflow |  -  |
| **404** | non-admin can&#39;t destroy locked workflow |  -  |

<a id="getWorkflow"></a>
# **getWorkflow**
> WorkflowResponse getWorkflow(id, include)

Retrieves a workflow

Retrieves a specific workflow by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowsApi apiInstance = new WorkflowsApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "form_field_conditions"; // String | comma separated if needed. eg: form_field_conditions,genius_tasks
    try {
      WorkflowResponse result = apiInstance.getWorkflow(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowsApi#getWorkflow");
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
| **include** | **String**| comma separated if needed. eg: form_field_conditions,genius_tasks | [optional] [enum: form_field_conditions, genius_tasks, genius_workflow_runs] |

### Return type

[**WorkflowResponse**](WorkflowResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | workflow found |  -  |
| **404** | resource not found |  -  |

<a id="listWorkflows"></a>
# **listWorkflows**
> WorkflowList listWorkflows(include, sort, pageNumber, pageSize, filterSearch, filterName, filterSlug, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List workflows

List workflows

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowsApi apiInstance = new WorkflowsApi(defaultClient);
    String include = "form_field_conditions"; // String | comma separated if needed. eg: form_field_conditions,genius_tasks
    String sort = "created_at"; // String | comma separated if needed. eg: created_at,updated_at
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      WorkflowList result = apiInstance.listWorkflows(include, sort, pageNumber, pageSize, filterSearch, filterName, filterSlug, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowsApi#listWorkflows");
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
| **include** | **String**| comma separated if needed. eg: form_field_conditions,genius_tasks | [optional] [enum: form_field_conditions, genius_tasks, genius_workflow_runs] |
| **sort** | **String**| comma separated if needed. eg: created_at,updated_at | [optional] [enum: created_at, -created_at, updated_at, -updated_at, position, -position] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSearch** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**WorkflowList**](WorkflowList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateWorkflow"></a>
# **updateWorkflow**
> WorkflowResponse updateWorkflow(id, updateWorkflow)

Update a workflow

Update a specific workflow by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowsApi apiInstance = new WorkflowsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateWorkflow updateWorkflow = new UpdateWorkflow(); // UpdateWorkflow | 
    try {
      WorkflowResponse result = apiInstance.updateWorkflow(id, updateWorkflow);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowsApi#updateWorkflow");
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
| **updateWorkflow** | [**UpdateWorkflow**](UpdateWorkflow.md)|  | |

### Return type

[**WorkflowResponse**](WorkflowResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | admin can update &#39;locked&#39; attribute |  -  |
| **404** | non-admin can&#39;t update locked workflow |  -  |
| **403** | non-admin can&#39;t update &#39;locked&#39; attribute |  -  |

