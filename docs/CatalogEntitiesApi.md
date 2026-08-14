# CatalogEntitiesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**bulkDeleteCatalogEntities**](CatalogEntitiesApi.md#bulkDeleteCatalogEntities) | **POST** /v1/catalogs/{catalog_id}/entities/bulk_delete | Bulk delete Catalog Entities |
| [**bulkUpsertCatalogEntities**](CatalogEntitiesApi.md#bulkUpsertCatalogEntities) | **POST** /v1/catalogs/{catalog_id}/entities/bulk_upsert | Bulk upsert Catalog Entities |
| [**createCatalogEntity**](CatalogEntitiesApi.md#createCatalogEntity) | **POST** /v1/catalogs/{catalog_id}/entities | Creates a Catalog Entity |
| [**deleteCatalogEntity**](CatalogEntitiesApi.md#deleteCatalogEntity) | **DELETE** /v1/catalog_entities/{id} | Delete a Catalog Entity |
| [**getCatalogEntity**](CatalogEntitiesApi.md#getCatalogEntity) | **GET** /v1/catalog_entities/{id} | Retrieves a Catalog Entity |
| [**listCatalogEntities**](CatalogEntitiesApi.md#listCatalogEntities) | **GET** /v1/catalogs/{catalog_id}/entities | List Catalog Entities |
| [**updateCatalogEntity**](CatalogEntitiesApi.md#updateCatalogEntity) | **PUT** /v1/catalog_entities/{id} | Update a Catalog Entity |


<a id="bulkDeleteCatalogEntities"></a>
# **bulkDeleteCatalogEntities**
> BulkDestroyCatalogEntitiesResponse bulkDeleteCatalogEntities(catalogId, bulkDestroyCatalogEntities)

Bulk delete Catalog Entities

Delete catalog entities by external_id list, or prune by managed_by source. Two mutually exclusive modes.

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
    BulkDestroyCatalogEntities bulkDestroyCatalogEntities = new BulkDestroyCatalogEntities(); // BulkDestroyCatalogEntities | 
    try {
      BulkDestroyCatalogEntitiesResponse result = apiInstance.bulkDeleteCatalogEntities(catalogId, bulkDestroyCatalogEntities);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogEntitiesApi#bulkDeleteCatalogEntities");
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
| **bulkDestroyCatalogEntities** | [**BulkDestroyCatalogEntities**](BulkDestroyCatalogEntities.md)|  | |

### Return type

[**BulkDestroyCatalogEntitiesResponse**](BulkDestroyCatalogEntitiesResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | entities deleted successfully |  -  |
| **422** | validation or partial-failure error |  -  |
| **401** | unauthorized |  -  |

<a id="bulkUpsertCatalogEntities"></a>
# **bulkUpsertCatalogEntities**
> BulkUpsertCatalogEntitiesResponse bulkUpsertCatalogEntities(catalogId, bulkUpsertCatalogEntities)

Bulk upsert Catalog Entities

Create or update multiple catalog entities by external_id. Only attributes present in the payload are written (managed-fields semantics). Transactional: all succeed or all fail.

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
    BulkUpsertCatalogEntities bulkUpsertCatalogEntities = new BulkUpsertCatalogEntities(); // BulkUpsertCatalogEntities | 
    try {
      BulkUpsertCatalogEntitiesResponse result = apiInstance.bulkUpsertCatalogEntities(catalogId, bulkUpsertCatalogEntities);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogEntitiesApi#bulkUpsertCatalogEntities");
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
| **bulkUpsertCatalogEntities** | [**BulkUpsertCatalogEntities**](BulkUpsertCatalogEntities.md)|  | |

### Return type

[**BulkUpsertCatalogEntitiesResponse**](BulkUpsertCatalogEntitiesResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | entities upserted successfully |  -  |
| **422** | validation or entity-level error |  -  |
| **401** | unauthorized |  -  |

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
| **201** | catalog_entity created with fields attribute |  -  |
| **422** | rejects entity with invalid catalog_field_id |  -  |
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
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |

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
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
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
| **200** | catalog_entity found by slug |  -  |
| **404** | resource not found |  -  |

<a id="listCatalogEntities"></a>
# **listCatalogEntities**
> CatalogEntityList listCatalogEntities(catalogId, include, sort, pageNumber, pageSize, filterSearch, filterSlug, filterName, filterBackstageId, filterExternalId, filterManagedBy, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterSlugEq, filterSlugNotEq, filterSlugIn, filterSlugNotIn, filterNameEq, filterNameNotEq, filterNameIn, filterNameNotIn, filterManagedByEq, filterManagedByNotEq, filterManagedByIn, filterManagedByNotIn)

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
    String filterSearch = "filterSearch_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterBackstageId = "filterBackstageId_example"; // String | 
    String filterExternalId = "filterExternalId_example"; // String | 
    String filterManagedBy = "filterManagedBy_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String filterSlugEq = "filterSlugEq_example"; // String | 
    String filterSlugNotEq = "filterSlugNotEq_example"; // String | 
    String filterSlugIn = "filterSlugIn_example"; // String | 
    String filterSlugNotIn = "filterSlugNotIn_example"; // String | 
    String filterNameEq = "filterNameEq_example"; // String | 
    String filterNameNotEq = "filterNameNotEq_example"; // String | 
    String filterNameIn = "filterNameIn_example"; // String | 
    String filterNameNotIn = "filterNameNotIn_example"; // String | 
    String filterManagedByEq = "filterManagedByEq_example"; // String | 
    String filterManagedByNotEq = "filterManagedByNotEq_example"; // String | 
    String filterManagedByIn = "filterManagedByIn_example"; // String | 
    String filterManagedByNotIn = "filterManagedByNotIn_example"; // String | 
    try {
      CatalogEntityList result = apiInstance.listCatalogEntities(catalogId, include, sort, pageNumber, pageSize, filterSearch, filterSlug, filterName, filterBackstageId, filterExternalId, filterManagedBy, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterSlugEq, filterSlugNotEq, filterSlugIn, filterSlugNotIn, filterNameEq, filterNameNotEq, filterNameIn, filterNameNotIn, filterManagedByEq, filterManagedByNotEq, filterManagedByIn, filterManagedByNotIn);
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
| **filterSearch** | **String**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterBackstageId** | **String**|  | [optional] |
| **filterExternalId** | **String**|  | [optional] |
| **filterManagedBy** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **filterSlugEq** | **String**|  | [optional] |
| **filterSlugNotEq** | **String**|  | [optional] |
| **filterSlugIn** | **String**|  | [optional] |
| **filterSlugNotIn** | **String**|  | [optional] |
| **filterNameEq** | **String**|  | [optional] |
| **filterNameNotEq** | **String**|  | [optional] |
| **filterNameIn** | **String**|  | [optional] |
| **filterNameNotIn** | **String**|  | [optional] |
| **filterManagedByEq** | **String**|  | [optional] |
| **filterManagedByNotEq** | **String**|  | [optional] |
| **filterManagedByIn** | **String**|  | [optional] |
| **filterManagedByNotIn** | **String**|  | [optional] |

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
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
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
| **id** | [**GetAlertFieldIdParameter**](.md)|  | |
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
| **200** | catalog_entity update replaces existing properties |  -  |
| **404** | resource not found |  -  |

