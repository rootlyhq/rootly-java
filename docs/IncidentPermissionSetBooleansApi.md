# IncidentPermissionSetBooleansApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIncidentPermissionSetBoolean**](IncidentPermissionSetBooleansApi.md#createIncidentPermissionSetBoolean) | **POST** /v1/incident_permission_sets/{incident_permission_set_id}/booleans | Creates an incident_permission_set_boolean |
| [**deleteIncidentPermissionSetBoolean**](IncidentPermissionSetBooleansApi.md#deleteIncidentPermissionSetBoolean) | **DELETE** /v1/incident_permission_set_booleans/{id} | Delete an incident_permission_set_boolean |
| [**getIncidentPermissionSetBoolean**](IncidentPermissionSetBooleansApi.md#getIncidentPermissionSetBoolean) | **GET** /v1/incident_permission_set_booleans/{id} | Retrieves an incident_permission_set_boolean |
| [**listIncidentPermissionSetBooleans**](IncidentPermissionSetBooleansApi.md#listIncidentPermissionSetBooleans) | **GET** /v1/incident_permission_sets/{incident_permission_set_id}/booleans | List incident_permission_set_booleans |
| [**updateIncidentPermissionSetBoolean**](IncidentPermissionSetBooleansApi.md#updateIncidentPermissionSetBoolean) | **PUT** /v1/incident_permission_set_booleans/{id} | Update an incident_permission_set_boolean |


<a id="createIncidentPermissionSetBoolean"></a>
# **createIncidentPermissionSetBoolean**
> IncidentPermissionSetBooleanResponse createIncidentPermissionSetBoolean(incidentPermissionSetId, newIncidentPermissionSetBoolean)

Creates an incident_permission_set_boolean

Creates a new incident_permission_set_boolean from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetBooleansApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetBooleansApi apiInstance = new IncidentPermissionSetBooleansApi(defaultClient);
    String incidentPermissionSetId = "incidentPermissionSetId_example"; // String | 
    NewIncidentPermissionSetBoolean newIncidentPermissionSetBoolean = new NewIncidentPermissionSetBoolean(); // NewIncidentPermissionSetBoolean | 
    try {
      IncidentPermissionSetBooleanResponse result = apiInstance.createIncidentPermissionSetBoolean(incidentPermissionSetId, newIncidentPermissionSetBoolean);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetBooleansApi#createIncidentPermissionSetBoolean");
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
| **newIncidentPermissionSetBoolean** | [**NewIncidentPermissionSetBoolean**](NewIncidentPermissionSetBoolean.md)|  | |

### Return type

[**IncidentPermissionSetBooleanResponse**](IncidentPermissionSetBooleanResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident_permission_set_boolean created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteIncidentPermissionSetBoolean"></a>
# **deleteIncidentPermissionSetBoolean**
> IncidentPermissionSetBooleanResponse deleteIncidentPermissionSetBoolean(id)

Delete an incident_permission_set_boolean

Delete a specific incident_permission_set_boolean by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetBooleansApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetBooleansApi apiInstance = new IncidentPermissionSetBooleansApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentPermissionSetBooleanResponse result = apiInstance.deleteIncidentPermissionSetBoolean(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetBooleansApi#deleteIncidentPermissionSetBoolean");
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

[**IncidentPermissionSetBooleanResponse**](IncidentPermissionSetBooleanResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_permission_set_boolean deleted |  -  |
| **404** | resource not found |  -  |

<a id="getIncidentPermissionSetBoolean"></a>
# **getIncidentPermissionSetBoolean**
> IncidentPermissionSetBooleanResponse getIncidentPermissionSetBoolean(id)

Retrieves an incident_permission_set_boolean

Retrieves a specific incident_permission_set_boolean by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetBooleansApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetBooleansApi apiInstance = new IncidentPermissionSetBooleansApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentPermissionSetBooleanResponse result = apiInstance.getIncidentPermissionSetBoolean(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetBooleansApi#getIncidentPermissionSetBoolean");
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

[**IncidentPermissionSetBooleanResponse**](IncidentPermissionSetBooleanResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_permission_set_boolean found |  -  |
| **404** | resource not found |  -  |

<a id="listIncidentPermissionSetBooleans"></a>
# **listIncidentPermissionSetBooleans**
> IncidentPermissionSetBooleanList listIncidentPermissionSetBooleans(incidentPermissionSetId, include, pageNumber, pageSize, filterKind, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

List incident_permission_set_booleans

List incident_permission_set_booleans

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetBooleansApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetBooleansApi apiInstance = new IncidentPermissionSetBooleansApi(defaultClient);
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
      IncidentPermissionSetBooleanList result = apiInstance.listIncidentPermissionSetBooleans(incidentPermissionSetId, include, pageNumber, pageSize, filterKind, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetBooleansApi#listIncidentPermissionSetBooleans");
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

[**IncidentPermissionSetBooleanList**](IncidentPermissionSetBooleanList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateIncidentPermissionSetBoolean"></a>
# **updateIncidentPermissionSetBoolean**
> IncidentPermissionSetBooleanResponse updateIncidentPermissionSetBoolean(id, updateIncidentPermissionSetBoolean)

Update an incident_permission_set_boolean

Update a specific incident_permission_set_boolean by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetBooleansApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetBooleansApi apiInstance = new IncidentPermissionSetBooleansApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateIncidentPermissionSetBoolean updateIncidentPermissionSetBoolean = new UpdateIncidentPermissionSetBoolean(); // UpdateIncidentPermissionSetBoolean | 
    try {
      IncidentPermissionSetBooleanResponse result = apiInstance.updateIncidentPermissionSetBoolean(id, updateIncidentPermissionSetBoolean);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetBooleansApi#updateIncidentPermissionSetBoolean");
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
| **updateIncidentPermissionSetBoolean** | [**UpdateIncidentPermissionSetBoolean**](UpdateIncidentPermissionSetBoolean.md)|  | |

### Return type

[**IncidentPermissionSetBooleanResponse**](IncidentPermissionSetBooleanResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_permission_set_boolean updated |  -  |
| **404** | resource not found |  -  |

