# IncidentPermissionSetResourcesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIncidentPermissionSetResource**](IncidentPermissionSetResourcesApi.md#createIncidentPermissionSetResource) | **POST** /v1/incident_permission_sets/{incident_permission_set_id}/resources | Creates an incident_permission_set_resource |
| [**deleteIncidentPermissionSetResource**](IncidentPermissionSetResourcesApi.md#deleteIncidentPermissionSetResource) | **DELETE** /v1/incident_permission_set_resources/{id} | Delete an incident_permission_set_resource |
| [**getIncidentPermissionSetResource**](IncidentPermissionSetResourcesApi.md#getIncidentPermissionSetResource) | **GET** /v1/incident_permission_set_resources/{id} | Retrieves an incident_permission_set_resource |
| [**listIncidentPermissionSetResources**](IncidentPermissionSetResourcesApi.md#listIncidentPermissionSetResources) | **GET** /v1/incident_permission_sets/{incident_permission_set_id}/resources | List incident_permission_set_resources |
| [**updateIncidentPermissionSetResource**](IncidentPermissionSetResourcesApi.md#updateIncidentPermissionSetResource) | **PUT** /v1/incident_permission_set_resources/{id} | Update an incident_permission_set_resource |


<a id="createIncidentPermissionSetResource"></a>
# **createIncidentPermissionSetResource**
> IncidentPermissionSetResourceResponse createIncidentPermissionSetResource(incidentPermissionSetId, newIncidentPermissionSetResource)

Creates an incident_permission_set_resource

Creates a new incident_permission_set_resource from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetResourcesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetResourcesApi apiInstance = new IncidentPermissionSetResourcesApi(defaultClient);
    String incidentPermissionSetId = "incidentPermissionSetId_example"; // String | 
    NewIncidentPermissionSetResource newIncidentPermissionSetResource = new NewIncidentPermissionSetResource(); // NewIncidentPermissionSetResource | 
    try {
      IncidentPermissionSetResourceResponse result = apiInstance.createIncidentPermissionSetResource(incidentPermissionSetId, newIncidentPermissionSetResource);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetResourcesApi#createIncidentPermissionSetResource");
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
| **incidentPermissionSetId** | **String**|  | |
| **newIncidentPermissionSetResource** | [**NewIncidentPermissionSetResource**](NewIncidentPermissionSetResource.md)|  | |

### Return type

[**IncidentPermissionSetResourceResponse**](IncidentPermissionSetResourceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident_permission_set_resource created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteIncidentPermissionSetResource"></a>
# **deleteIncidentPermissionSetResource**
> IncidentPermissionSetResourceResponse deleteIncidentPermissionSetResource(id)

Delete an incident_permission_set_resource

Delete a specific incident_permission_set_resource by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetResourcesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetResourcesApi apiInstance = new IncidentPermissionSetResourcesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentPermissionSetResourceResponse result = apiInstance.deleteIncidentPermissionSetResource(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetResourcesApi#deleteIncidentPermissionSetResource");
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

[**IncidentPermissionSetResourceResponse**](IncidentPermissionSetResourceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_permission_set_resource deleted |  -  |
| **404** | resource not found |  -  |

<a id="getIncidentPermissionSetResource"></a>
# **getIncidentPermissionSetResource**
> IncidentPermissionSetResourceResponse getIncidentPermissionSetResource(id)

Retrieves an incident_permission_set_resource

Retrieves a specific incident_permission_set_resource by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetResourcesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetResourcesApi apiInstance = new IncidentPermissionSetResourcesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentPermissionSetResourceResponse result = apiInstance.getIncidentPermissionSetResource(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetResourcesApi#getIncidentPermissionSetResource");
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

[**IncidentPermissionSetResourceResponse**](IncidentPermissionSetResourceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_permission_set_resource found |  -  |
| **404** | resource not found |  -  |

<a id="listIncidentPermissionSetResources"></a>
# **listIncidentPermissionSetResources**
> IncidentPermissionSetResourceList listIncidentPermissionSetResources(incidentPermissionSetId, include, pageNumber, pageSize, filterKind, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

List incident_permission_set_resources

List incident_permission_set_resources

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetResourcesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetResourcesApi apiInstance = new IncidentPermissionSetResourcesApi(defaultClient);
    String incidentPermissionSetId = "incidentPermissionSetId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterKind = "filterKind_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      IncidentPermissionSetResourceList result = apiInstance.listIncidentPermissionSetResources(incidentPermissionSetId, include, pageNumber, pageSize, filterKind, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetResourcesApi#listIncidentPermissionSetResources");
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
| **incidentPermissionSetId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterKind** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**IncidentPermissionSetResourceList**](IncidentPermissionSetResourceList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateIncidentPermissionSetResource"></a>
# **updateIncidentPermissionSetResource**
> IncidentPermissionSetResourceResponse updateIncidentPermissionSetResource(id, updateIncidentPermissionSetResource)

Update an incident_permission_set_resource

Update a specific incident_permission_set_resource by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetResourcesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetResourcesApi apiInstance = new IncidentPermissionSetResourcesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateIncidentPermissionSetResource updateIncidentPermissionSetResource = new UpdateIncidentPermissionSetResource(); // UpdateIncidentPermissionSetResource | 
    try {
      IncidentPermissionSetResourceResponse result = apiInstance.updateIncidentPermissionSetResource(id, updateIncidentPermissionSetResource);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetResourcesApi#updateIncidentPermissionSetResource");
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
| **updateIncidentPermissionSetResource** | [**UpdateIncidentPermissionSetResource**](UpdateIncidentPermissionSetResource.md)|  | |

### Return type

[**IncidentPermissionSetResourceResponse**](IncidentPermissionSetResourceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_permission_set_resource updated |  -  |
| **404** | resource not found |  -  |

