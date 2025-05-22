# OnCallRolesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createOnCallRole**](OnCallRolesApi.md#createOnCallRole) | **POST** /v1/on_call_roles | Creates an On-Call Role |
| [**deleteOnCallRole**](OnCallRolesApi.md#deleteOnCallRole) | **DELETE** /v1/on_call_roles/{id} | Delete an On-Call Role |
| [**getOnCallRole**](OnCallRolesApi.md#getOnCallRole) | **GET** /v1/on_call_roles/{id} | Retrieves an On-Call Role |
| [**listOnCallRoles**](OnCallRolesApi.md#listOnCallRoles) | **GET** /v1/on_call_roles | List On-Call Roles |
| [**updateOnCallRole**](OnCallRolesApi.md#updateOnCallRole) | **PUT** /v1/on_call_roles/{id} | Update an On-Call Role |


<a id="createOnCallRole"></a>
# **createOnCallRole**
> OnCallRoleResponse createOnCallRole(newOnCallRole)

Creates an On-Call Role

Creates a new On-Call Role from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallRolesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallRolesApi apiInstance = new OnCallRolesApi(defaultClient);
    NewOnCallRole newOnCallRole = new NewOnCallRole(); // NewOnCallRole | 
    try {
      OnCallRoleResponse result = apiInstance.createOnCallRole(newOnCallRole);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallRolesApi#createOnCallRole");
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
| **newOnCallRole** | [**NewOnCallRole**](NewOnCallRole.md)|  | |

### Return type

[**OnCallRoleResponse**](OnCallRoleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | on_call_role created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteOnCallRole"></a>
# **deleteOnCallRole**
> OnCallRoleResponse deleteOnCallRole(id)

Delete an On-Call Role

Delete a specific On-Call Role by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallRolesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallRolesApi apiInstance = new OnCallRolesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      OnCallRoleResponse result = apiInstance.deleteOnCallRole(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallRolesApi#deleteOnCallRole");
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

[**OnCallRoleResponse**](OnCallRoleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | on_call_role deleted |  -  |
| **404** | resource not found |  -  |

<a id="getOnCallRole"></a>
# **getOnCallRole**
> OnCallRoleResponse getOnCallRole(id)

Retrieves an On-Call Role

Retrieves a specific On-Call Role by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallRolesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallRolesApi apiInstance = new OnCallRolesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      OnCallRoleResponse result = apiInstance.getOnCallRole(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallRolesApi#getOnCallRole");
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

[**OnCallRoleResponse**](OnCallRoleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | on_call_role found |  -  |
| **404** | resource not found |  -  |

<a id="listOnCallRoles"></a>
# **listOnCallRoles**
> OnCallRoleList listOnCallRoles(include, pageNumber, pageSize, filterSearch, filterSlug, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

List On-Call Roles

List On-Call Roles

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallRolesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallRolesApi apiInstance = new OnCallRolesApi(defaultClient);
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
      OnCallRoleList result = apiInstance.listOnCallRoles(include, pageNumber, pageSize, filterSearch, filterSlug, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallRolesApi#listOnCallRoles");
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

[**OnCallRoleList**](OnCallRoleList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateOnCallRole"></a>
# **updateOnCallRole**
> OnCallRoleResponse updateOnCallRole(id, updateOnCallRole)

Update an On-Call Role

Update a specific On-Call Role by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallRolesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallRolesApi apiInstance = new OnCallRolesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateOnCallRole updateOnCallRole = new UpdateOnCallRole(); // UpdateOnCallRole | 
    try {
      OnCallRoleResponse result = apiInstance.updateOnCallRole(id, updateOnCallRole);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallRolesApi#updateOnCallRole");
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
| **updateOnCallRole** | [**UpdateOnCallRole**](UpdateOnCallRole.md)|  | |

### Return type

[**OnCallRoleResponse**](OnCallRoleResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | on_call_role updated |  -  |
| **404** | resource not found |  -  |

