# EnvironmentsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createEnvironment**](EnvironmentsApi.md#createEnvironment) | **POST** /v1/environments | Creates an environment |
| [**deleteEnvironment**](EnvironmentsApi.md#deleteEnvironment) | **DELETE** /v1/environments/{id} | Delete an environment |
| [**getEnvironment**](EnvironmentsApi.md#getEnvironment) | **GET** /v1/environments/{id} | Retrieves an environment |
| [**listEnvironments**](EnvironmentsApi.md#listEnvironments) | **GET** /v1/environments | List environments |
| [**updateEnvironment**](EnvironmentsApi.md#updateEnvironment) | **PUT** /v1/environments/{id} | Update an environment |


<a id="createEnvironment"></a>
# **createEnvironment**
> EnvironmentResponse createEnvironment(newEnvironment)

Creates an environment

Creates a new environment from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EnvironmentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EnvironmentsApi apiInstance = new EnvironmentsApi(defaultClient);
    NewEnvironment newEnvironment = new NewEnvironment(); // NewEnvironment | 
    try {
      EnvironmentResponse result = apiInstance.createEnvironment(newEnvironment);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EnvironmentsApi#createEnvironment");
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
| **newEnvironment** | [**NewEnvironment**](NewEnvironment.md)|  | |

### Return type

[**EnvironmentResponse**](EnvironmentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | environment created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteEnvironment"></a>
# **deleteEnvironment**
> EnvironmentResponse deleteEnvironment(id)

Delete an environment

Delete a specific environment by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EnvironmentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EnvironmentsApi apiInstance = new EnvironmentsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      EnvironmentResponse result = apiInstance.deleteEnvironment(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EnvironmentsApi#deleteEnvironment");
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

[**EnvironmentResponse**](EnvironmentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | environment deleted |  -  |
| **404** | resource not found |  -  |

<a id="getEnvironment"></a>
# **getEnvironment**
> EnvironmentResponse getEnvironment(id)

Retrieves an environment

Retrieves a specific environment by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EnvironmentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EnvironmentsApi apiInstance = new EnvironmentsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      EnvironmentResponse result = apiInstance.getEnvironment(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EnvironmentsApi#getEnvironment");
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

[**EnvironmentResponse**](EnvironmentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | environment found |  -  |
| **404** | resource not found |  -  |

<a id="listEnvironments"></a>
# **listEnvironments**
> EnvironmentList listEnvironments(include, pageNumber, pageSize, filterSearch, filterSlug, filterName, filterColor, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

List environments

List environments

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EnvironmentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EnvironmentsApi apiInstance = new EnvironmentsApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterColor = "filterColor_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      EnvironmentList result = apiInstance.listEnvironments(include, pageNumber, pageSize, filterSearch, filterSlug, filterName, filterColor, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EnvironmentsApi#listEnvironments");
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
| **filterColor** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**EnvironmentList**](EnvironmentList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateEnvironment"></a>
# **updateEnvironment**
> EnvironmentResponse updateEnvironment(id, updateEnvironment)

Update an environment

Update a specific environment by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.EnvironmentsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    EnvironmentsApi apiInstance = new EnvironmentsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateEnvironment updateEnvironment = new UpdateEnvironment(); // UpdateEnvironment | 
    try {
      EnvironmentResponse result = apiInstance.updateEnvironment(id, updateEnvironment);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EnvironmentsApi#updateEnvironment");
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
| **updateEnvironment** | [**UpdateEnvironment**](UpdateEnvironment.md)|  | |

### Return type

[**EnvironmentResponse**](EnvironmentResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | environment updated |  -  |
| **404** | resource not found |  -  |

