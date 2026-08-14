# WorkflowActionItemFormFieldConditionsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createWorkflowActionItemFormFieldCondition**](WorkflowActionItemFormFieldConditionsApi.md#createWorkflowActionItemFormFieldCondition) | **POST** /v1/workflows/{workflow_id}/action_item_form_field_conditions | Creates a workflow action item form field condition |
| [**deleteWorkflowActionItemFormFieldCondition**](WorkflowActionItemFormFieldConditionsApi.md#deleteWorkflowActionItemFormFieldCondition) | **DELETE** /v1/workflow_action_item_form_field_conditions/{id} | Delete a workflow action item form field condition |
| [**getWorkflowActionItemFormFieldCondition**](WorkflowActionItemFormFieldConditionsApi.md#getWorkflowActionItemFormFieldCondition) | **GET** /v1/workflow_action_item_form_field_conditions/{id} | Retrieves a workflow action item form field condition |
| [**listWorkflowActionItemFormFieldConditions**](WorkflowActionItemFormFieldConditionsApi.md#listWorkflowActionItemFormFieldConditions) | **GET** /v1/workflows/{workflow_id}/action_item_form_field_conditions | List workflow action item form field conditions |
| [**updateWorkflowActionItemFormFieldCondition**](WorkflowActionItemFormFieldConditionsApi.md#updateWorkflowActionItemFormFieldCondition) | **PUT** /v1/workflow_action_item_form_field_conditions/{id} | Update a workflow action item form field condition |


<a id="createWorkflowActionItemFormFieldCondition"></a>
# **createWorkflowActionItemFormFieldCondition**
> WorkflowActionItemFormFieldConditionResponse createWorkflowActionItemFormFieldCondition(workflowId, newWorkflowActionItemFormFieldCondition)

Creates a workflow action item form field condition

Creates a new workflow action item form field condition from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowActionItemFormFieldConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowActionItemFormFieldConditionsApi apiInstance = new WorkflowActionItemFormFieldConditionsApi(defaultClient);
    String workflowId = "workflowId_example"; // String | 
    NewWorkflowActionItemFormFieldCondition newWorkflowActionItemFormFieldCondition = new NewWorkflowActionItemFormFieldCondition(); // NewWorkflowActionItemFormFieldCondition | 
    try {
      WorkflowActionItemFormFieldConditionResponse result = apiInstance.createWorkflowActionItemFormFieldCondition(workflowId, newWorkflowActionItemFormFieldCondition);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowActionItemFormFieldConditionsApi#createWorkflowActionItemFormFieldCondition");
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
| **newWorkflowActionItemFormFieldCondition** | [**NewWorkflowActionItemFormFieldCondition**](NewWorkflowActionItemFormFieldCondition.md)|  | |

### Return type

[**WorkflowActionItemFormFieldConditionResponse**](WorkflowActionItemFormFieldConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | workflow_action_item_form_field_condition created |  -  |
| **401** | responds with unauthorized for invalid token |  -  |
| **403** | responds with forbidden when the feature flag is disabled |  -  |
| **422** | rejects conditions on a non-action-item workflow |  -  |

<a id="deleteWorkflowActionItemFormFieldCondition"></a>
# **deleteWorkflowActionItemFormFieldCondition**
> WorkflowActionItemFormFieldConditionResponse deleteWorkflowActionItemFormFieldCondition(id)

Delete a workflow action item form field condition

Delete a specific workflow action item form field condition by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowActionItemFormFieldConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowActionItemFormFieldConditionsApi apiInstance = new WorkflowActionItemFormFieldConditionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WorkflowActionItemFormFieldConditionResponse result = apiInstance.deleteWorkflowActionItemFormFieldCondition(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowActionItemFormFieldConditionsApi#deleteWorkflowActionItemFormFieldCondition");
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

[**WorkflowActionItemFormFieldConditionResponse**](WorkflowActionItemFormFieldConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | allows deleting an existing condition when the feature flag is disabled |  -  |
| **404** | resource not found |  -  |

<a id="getWorkflowActionItemFormFieldCondition"></a>
# **getWorkflowActionItemFormFieldCondition**
> WorkflowActionItemFormFieldConditionResponse getWorkflowActionItemFormFieldCondition(id)

Retrieves a workflow action item form field condition

Retrieves a specific workflow action item form field condition by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowActionItemFormFieldConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowActionItemFormFieldConditionsApi apiInstance = new WorkflowActionItemFormFieldConditionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WorkflowActionItemFormFieldConditionResponse result = apiInstance.getWorkflowActionItemFormFieldCondition(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowActionItemFormFieldConditionsApi#getWorkflowActionItemFormFieldCondition");
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

[**WorkflowActionItemFormFieldConditionResponse**](WorkflowActionItemFormFieldConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | includes native field ids |  -  |
| **404** | resource not found |  -  |

<a id="listWorkflowActionItemFormFieldConditions"></a>
# **listWorkflowActionItemFormFieldConditions**
> WorkflowActionItemFormFieldConditionList listWorkflowActionItemFormFieldConditions(workflowId, include, pageNumber, pageSize)

List workflow action item form field conditions

List workflow action item form field conditions

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowActionItemFormFieldConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowActionItemFormFieldConditionsApi apiInstance = new WorkflowActionItemFormFieldConditionsApi(defaultClient);
    String workflowId = "workflowId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      WorkflowActionItemFormFieldConditionList result = apiInstance.listWorkflowActionItemFormFieldConditions(workflowId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowActionItemFormFieldConditionsApi#listWorkflowActionItemFormFieldConditions");
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

[**WorkflowActionItemFormFieldConditionList**](WorkflowActionItemFormFieldConditionList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateWorkflowActionItemFormFieldCondition"></a>
# **updateWorkflowActionItemFormFieldCondition**
> WorkflowActionItemFormFieldConditionResponse updateWorkflowActionItemFormFieldCondition(id, updateWorkflowActionItemFormFieldCondition)

Update a workflow action item form field condition

Update a specific workflow action item form field condition by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowActionItemFormFieldConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowActionItemFormFieldConditionsApi apiInstance = new WorkflowActionItemFormFieldConditionsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateWorkflowActionItemFormFieldCondition updateWorkflowActionItemFormFieldCondition = new UpdateWorkflowActionItemFormFieldCondition(); // UpdateWorkflowActionItemFormFieldCondition | 
    try {
      WorkflowActionItemFormFieldConditionResponse result = apiInstance.updateWorkflowActionItemFormFieldCondition(id, updateWorkflowActionItemFormFieldCondition);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowActionItemFormFieldConditionsApi#updateWorkflowActionItemFormFieldCondition");
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
| **updateWorkflowActionItemFormFieldCondition** | [**UpdateWorkflowActionItemFormFieldCondition**](UpdateWorkflowActionItemFormFieldCondition.md)|  | |

### Return type

[**WorkflowActionItemFormFieldConditionResponse**](WorkflowActionItemFormFieldConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | ignores non-allowlisted attributes such as workflow_id |  -  |
| **404** | resource not found |  -  |

