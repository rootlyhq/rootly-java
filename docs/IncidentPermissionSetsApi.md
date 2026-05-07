# IncidentPermissionSetsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIncidentPermissionSet**](IncidentPermissionSetsApi.md#createIncidentPermissionSet) | **POST** /v1/incident_permission_sets | Creates an incident_permission_set |
| [**deleteIncidentPermissionSet**](IncidentPermissionSetsApi.md#deleteIncidentPermissionSet) | **DELETE** /v1/incident_permission_sets/{id} | Delete an incident_permission_set |
| [**getIncidentPermissionSet**](IncidentPermissionSetsApi.md#getIncidentPermissionSet) | **GET** /v1/incident_permission_sets/{id} | Retrieves an incident_permission_set |
| [**listIncidentPermissionSets**](IncidentPermissionSetsApi.md#listIncidentPermissionSets) | **GET** /v1/incident_permission_sets | List incident_permission_sets |
| [**updateIncidentPermissionSet**](IncidentPermissionSetsApi.md#updateIncidentPermissionSet) | **PUT** /v1/incident_permission_sets/{id} | Update an incident_permission_set |


<a id="createIncidentPermissionSet"></a>
# **createIncidentPermissionSet**
> IncidentPermissionSetResponse createIncidentPermissionSet(newIncidentPermissionSet)

Creates an incident_permission_set

Creates a new incident_permission_set from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetsApi apiInstance = new IncidentPermissionSetsApi(defaultClient);
    NewIncidentPermissionSet newIncidentPermissionSet = new NewIncidentPermissionSet(); // NewIncidentPermissionSet | 
    try {
      IncidentPermissionSetResponse result = apiInstance.createIncidentPermissionSet(newIncidentPermissionSet);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetsApi#createIncidentPermissionSet");
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
| **newIncidentPermissionSet** | [**NewIncidentPermissionSet**](NewIncidentPermissionSet.md)|  | |

### Return type

[**IncidentPermissionSetResponse**](IncidentPermissionSetResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident_permission_set created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteIncidentPermissionSet"></a>
# **deleteIncidentPermissionSet**
> IncidentPermissionSetResponse deleteIncidentPermissionSet(id)

Delete an incident_permission_set

Delete a specific incident_permission_set by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetsApi apiInstance = new IncidentPermissionSetsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      IncidentPermissionSetResponse result = apiInstance.deleteIncidentPermissionSet(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetsApi#deleteIncidentPermissionSet");
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |

### Return type

[**IncidentPermissionSetResponse**](IncidentPermissionSetResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_permission_set deleted |  -  |
| **404** | resource not found |  -  |

<a id="getIncidentPermissionSet"></a>
# **getIncidentPermissionSet**
> IncidentPermissionSetResponse getIncidentPermissionSet(id)

Retrieves an incident_permission_set

Retrieves a specific incident_permission_set by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetsApi apiInstance = new IncidentPermissionSetsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      IncidentPermissionSetResponse result = apiInstance.getIncidentPermissionSet(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetsApi#getIncidentPermissionSet");
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |

### Return type

[**IncidentPermissionSetResponse**](IncidentPermissionSetResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_permission_set found |  -  |
| **404** | resource not found |  -  |

<a id="listIncidentPermissionSets"></a>
# **listIncidentPermissionSets**
> IncidentPermissionSetList listIncidentPermissionSets(include, pageNumber, pageSize, filterSearch, filterSlug, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

List incident_permission_sets

List incident_permission_sets

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetsApi apiInstance = new IncidentPermissionSetsApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      IncidentPermissionSetList result = apiInstance.listIncidentPermissionSets(include, pageNumber, pageSize, filterSearch, filterSlug, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetsApi#listIncidentPermissionSets");
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
| **filterSlug** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**IncidentPermissionSetList**](IncidentPermissionSetList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateIncidentPermissionSet"></a>
# **updateIncidentPermissionSet**
> IncidentPermissionSetResponse updateIncidentPermissionSet(id, updateIncidentPermissionSet)

Update an incident_permission_set

Update a specific incident_permission_set by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentPermissionSetsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentPermissionSetsApi apiInstance = new IncidentPermissionSetsApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    UpdateIncidentPermissionSet updateIncidentPermissionSet = new UpdateIncidentPermissionSet(); // UpdateIncidentPermissionSet | 
    try {
      IncidentPermissionSetResponse result = apiInstance.updateIncidentPermissionSet(id, updateIncidentPermissionSet);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentPermissionSetsApi#updateIncidentPermissionSet");
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
| **updateIncidentPermissionSet** | [**UpdateIncidentPermissionSet**](UpdateIncidentPermissionSet.md)|  | |

### Return type

[**IncidentPermissionSetResponse**](IncidentPermissionSetResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_permission_set updated |  -  |
| **404** | resource not found |  -  |

