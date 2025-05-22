# WorkflowGroupsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createWorkflowGroup**](WorkflowGroupsApi.md#createWorkflowGroup) | **POST** /v1/workflow_groups | Creates a workflow group |
| [**deleteWorkflowGroup**](WorkflowGroupsApi.md#deleteWorkflowGroup) | **DELETE** /v1/workflow_groups/{id} | Delete a workflow_group |
| [**getWorkflowGroup**](WorkflowGroupsApi.md#getWorkflowGroup) | **GET** /v1/workflow_groups/{id} | Retrieves a workflow group |
| [**listWorkflowGroups**](WorkflowGroupsApi.md#listWorkflowGroups) | **GET** /v1/workflow_groups | List workflow groups |
| [**updateWorkflowGroup**](WorkflowGroupsApi.md#updateWorkflowGroup) | **PUT** /v1/workflow_groups/{id} | Update a workflow group |


<a id="createWorkflowGroup"></a>
# **createWorkflowGroup**
> WorkflowGroupResponse createWorkflowGroup(newWorkflowGroup)

Creates a workflow group

Creates a new workflow group from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowGroupsApi apiInstance = new WorkflowGroupsApi(defaultClient);
    NewWorkflowGroup newWorkflowGroup = new NewWorkflowGroup(); // NewWorkflowGroup | 
    try {
      WorkflowGroupResponse result = apiInstance.createWorkflowGroup(newWorkflowGroup);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowGroupsApi#createWorkflowGroup");
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
| **newWorkflowGroup** | [**NewWorkflowGroup**](NewWorkflowGroup.md)|  | |

### Return type

[**WorkflowGroupResponse**](WorkflowGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | workflow group created |  -  |
| **422** | invalid request |  -  |
| **401** | resource not found |  -  |

<a id="deleteWorkflowGroup"></a>
# **deleteWorkflowGroup**
> WorkflowGroupResponse deleteWorkflowGroup(id)

Delete a workflow_group

Delete a specific workflow group by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowGroupsApi apiInstance = new WorkflowGroupsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WorkflowGroupResponse result = apiInstance.deleteWorkflowGroup(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowGroupsApi#deleteWorkflowGroup");
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

[**WorkflowGroupResponse**](WorkflowGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | workflow group deleted |  -  |
| **404** | resource not found |  -  |

<a id="getWorkflowGroup"></a>
# **getWorkflowGroup**
> WorkflowGroupResponse getWorkflowGroup(id)

Retrieves a workflow group

Retrieves a specific workflow group by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowGroupsApi apiInstance = new WorkflowGroupsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WorkflowGroupResponse result = apiInstance.getWorkflowGroup(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowGroupsApi#getWorkflowGroup");
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

[**WorkflowGroupResponse**](WorkflowGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | workflow group found |  -  |
| **404** | resource not found |  -  |

<a id="listWorkflowGroups"></a>
# **listWorkflowGroups**
> WorkflowGroupList listWorkflowGroups(include, pageNumber, pageSize, filterSearch, filterName, filterSlug, filterKind, filterExpanded, filterPosition)

List workflow groups

List workflow groups

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowGroupsApi apiInstance = new WorkflowGroupsApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterKind = "filterKind_example"; // String | 
    Boolean filterExpanded = true; // Boolean | 
    Integer filterPosition = 56; // Integer | 
    try {
      WorkflowGroupList result = apiInstance.listWorkflowGroups(include, pageNumber, pageSize, filterSearch, filterName, filterSlug, filterKind, filterExpanded, filterPosition);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowGroupsApi#listWorkflowGroups");
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
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSearch** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterKind** | **String**|  | [optional] |
| **filterExpanded** | **Boolean**|  | [optional] |
| **filterPosition** | **Integer**|  | [optional] |

### Return type

[**WorkflowGroupList**](WorkflowGroupList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateWorkflowGroup"></a>
# **updateWorkflowGroup**
> WorkflowGroupResponse updateWorkflowGroup(id, updateWorkflowGroup)

Update a workflow group

Update a specific workflow group by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WorkflowGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WorkflowGroupsApi apiInstance = new WorkflowGroupsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateWorkflowGroup updateWorkflowGroup = new UpdateWorkflowGroup(); // UpdateWorkflowGroup | 
    try {
      WorkflowGroupResponse result = apiInstance.updateWorkflowGroup(id, updateWorkflowGroup);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WorkflowGroupsApi#updateWorkflowGroup");
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
| **updateWorkflowGroup** | [**UpdateWorkflowGroup**](UpdateWorkflowGroup.md)|  | |

### Return type

[**WorkflowGroupResponse**](WorkflowGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | workflow group updated |  -  |
| **404** | resource not found |  -  |

