# CatalogFieldsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCatalogField**](CatalogFieldsApi.md#createCatalogField) | **POST** /v1/catalogs/{catalog_id}/fields | Creates a Catalog Field |
| [**deleteCatalogField**](CatalogFieldsApi.md#deleteCatalogField) | **DELETE** /v1/catalog_fields/{id} | Delete a catalog_field |
| [**getCatalogField**](CatalogFieldsApi.md#getCatalogField) | **GET** /v1/catalog_fields/{id} | Retrieves a Catalog Field |
| [**listCatalogFields**](CatalogFieldsApi.md#listCatalogFields) | **GET** /v1/catalogs/{catalog_id}/fields | List Catalog Fields |
| [**updateCatalogField**](CatalogFieldsApi.md#updateCatalogField) | **PUT** /v1/catalog_fields/{id} | Update a catalog_field |


<a id="createCatalogField"></a>
# **createCatalogField**
> CatalogFieldResponse createCatalogField(catalogId, newCatalogField)

Creates a Catalog Field

Creates a new Catalog Field from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogFieldsApi apiInstance = new CatalogFieldsApi(defaultClient);
    String catalogId = "catalogId_example"; // String | 
    NewCatalogField newCatalogField = new NewCatalogField(); // NewCatalogField | 
    try {
      CatalogFieldResponse result = apiInstance.createCatalogField(catalogId, newCatalogField);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogFieldsApi#createCatalogField");
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

[**CatalogFieldResponse**](CatalogFieldResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | catalog_field created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteCatalogField"></a>
# **deleteCatalogField**
> CatalogFieldResponse deleteCatalogField(id)

Delete a catalog_field

Delete a specific catalog_field by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogFieldsApi apiInstance = new CatalogFieldsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      CatalogFieldResponse result = apiInstance.deleteCatalogField(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogFieldsApi#deleteCatalogField");
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

[**CatalogFieldResponse**](CatalogFieldResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog_field deleted |  -  |
| **404** | resource not found |  -  |

<a id="getCatalogField"></a>
# **getCatalogField**
> CatalogFieldResponse getCatalogField(id, include)

Retrieves a Catalog Field

Retrieves a specific Catalog Field by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogFieldsApi apiInstance = new CatalogFieldsApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "catalog"; // String | comma separated if needed. eg: catalog
    try {
      CatalogFieldResponse result = apiInstance.getCatalogField(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogFieldsApi#getCatalogField");
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
| **include** | **String**| comma separated if needed. eg: catalog | [optional] [enum: catalog] |

### Return type

[**CatalogFieldResponse**](CatalogFieldResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog_field found |  -  |
| **404** | resource not found |  -  |

<a id="listCatalogFields"></a>
# **listCatalogFields**
> CatalogFieldList listCatalogFields(catalogId, include, sort, pageNumber, pageSize, filterSlug, filterName, filterKind, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List Catalog Fields

List Catalog Fields

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogFieldsApi apiInstance = new CatalogFieldsApi(defaultClient);
    String catalogId = "catalogId_example"; // String | 
    String include = "catalog"; // String | comma separated if needed. eg: catalog
    String sort = "created_at"; // String | comma separated if needed. eg: created_at,updated_at
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterKind = "filterKind_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      CatalogFieldList result = apiInstance.listCatalogFields(catalogId, include, sort, pageNumber, pageSize, filterSlug, filterName, filterKind, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogFieldsApi#listCatalogFields");
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
| **include** | **String**| comma separated if needed. eg: catalog | [optional] [enum: catalog] |
| **sort** | **String**| comma separated if needed. eg: created_at,updated_at | [optional] [enum: created_at, -created_at, updated_at, -updated_at, position, -position] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterKind** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**CatalogFieldList**](CatalogFieldList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateCatalogField"></a>
# **updateCatalogField**
> CatalogFieldResponse updateCatalogField(id, updateCatalogField)

Update a catalog_field

Update a specific catalog_field by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogFieldsApi apiInstance = new CatalogFieldsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateCatalogField updateCatalogField = new UpdateCatalogField(); // UpdateCatalogField | 
    try {
      CatalogFieldResponse result = apiInstance.updateCatalogField(id, updateCatalogField);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogFieldsApi#updateCatalogField");
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

[**CatalogFieldResponse**](CatalogFieldResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog_field updated |  -  |
| **404** | resource not found |  -  |

