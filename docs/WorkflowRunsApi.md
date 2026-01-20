# WorkflowRunsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createWorkflowRun**](WorkflowRunsApi.md#createWorkflowRun) | **POST** /v1/workflows/{workflow_id}/workflow_runs | Creates a workflow run |
| [**listWorkflowRuns**](WorkflowRunsApi.md#listWorkflowRuns) | **GET** /v1/workflows/{workflow_id}/workflow_runs | List workflow runs |


<a id="createWorkflowRun"></a>
# **createWorkflowRun**
> WorkflowRunResponse createWorkflowRun(workflowId, newWorkflowRun)

Creates a workflow run

Creates a new workflow run from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowRunsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowRunsApi apiInstance = new WorkflowRunsApi(defaultClient);
    String workflowId = "workflowId_example"; // String | 
    NewWorkflowRun newWorkflowRun = new NewWorkflowRun(); // NewWorkflowRun | 
    try {
      WorkflowRunResponse result = apiInstance.createWorkflowRun(workflowId, newWorkflowRun);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowRunsApi#createWorkflowRun");
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
| **newWorkflowRun** | [**NewWorkflowRun**](NewWorkflowRun.md)|  | |

### Return type

[**WorkflowRunResponse**](WorkflowRunResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | workflow run created |  -  |
| **422** | workflow run not created |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="listWorkflowRuns"></a>
# **listWorkflowRuns**
> WorkflowRunsList listWorkflowRuns(workflowId, include, pageNumber, pageSize, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List workflow runs

List workflow runs

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowRunsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowRunsApi apiInstance = new WorkflowRunsApi(defaultClient);
    String workflowId = "workflowId_example"; // String | 
    String include = "genius_task_runs"; // String | comma separated if needed. eg: genius_task_runs
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      WorkflowRunsList result = apiInstance.listWorkflowRuns(workflowId, include, pageNumber, pageSize, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowRunsApi#listWorkflowRuns");
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
| **include** | **String**| comma separated if needed. eg: genius_task_runs | [optional] [enum: genius_task_runs] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**WorkflowRunsList**](WorkflowRunsList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success with date filters using gte with timezone |  -  |

