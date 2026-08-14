# StatusPageComponentGroupsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createStatusPageComponentGroup**](StatusPageComponentGroupsApi.md#createStatusPageComponentGroup) | **POST** /v1/status-pages/{status_page_id}/component-groups | Creates a status page component group |
| [**deleteStatusPageComponentGroup**](StatusPageComponentGroupsApi.md#deleteStatusPageComponentGroup) | **DELETE** /v1/component-groups/{id} | Delete a status page component group |
| [**getStatusPageComponentGroup**](StatusPageComponentGroupsApi.md#getStatusPageComponentGroup) | **GET** /v1/component-groups/{id} | Retrieves a status page component group |
| [**listStatusPageComponentGroups**](StatusPageComponentGroupsApi.md#listStatusPageComponentGroups) | **GET** /v1/status-pages/{status_page_id}/component-groups | List status page component groups |
| [**updateStatusPageComponentGroup**](StatusPageComponentGroupsApi.md#updateStatusPageComponentGroup) | **PUT** /v1/component-groups/{id} | Update a status page component group |


<a id="createStatusPageComponentGroup"></a>
# **createStatusPageComponentGroup**
> StatusPageComponentGroupResponse createStatusPageComponentGroup(statusPageId, newStatusPageComponentGroup)

Creates a status page component group

Creates a new status page component group from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageComponentGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageComponentGroupsApi apiInstance = new StatusPageComponentGroupsApi(defaultClient);
    String statusPageId = "statusPageId_example"; // String | 
    NewStatusPageComponentGroup newStatusPageComponentGroup = new NewStatusPageComponentGroup(); // NewStatusPageComponentGroup | 
    try {
      StatusPageComponentGroupResponse result = apiInstance.createStatusPageComponentGroup(statusPageId, newStatusPageComponentGroup);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageComponentGroupsApi#createStatusPageComponentGroup");
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
| **statusPageId** | **String**|  | |
| **newStatusPageComponentGroup** | [**NewStatusPageComponentGroup**](NewStatusPageComponentGroup.md)|  | |

### Return type

[**StatusPageComponentGroupResponse**](StatusPageComponentGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | component group created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteStatusPageComponentGroup"></a>
# **deleteStatusPageComponentGroup**
> deleteStatusPageComponentGroup(id)

Delete a status page component group

Delete a status page component group together with its components

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageComponentGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageComponentGroupsApi apiInstance = new StatusPageComponentGroupsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      apiInstance.deleteStatusPageComponentGroup(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageComponentGroupsApi#deleteStatusPageComponentGroup");
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

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | group deleted along with its member components |  -  |

<a id="getStatusPageComponentGroup"></a>
# **getStatusPageComponentGroup**
> StatusPageComponentGroupResponse getStatusPageComponentGroup(id, include)

Retrieves a status page component group

Retrieves a status page component group

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageComponentGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageComponentGroupsApi apiInstance = new StatusPageComponentGroupsApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "include_example"; // String | 
    try {
      StatusPageComponentGroupResponse result = apiInstance.getStatusPageComponentGroup(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageComponentGroupsApi#getStatusPageComponentGroup");
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
| **include** | **String**|  | [optional] |

### Return type

[**StatusPageComponentGroupResponse**](StatusPageComponentGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |
| **404** | responds with not found for another team&#39;s token |  -  |

<a id="listStatusPageComponentGroups"></a>
# **listStatusPageComponentGroups**
> StatusPageComponentGroupList listStatusPageComponentGroups(statusPageId, include, pageNumber, pageSize)

List status page component groups

List status page component groups

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageComponentGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageComponentGroupsApi apiInstance = new StatusPageComponentGroupsApi(defaultClient);
    String statusPageId = "statusPageId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      StatusPageComponentGroupList result = apiInstance.listStatusPageComponentGroups(statusPageId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageComponentGroupsApi#listStatusPageComponentGroups");
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
| **statusPageId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**StatusPageComponentGroupList**](StatusPageComponentGroupList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateStatusPageComponentGroup"></a>
# **updateStatusPageComponentGroup**
> StatusPageComponentGroupResponse updateStatusPageComponentGroup(id, updateStatusPageComponentGroup)

Update a status page component group

Update a status page component group

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageComponentGroupsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageComponentGroupsApi apiInstance = new StatusPageComponentGroupsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateStatusPageComponentGroup updateStatusPageComponentGroup = new UpdateStatusPageComponentGroup(); // UpdateStatusPageComponentGroup | 
    try {
      StatusPageComponentGroupResponse result = apiInstance.updateStatusPageComponentGroup(id, updateStatusPageComponentGroup);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageComponentGroupsApi#updateStatusPageComponentGroup");
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
| **updateStatusPageComponentGroup** | [**UpdateStatusPageComponentGroup**](UpdateStatusPageComponentGroup.md)|  | |

### Return type

[**StatusPageComponentGroupResponse**](StatusPageComponentGroupResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | component group reordered |  -  |
| **422** | invalid request |  -  |

