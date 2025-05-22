# DeprecatedWorkflowCustomFieldSelectionsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createWorkflowCustomFieldSelection**](DeprecatedWorkflowCustomFieldSelectionsApi.md#createWorkflowCustomFieldSelection) | **POST** /v1/workflows/{workflow_id}/custom_field_selections | [DEPRECATED] Creates a workflow custom field selection |
| [**deleteWorkflowCustomFieldSelection**](DeprecatedWorkflowCustomFieldSelectionsApi.md#deleteWorkflowCustomFieldSelection) | **DELETE** /v1/workflow_custom_field_selections/{id} | [DEPRECATED] Delete a workflow custom field selection |
| [**getWorkflowCustomFieldSelection**](DeprecatedWorkflowCustomFieldSelectionsApi.md#getWorkflowCustomFieldSelection) | **GET** /v1/workflow_custom_field_selections/{id} | [DEPRECATED] Retrieves a workflow custom field selection |
| [**listWorkflowCustomFieldSelections**](DeprecatedWorkflowCustomFieldSelectionsApi.md#listWorkflowCustomFieldSelections) | **GET** /v1/workflows/{workflow_id}/custom_field_selections | [DEPRECATED] List workflow custom field selections |
| [**updateWorkflowCustomFieldSelection**](DeprecatedWorkflowCustomFieldSelectionsApi.md#updateWorkflowCustomFieldSelection) | **PUT** /v1/workflow_custom_field_selections/{id} | [DEPRECATED] Update a workflow custom field selection |


<a id="createWorkflowCustomFieldSelection"></a>
# **createWorkflowCustomFieldSelection**
> WorkflowCustomFieldSelectionResponse createWorkflowCustomFieldSelection(workflowId, newWorkflowCustomFieldSelection)

[DEPRECATED] Creates a workflow custom field selection

[DEPRECATED] Use form field endpoints instead. Creates a new workflow custom field selection from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedWorkflowCustomFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedWorkflowCustomFieldSelectionsApi apiInstance = new DeprecatedWorkflowCustomFieldSelectionsApi(defaultClient);
    String workflowId = "workflowId_example"; // String | 
    NewWorkflowCustomFieldSelection newWorkflowCustomFieldSelection = new NewWorkflowCustomFieldSelection(); // NewWorkflowCustomFieldSelection | 
    try {
      WorkflowCustomFieldSelectionResponse result = apiInstance.createWorkflowCustomFieldSelection(workflowId, newWorkflowCustomFieldSelection);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedWorkflowCustomFieldSelectionsApi#createWorkflowCustomFieldSelection");
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
| **newWorkflowCustomFieldSelection** | [**NewWorkflowCustomFieldSelection**](NewWorkflowCustomFieldSelection.md)|  | |

### Return type

[**WorkflowCustomFieldSelectionResponse**](WorkflowCustomFieldSelectionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | workflow_custom_field_selection created |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteWorkflowCustomFieldSelection"></a>
# **deleteWorkflowCustomFieldSelection**
> WorkflowCustomFieldSelectionResponse deleteWorkflowCustomFieldSelection(id)

[DEPRECATED] Delete a workflow custom field selection

[DEPRECATED] Use form field endpoints instead. Delete a specific workflow custom field selection by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedWorkflowCustomFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedWorkflowCustomFieldSelectionsApi apiInstance = new DeprecatedWorkflowCustomFieldSelectionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WorkflowCustomFieldSelectionResponse result = apiInstance.deleteWorkflowCustomFieldSelection(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedWorkflowCustomFieldSelectionsApi#deleteWorkflowCustomFieldSelection");
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

[**WorkflowCustomFieldSelectionResponse**](WorkflowCustomFieldSelectionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | workflow_custom_field_selection deleted |  -  |
| **404** | resource not found |  -  |

<a id="getWorkflowCustomFieldSelection"></a>
# **getWorkflowCustomFieldSelection**
> WorkflowCustomFieldSelectionResponse getWorkflowCustomFieldSelection(id)

[DEPRECATED] Retrieves a workflow custom field selection

[DEPRECATED] Use form field endpoints instead. Retrieves a specific workflow custom field selection by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedWorkflowCustomFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedWorkflowCustomFieldSelectionsApi apiInstance = new DeprecatedWorkflowCustomFieldSelectionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WorkflowCustomFieldSelectionResponse result = apiInstance.getWorkflowCustomFieldSelection(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedWorkflowCustomFieldSelectionsApi#getWorkflowCustomFieldSelection");
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

[**WorkflowCustomFieldSelectionResponse**](WorkflowCustomFieldSelectionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | workflow_custom_field_selection found |  -  |
| **404** | resource not found |  -  |

<a id="listWorkflowCustomFieldSelections"></a>
# **listWorkflowCustomFieldSelections**
> WorkflowCustomFieldSelectionList listWorkflowCustomFieldSelections(workflowId, include, pageNumber, pageSize)

[DEPRECATED] List workflow custom field selections

[DEPRECATED] Use form field endpoints instead. List workflow custom field selections

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedWorkflowCustomFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedWorkflowCustomFieldSelectionsApi apiInstance = new DeprecatedWorkflowCustomFieldSelectionsApi(defaultClient);
    String workflowId = "workflowId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      WorkflowCustomFieldSelectionList result = apiInstance.listWorkflowCustomFieldSelections(workflowId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedWorkflowCustomFieldSelectionsApi#listWorkflowCustomFieldSelections");
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

[**WorkflowCustomFieldSelectionList**](WorkflowCustomFieldSelectionList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateWorkflowCustomFieldSelection"></a>
# **updateWorkflowCustomFieldSelection**
> WorkflowCustomFieldSelectionResponse updateWorkflowCustomFieldSelection(id, updateWorkflowCustomFieldSelection)

[DEPRECATED] Update a workflow custom field selection

[DEPRECATED] Use form field endpoints instead. Update a specific workflow custom field selection by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedWorkflowCustomFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedWorkflowCustomFieldSelectionsApi apiInstance = new DeprecatedWorkflowCustomFieldSelectionsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateWorkflowCustomFieldSelection updateWorkflowCustomFieldSelection = new UpdateWorkflowCustomFieldSelection(); // UpdateWorkflowCustomFieldSelection | 
    try {
      WorkflowCustomFieldSelectionResponse result = apiInstance.updateWorkflowCustomFieldSelection(id, updateWorkflowCustomFieldSelection);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedWorkflowCustomFieldSelectionsApi#updateWorkflowCustomFieldSelection");
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
| **updateWorkflowCustomFieldSelection** | [**UpdateWorkflowCustomFieldSelection**](UpdateWorkflowCustomFieldSelection.md)|  | |

### Return type

[**WorkflowCustomFieldSelectionResponse**](WorkflowCustomFieldSelectionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | workflow_custom_field_selection updated |  -  |
| **404** | resource not found |  -  |

