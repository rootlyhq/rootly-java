# CatalogEntitiesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCatalogEntity**](CatalogEntitiesApi.md#createCatalogEntity) | **POST** /v1/catalogs/{catalog_id}/entities | Creates a Catalog Entity |
| [**deleteCatalogEntity**](CatalogEntitiesApi.md#deleteCatalogEntity) | **DELETE** /v1/catalog_entities/{id} | Delete a Catalog Entity |
| [**getCatalogEntity**](CatalogEntitiesApi.md#getCatalogEntity) | **GET** /v1/catalog_entities/{id} | Retrieves a Catalog Entity |
| [**listCatalogEntities**](CatalogEntitiesApi.md#listCatalogEntities) | **GET** /v1/catalogs/{catalog_id}/entities | List Catalog Entities |
| [**updateCatalogEntity**](CatalogEntitiesApi.md#updateCatalogEntity) | **PUT** /v1/catalog_entities/{id} | Update a Catalog Entity |


<a id="createCatalogEntity"></a>
# **createCatalogEntity**
> CatalogEntityResponse createCatalogEntity(catalogId, newCatalogEntity)

Creates a Catalog Entity

Creates a new Catalog Entity from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogEntitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogEntitiesApi apiInstance = new CatalogEntitiesApi(defaultClient);
    String catalogId = "catalogId_example"; // String | 
    NewCatalogEntity newCatalogEntity = new NewCatalogEntity(); // NewCatalogEntity | 
    try {
      CatalogEntityResponse result = apiInstance.createCatalogEntity(catalogId, newCatalogEntity);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogEntitiesApi#createCatalogEntity");
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
| **newCatalogEntity** | [**NewCatalogEntity**](NewCatalogEntity.md)|  | |

### Return type

[**CatalogEntityResponse**](CatalogEntityResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | catalog_entity created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteCatalogEntity"></a>
# **deleteCatalogEntity**
> CatalogEntityResponse deleteCatalogEntity(id)

Delete a Catalog Entity

Delete a specific Catalog Entity by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogEntitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogEntitiesApi apiInstance = new CatalogEntitiesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      CatalogEntityResponse result = apiInstance.deleteCatalogEntity(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogEntitiesApi#deleteCatalogEntity");
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

[**CatalogEntityResponse**](CatalogEntityResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog_entity deleted |  -  |
| **404** | resource not found |  -  |

<a id="getCatalogEntity"></a>
# **getCatalogEntity**
> CatalogEntityResponse getCatalogEntity(id, include)

Retrieves a Catalog Entity

Retrieves a specific Catalog Entity by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogEntitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogEntitiesApi apiInstance = new CatalogEntitiesApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "catalog"; // String | comma separated if needed. eg: catalog,properties
    try {
      CatalogEntityResponse result = apiInstance.getCatalogEntity(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogEntitiesApi#getCatalogEntity");
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
| **include** | **String**| comma separated if needed. eg: catalog,properties | [optional] [enum: catalog, properties] |

### Return type

[**CatalogEntityResponse**](CatalogEntityResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog_entity found |  -  |
| **404** | resource not found |  -  |

<a id="listCatalogEntities"></a>
# **listCatalogEntities**
> CatalogEntityList listCatalogEntities(catalogId, include, sort, pageNumber, pageSize, filterSlug, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List Catalog Entities

List Catalog Entities

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogEntitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogEntitiesApi apiInstance = new CatalogEntitiesApi(defaultClient);
    String catalogId = "catalogId_example"; // String | 
    String include = "catalog"; // String | comma separated if needed. eg: catalog,properties
    String sort = "created_at"; // String | comma separated if needed. eg: created_at,updated_at
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      CatalogEntityList result = apiInstance.listCatalogEntities(catalogId, include, sort, pageNumber, pageSize, filterSlug, filterName, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogEntitiesApi#listCatalogEntities");
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
| **include** | **String**| comma separated if needed. eg: catalog,properties | [optional] [enum: catalog, properties] |
| **sort** | **String**| comma separated if needed. eg: created_at,updated_at | [optional] [enum: created_at, -created_at, updated_at, -updated_at, position, -position] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**CatalogEntityList**](CatalogEntityList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateCatalogEntity"></a>
# **updateCatalogEntity**
> CatalogEntityResponse updateCatalogEntity(id, updateCatalogEntity)

Update a Catalog Entity

Update a specific Catalog Entity by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogEntitiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogEntitiesApi apiInstance = new CatalogEntitiesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateCatalogEntity updateCatalogEntity = new UpdateCatalogEntity(); // UpdateCatalogEntity | 
    try {
      CatalogEntityResponse result = apiInstance.updateCatalogEntity(id, updateCatalogEntity);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogEntitiesApi#updateCatalogEntity");
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
| **updateCatalogEntity** | [**UpdateCatalogEntity**](UpdateCatalogEntity.md)|  | |

### Return type

[**CatalogEntityResponse**](CatalogEntityResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog_entity updated |  -  |
| **404** | resource not found |  -  |

