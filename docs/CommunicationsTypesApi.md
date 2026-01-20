# CommunicationsTypesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCommunicationsType**](CommunicationsTypesApi.md#createCommunicationsType) | **POST** /v1/communications/types | Creates a communications type |
| [**deleteCommunicationsType**](CommunicationsTypesApi.md#deleteCommunicationsType) | **DELETE** /v1/communications/types/{id} | Deletes a communications type |
| [**getCommunicationsType**](CommunicationsTypesApi.md#getCommunicationsType) | **GET** /v1/communications/types/{id} | Shows a communications type |
| [**listCommunicationsTypes**](CommunicationsTypesApi.md#listCommunicationsTypes) | **GET** /v1/communications/types | Lists communications types |
| [**updateCommunicationsType**](CommunicationsTypesApi.md#updateCommunicationsType) | **PATCH** /v1/communications/types/{id} | Updates a communications type |


<a id="createCommunicationsType"></a>
# **createCommunicationsType**
> CommunicationsTypeResponse createCommunicationsType(newCommunicationsType)

Creates a communications type

Creates a new communications type from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsTypesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsTypesApi apiInstance = new CommunicationsTypesApi(defaultClient);
    NewCommunicationsType newCommunicationsType = new NewCommunicationsType(); // NewCommunicationsType | 
    try {
      CommunicationsTypeResponse result = apiInstance.createCommunicationsType(newCommunicationsType);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsTypesApi#createCommunicationsType");
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
| **newCommunicationsType** | [**NewCommunicationsType**](NewCommunicationsType.md)|  | |

### Return type

[**CommunicationsTypeResponse**](CommunicationsTypeResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | communications type created |  -  |
| **422** | invalid request |  -  |

<a id="deleteCommunicationsType"></a>
# **deleteCommunicationsType**
> deleteCommunicationsType(id)

Deletes a communications type

Deletes a communications type

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsTypesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsTypesApi apiInstance = new CommunicationsTypesApi(defaultClient);
    String id = "id_example"; // String | Communications Type ID
    try {
      apiInstance.deleteCommunicationsType(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsTypesApi#deleteCommunicationsType");
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
| **id** | **String**| Communications Type ID | |

### Return type

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | communications type deleted |  -  |
| **404** | communications type not found |  -  |

<a id="getCommunicationsType"></a>
# **getCommunicationsType**
> CommunicationsTypeResponse getCommunicationsType(id)

Shows a communications type

Shows details of a communications type

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsTypesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsTypesApi apiInstance = new CommunicationsTypesApi(defaultClient);
    String id = "id_example"; // String | Communications Type ID
    try {
      CommunicationsTypeResponse result = apiInstance.getCommunicationsType(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsTypesApi#getCommunicationsType");
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
| **id** | **String**| Communications Type ID | |

### Return type

[**CommunicationsTypeResponse**](CommunicationsTypeResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | communications type found |  -  |
| **404** | communications type not found |  -  |

<a id="listCommunicationsTypes"></a>
# **listCommunicationsTypes**
> CommunicationsTypesResponse listCommunicationsTypes(pageNumber, pageSize, filterSearch, filterName, filterSlug, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

Lists communications types

Lists communications types

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsTypesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsTypesApi apiInstance = new CommunicationsTypesApi(defaultClient);
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      CommunicationsTypesResponse result = apiInstance.listCommunicationsTypes(pageNumber, pageSize, filterSearch, filterName, filterSlug, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsTypesApi#listCommunicationsTypes");
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
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSearch** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**CommunicationsTypesResponse**](CommunicationsTypesResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | communications types found |  -  |

<a id="updateCommunicationsType"></a>
# **updateCommunicationsType**
> CommunicationsTypeResponse updateCommunicationsType(id, updateCommunicationsType)

Updates a communications type

Updates a communications type

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsTypesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsTypesApi apiInstance = new CommunicationsTypesApi(defaultClient);
    String id = "id_example"; // String | Communications Type ID
    UpdateCommunicationsType updateCommunicationsType = new UpdateCommunicationsType(); // UpdateCommunicationsType | 
    try {
      CommunicationsTypeResponse result = apiInstance.updateCommunicationsType(id, updateCommunicationsType);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsTypesApi#updateCommunicationsType");
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
| **id** | **String**| Communications Type ID | |
| **updateCommunicationsType** | [**UpdateCommunicationsType**](UpdateCommunicationsType.md)|  | |

### Return type

[**CommunicationsTypeResponse**](CommunicationsTypeResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | communications type updated |  -  |
| **422** | invalid request |  -  |

