# RetrospectiveProcessGroupsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createRetrospectiveProcessGroup**](RetrospectiveProcessGroupsApi.md#createRetrospectiveProcessGroup) | **POST** /v1/retrospective_processes/{retrospective_process_id}/groups | Creates a retrospective process group |
| [**deleteRetrospectiveProcessGroup**](RetrospectiveProcessGroupsApi.md#deleteRetrospectiveProcessGroup) | **DELETE** /v1/retrospective_process_groups/{id} | Delete a Retrospective Process Group |
| [**getRetrospectiveProcessGroup**](RetrospectiveProcessGroupsApi.md#getRetrospectiveProcessGroup) | **GET** /v1/retrospective_process_groups/{id} | Retrieves a Retrospective Process Group |
| [**listRetrospectiveProcessGroups**](RetrospectiveProcessGroupsApi.md#listRetrospectiveProcessGroups) | **GET** /v1/retrospective_processes/{retrospective_process_id}/groups | List Retrospective Process Groups |
| [**updateRetrospectiveProcessGroup**](RetrospectiveProcessGroupsApi.md#updateRetrospectiveProcessGroup) | **PUT** /v1/retrospective_process_groups/{id} | Update a Retrospective Process Group |


<a id="createRetrospectiveProcessGroup"></a>
# **createRetrospectiveProcessGroup**
> RetrospectiveProcessGroupResponse createRetrospectiveProcessGroup(retrospectiveProcessId, newRetrospectiveProcessGroup)

Creates a retrospective process group

Creates a new retrospective process group from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessGroupsApi apiInstance = new RetrospectiveProcessGroupsApi(defaultClient);
    String retrospectiveProcessId = "retrospectiveProcessId_example"; // String | 
    NewRetrospectiveProcessGroup newRetrospectiveProcessGroup = new NewRetrospectiveProcessGroup(); // NewRetrospectiveProcessGroup | 
    try {
      RetrospectiveProcessGroupResponse result = apiInstance.createRetrospectiveProcessGroup(retrospectiveProcessId, newRetrospectiveProcessGroup);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessGroupsApi#createRetrospectiveProcessGroup");
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
| **retrospectiveProcessId** | **String**|  | |
| **newRetrospectiveProcessGroup** | [**NewRetrospectiveProcessGroup**](NewRetrospectiveProcessGroup.md)|  | |

### Return type

[**RetrospectiveProcessGroupResponse**](RetrospectiveProcessGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | retrospective_process_group created |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteRetrospectiveProcessGroup"></a>
# **deleteRetrospectiveProcessGroup**
> RetrospectiveProcessGroupResponse deleteRetrospectiveProcessGroup(id)

Delete a Retrospective Process Group

Delete a specific Retrospective Process Group by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessGroupsApi apiInstance = new RetrospectiveProcessGroupsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      RetrospectiveProcessGroupResponse result = apiInstance.deleteRetrospectiveProcessGroup(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessGroupsApi#deleteRetrospectiveProcessGroup");
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

[**RetrospectiveProcessGroupResponse**](RetrospectiveProcessGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | retrospective_process_group deleted |  -  |
| **404** | resource not found |  -  |

<a id="getRetrospectiveProcessGroup"></a>
# **getRetrospectiveProcessGroup**
> RetrospectiveProcessGroupResponse getRetrospectiveProcessGroup(id, include)

Retrieves a Retrospective Process Group

Retrieves a specific Retrospective Process Group by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessGroupsApi apiInstance = new RetrospectiveProcessGroupsApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "retrospective_process_group_steps"; // String | comma separated if needed. eg: retrospective_process_group_steps
    try {
      RetrospectiveProcessGroupResponse result = apiInstance.getRetrospectiveProcessGroup(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessGroupsApi#getRetrospectiveProcessGroup");
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
| **include** | **String**| comma separated if needed. eg: retrospective_process_group_steps | [optional] [enum: retrospective_process_group_steps] |

### Return type

[**RetrospectiveProcessGroupResponse**](RetrospectiveProcessGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | sub_status found |  -  |

<a id="listRetrospectiveProcessGroups"></a>
# **listRetrospectiveProcessGroups**
> RetrospectiveProcessGroupList listRetrospectiveProcessGroups(retrospectiveProcessId, include, sort, pageNumber, pageSize, filterSubStatusId, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List Retrospective Process Groups

List Retrospective Process Groups

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessGroupsApi apiInstance = new RetrospectiveProcessGroupsApi(defaultClient);
    String retrospectiveProcessId = "retrospectiveProcessId_example"; // String | 
    String include = "retrospective_process_group_steps"; // String | comma separated if needed. eg: retrospective_process_group_steps
    String sort = "created_at"; // String | comma separated if needed. eg: created_at,updated_at
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSubStatusId = "filterSubStatusId_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      RetrospectiveProcessGroupList result = apiInstance.listRetrospectiveProcessGroups(retrospectiveProcessId, include, sort, pageNumber, pageSize, filterSubStatusId, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessGroupsApi#listRetrospectiveProcessGroups");
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
| **retrospectiveProcessId** | **String**|  | |
| **include** | **String**| comma separated if needed. eg: retrospective_process_group_steps | [optional] [enum: retrospective_process_group_steps] |
| **sort** | **String**| comma separated if needed. eg: created_at,updated_at | [optional] [enum: created_at, -created_at, updated_at, -updated_at, position, -position] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSubStatusId** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**RetrospectiveProcessGroupList**](RetrospectiveProcessGroupList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateRetrospectiveProcessGroup"></a>
# **updateRetrospectiveProcessGroup**
> RetrospectiveProcessGroupResponse updateRetrospectiveProcessGroup(id, updateRetrospectiveProcessGroup)

Update a Retrospective Process Group

Update a specific Retrospective Process Group by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveProcessGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveProcessGroupsApi apiInstance = new RetrospectiveProcessGroupsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateRetrospectiveProcessGroup updateRetrospectiveProcessGroup = new UpdateRetrospectiveProcessGroup(); // UpdateRetrospectiveProcessGroup | 
    try {
      RetrospectiveProcessGroupResponse result = apiInstance.updateRetrospectiveProcessGroup(id, updateRetrospectiveProcessGroup);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveProcessGroupsApi#updateRetrospectiveProcessGroup");
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
| **updateRetrospectiveProcessGroup** | [**UpdateRetrospectiveProcessGroup**](UpdateRetrospectiveProcessGroup.md)|  | |

### Return type

[**RetrospectiveProcessGroupResponse**](RetrospectiveProcessGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | retrospective_process_group updated |  -  |

