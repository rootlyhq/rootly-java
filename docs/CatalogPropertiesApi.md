# CatalogPropertiesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCatalogProperty**](CatalogPropertiesApi.md#createCatalogProperty) | **POST** /v1/catalogs/{catalog_id}/properties | Creates a Catalog Property (alias for field) |
| [**deleteCatalogProperty**](CatalogPropertiesApi.md#deleteCatalogProperty) | **DELETE** /v1/catalog_properties/{id} | Delete a catalog_property |
| [**getCatalogProperty**](CatalogPropertiesApi.md#getCatalogProperty) | **GET** /v1/catalog_properties/{id} | Retrieves a Catalog Property (alias for field) |
| [**listCatalogProperties**](CatalogPropertiesApi.md#listCatalogProperties) | **GET** /v1/catalogs/{catalog_id}/properties | List Catalog Properties (alias for fields) |
| [**updateCatalogProperty**](CatalogPropertiesApi.md#updateCatalogProperty) | **PUT** /v1/catalog_properties/{id} | Update a catalog_property (alias for field) |


<a id="createCatalogProperty"></a>
# **createCatalogProperty**
> createCatalogProperty(catalogId, newCatalogField)

Creates a Catalog Property (alias for field)

Creates a new Catalog Property - returns catalog_properties type

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogPropertiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogPropertiesApi apiInstance = new CatalogPropertiesApi(defaultClient);
    String catalogId = "catalogId_example"; // String | 
    NewCatalogField newCatalogField = new NewCatalogField(); // NewCatalogField | 
    try {
      apiInstance.createCatalogProperty(catalogId, newCatalogField);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogPropertiesApi#createCatalogProperty");
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
| **catalogId** | **String**|  | |
| **newCatalogField** | [**NewCatalogField**](NewCatalogField.md)|  | |

### Return type

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | catalog_property created |  -  |

<a id="deleteCatalogProperty"></a>
# **deleteCatalogProperty**
> deleteCatalogProperty(id)

Delete a catalog_property

Delete a specific catalog_property by id - returns catalog_properties type

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogPropertiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogPropertiesApi apiInstance = new CatalogPropertiesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      apiInstance.deleteCatalogProperty(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogPropertiesApi#deleteCatalogProperty");
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
| **200** | catalog_property deleted |  -  |

<a id="getCatalogProperty"></a>
# **getCatalogProperty**
> getCatalogProperty(id)

Retrieves a Catalog Property (alias for field)

Retrieves a specific Catalog Property by id - returns catalog_properties type

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogPropertiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogPropertiesApi apiInstance = new CatalogPropertiesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      apiInstance.getCatalogProperty(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogPropertiesApi#getCatalogProperty");
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
| **200** | catalog_property found |  -  |

<a id="listCatalogProperties"></a>
# **listCatalogProperties**
> listCatalogProperties(catalogId)

List Catalog Properties (alias for fields)

List Catalog Properties - returns catalog_properties type

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogPropertiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogPropertiesApi apiInstance = new CatalogPropertiesApi(defaultClient);
    String catalogId = "catalogId_example"; // String | 
    try {
      apiInstance.listCatalogProperties(catalogId);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogPropertiesApi#listCatalogProperties");
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
| **catalogId** | **String**|  | |

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
| **200** | success with catalog_properties type |  -  |

<a id="updateCatalogProperty"></a>
# **updateCatalogProperty**
> updateCatalogProperty(id, updateCatalogField)

Update a catalog_property (alias for field)

Update a specific catalog_property by id - returns catalog_properties type

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogPropertiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogPropertiesApi apiInstance = new CatalogPropertiesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateCatalogField updateCatalogField = new UpdateCatalogField(); // UpdateCatalogField | 
    try {
      apiInstance.updateCatalogProperty(id, updateCatalogField);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogPropertiesApi#updateCatalogProperty");
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
| **updateCatalogField** | [**UpdateCatalogField**](UpdateCatalogField.md)|  | |

### Return type

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog_property updated |  -  |

