# WorkflowFormFieldConditionsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createWorkflowFormFieldCondition**](WorkflowFormFieldConditionsApi.md#createWorkflowFormFieldCondition) | **POST** /v1/workflows/{workflow_id}/form_field_conditions | Creates a workflow form field condition |
| [**deleteWorkflowFormFieldCondition**](WorkflowFormFieldConditionsApi.md#deleteWorkflowFormFieldCondition) | **DELETE** /v1/workflow_form_field_conditions/{id} | Delete a workflow_form field condition |
| [**getWorkflowFormFieldCondition**](WorkflowFormFieldConditionsApi.md#getWorkflowFormFieldCondition) | **GET** /v1/workflow_form_field_conditions/{id} | Retrieves a workflow form field condition |
| [**listWorkflowFormFieldConditions**](WorkflowFormFieldConditionsApi.md#listWorkflowFormFieldConditions) | **GET** /v1/workflows/{workflow_id}/form_field_conditions | List workflow form field conditions |
| [**updateWorkflowFormFieldCondition**](WorkflowFormFieldConditionsApi.md#updateWorkflowFormFieldCondition) | **PUT** /v1/workflow_form_field_conditions/{id} | Update a workflow form field condition |


<a id="createWorkflowFormFieldCondition"></a>
# **createWorkflowFormFieldCondition**
> WorkflowFormFieldConditionResponse createWorkflowFormFieldCondition(workflowId, newWorkflowFormFieldCondition)

Creates a workflow form field condition

Creates a new workflow form field condition from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowFormFieldConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowFormFieldConditionsApi apiInstance = new WorkflowFormFieldConditionsApi(defaultClient);
    String workflowId = "workflowId_example"; // String | 
    NewWorkflowFormFieldCondition newWorkflowFormFieldCondition = new NewWorkflowFormFieldCondition(); // NewWorkflowFormFieldCondition | 
    try {
      WorkflowFormFieldConditionResponse result = apiInstance.createWorkflowFormFieldCondition(workflowId, newWorkflowFormFieldCondition);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowFormFieldConditionsApi#createWorkflowFormFieldCondition");
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
| **newWorkflowFormFieldCondition** | [**NewWorkflowFormFieldCondition**](NewWorkflowFormFieldCondition.md)|  | |

### Return type

[**WorkflowFormFieldConditionResponse**](WorkflowFormFieldConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | workflow_form_field_condition created |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteWorkflowFormFieldCondition"></a>
# **deleteWorkflowFormFieldCondition**
> WorkflowFormFieldConditionResponse deleteWorkflowFormFieldCondition(id)

Delete a workflow_form field condition

Delete a specific workflow form field condition by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowFormFieldConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowFormFieldConditionsApi apiInstance = new WorkflowFormFieldConditionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WorkflowFormFieldConditionResponse result = apiInstance.deleteWorkflowFormFieldCondition(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowFormFieldConditionsApi#deleteWorkflowFormFieldCondition");
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

[**WorkflowFormFieldConditionResponse**](WorkflowFormFieldConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | workflow_form_field_condition deleted |  -  |
| **404** | resource not found |  -  |

<a id="getWorkflowFormFieldCondition"></a>
# **getWorkflowFormFieldCondition**
> WorkflowFormFieldConditionResponse getWorkflowFormFieldCondition(id)

Retrieves a workflow form field condition

Retrieves a specific workflow form field condition by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowFormFieldConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowFormFieldConditionsApi apiInstance = new WorkflowFormFieldConditionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WorkflowFormFieldConditionResponse result = apiInstance.getWorkflowFormFieldCondition(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowFormFieldConditionsApi#getWorkflowFormFieldCondition");
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

[**WorkflowFormFieldConditionResponse**](WorkflowFormFieldConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | workflow_form_field_condition found |  -  |
| **404** | resource not found |  -  |

<a id="listWorkflowFormFieldConditions"></a>
# **listWorkflowFormFieldConditions**
> WorkflowFormFieldConditionList listWorkflowFormFieldConditions(workflowId, include, pageNumber, pageSize)

List workflow form field conditions

List workflow form field conditions

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowFormFieldConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowFormFieldConditionsApi apiInstance = new WorkflowFormFieldConditionsApi(defaultClient);
    String workflowId = "workflowId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      WorkflowFormFieldConditionList result = apiInstance.listWorkflowFormFieldConditions(workflowId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowFormFieldConditionsApi#listWorkflowFormFieldConditions");
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

### Return type

[**WorkflowFormFieldConditionList**](WorkflowFormFieldConditionList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateWorkflowFormFieldCondition"></a>
# **updateWorkflowFormFieldCondition**
> WorkflowFormFieldConditionResponse updateWorkflowFormFieldCondition(id, updateWorkflowFormFieldCondition)

Update a workflow form field condition

Update a specific workflow form field condition by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowFormFieldConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowFormFieldConditionsApi apiInstance = new WorkflowFormFieldConditionsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateWorkflowFormFieldCondition updateWorkflowFormFieldCondition = new UpdateWorkflowFormFieldCondition(); // UpdateWorkflowFormFieldCondition | 
    try {
      WorkflowFormFieldConditionResponse result = apiInstance.updateWorkflowFormFieldCondition(id, updateWorkflowFormFieldCondition);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowFormFieldConditionsApi#updateWorkflowFormFieldCondition");
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
| **updateWorkflowFormFieldCondition** | [**UpdateWorkflowFormFieldCondition**](UpdateWorkflowFormFieldCondition.md)|  | |

### Return type

[**WorkflowFormFieldConditionResponse**](WorkflowFormFieldConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | workflow_form_field_condition updated |  -  |
| **404** | resource not found |  -  |

