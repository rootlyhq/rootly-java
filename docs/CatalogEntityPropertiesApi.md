# CatalogEntityPropertiesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCatalogEntityProperty**](CatalogEntityPropertiesApi.md#createCatalogEntityProperty) | **POST** /v1/catalog_entities/{catalog_entity_id}/properties | Creates a Catalog Entity Property |
| [**deleteCatalogEntityProperty**](CatalogEntityPropertiesApi.md#deleteCatalogEntityProperty) | **DELETE** /v1/catalog_entity_properties/{id} | Delete a Catalog Entity Property |
| [**getCatalogEntityProperty**](CatalogEntityPropertiesApi.md#getCatalogEntityProperty) | **GET** /v1/catalog_entity_properties/{id} | Retrieves a Catalog Entity Property |
| [**listCatalogEntityProperties**](CatalogEntityPropertiesApi.md#listCatalogEntityProperties) | **GET** /v1/catalog_entities/{catalog_entity_id}/properties | List catalog properties |
| [**updateCatalogEntityProperty**](CatalogEntityPropertiesApi.md#updateCatalogEntityProperty) | **PUT** /v1/catalog_entity_properties/{id} | Update a Catalog Entity Property |


<a id="createCatalogEntityProperty"></a>
# **createCatalogEntityProperty**
> CatalogEntityPropertyResponse createCatalogEntityProperty(catalogEntityId, newCatalogEntityProperty)

Creates a Catalog Entity Property

Creates a new Catalog Entity Property from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogEntityPropertiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogEntityPropertiesApi apiInstance = new CatalogEntityPropertiesApi(defaultClient);
    String catalogEntityId = "catalogEntityId_example"; // String | 
    NewCatalogEntityProperty newCatalogEntityProperty = new NewCatalogEntityProperty(); // NewCatalogEntityProperty | 
    try {
      CatalogEntityPropertyResponse result = apiInstance.createCatalogEntityProperty(catalogEntityId, newCatalogEntityProperty);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogEntityPropertiesApi#createCatalogEntityProperty");
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
| **catalogEntityId** | **String**|  | |
| **newCatalogEntityProperty** | [**NewCatalogEntityProperty**](NewCatalogEntityProperty.md)|  | |

### Return type

[**CatalogEntityPropertyResponse**](CatalogEntityPropertyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | catalog_entity_property created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteCatalogEntityProperty"></a>
# **deleteCatalogEntityProperty**
> CatalogEntityPropertyResponse deleteCatalogEntityProperty(id)

Delete a Catalog Entity Property

Delete a specific Catalog Entity Property by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogEntityPropertiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogEntityPropertiesApi apiInstance = new CatalogEntityPropertiesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      CatalogEntityPropertyResponse result = apiInstance.deleteCatalogEntityProperty(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogEntityPropertiesApi#deleteCatalogEntityProperty");
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

[**CatalogEntityPropertyResponse**](CatalogEntityPropertyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog_entity_property deleted |  -  |
| **404** | resource not found |  -  |

<a id="getCatalogEntityProperty"></a>
# **getCatalogEntityProperty**
> CatalogEntityPropertyResponse getCatalogEntityProperty(id, include)

Retrieves a Catalog Entity Property

Retrieves a specific Catalog Entity Property by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogEntityPropertiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogEntityPropertiesApi apiInstance = new CatalogEntityPropertiesApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "catalog_entity"; // String | comma separated if needed. eg: catalog_entity,catalog_field
    try {
      CatalogEntityPropertyResponse result = apiInstance.getCatalogEntityProperty(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogEntityPropertiesApi#getCatalogEntityProperty");
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
| **include** | **String**| comma separated if needed. eg: catalog_entity,catalog_field | [optional] [enum: catalog_entity, catalog_field] |

### Return type

[**CatalogEntityPropertyResponse**](CatalogEntityPropertyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog_entity_property found |  -  |
| **404** | resource not found |  -  |

<a id="listCatalogEntityProperties"></a>
# **listCatalogEntityProperties**
> CatalogEntityPropertyList listCatalogEntityProperties(catalogEntityId, include, sort, pageNumber, pageSize, filterCatalogFieldId, filterKey, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List catalog properties

List Catalog Entity Properties

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogEntityPropertiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogEntityPropertiesApi apiInstance = new CatalogEntityPropertiesApi(defaultClient);
    String catalogEntityId = "catalogEntityId_example"; // String | 
    String include = "catalog_entity"; // String | comma separated if needed. eg: catalog_entity,catalog_field
    String sort = "created_at"; // String | comma separated if needed. eg: created_at,updated_at
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterCatalogFieldId = "filterCatalogFieldId_example"; // String | 
    String filterKey = "filterKey_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      CatalogEntityPropertyList result = apiInstance.listCatalogEntityProperties(catalogEntityId, include, sort, pageNumber, pageSize, filterCatalogFieldId, filterKey, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogEntityPropertiesApi#listCatalogEntityProperties");
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
| **catalogEntityId** | **String**|  | |
| **include** | **String**| comma separated if needed. eg: catalog_entity,catalog_field | [optional] [enum: catalog_entity, catalog_field] |
| **sort** | **String**| comma separated if needed. eg: created_at,updated_at | [optional] [enum: created_at, -created_at, updated_at, -updated_at] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterCatalogFieldId** | **String**|  | [optional] |
| **filterKey** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**CatalogEntityPropertyList**](CatalogEntityPropertyList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateCatalogEntityProperty"></a>
# **updateCatalogEntityProperty**
> CatalogEntityPropertyResponse updateCatalogEntityProperty(id, updateCatalogEntityProperty)

Update a Catalog Entity Property

Update a specific Catalog Entity Property by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogEntityPropertiesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogEntityPropertiesApi apiInstance = new CatalogEntityPropertiesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateCatalogEntityProperty updateCatalogEntityProperty = new UpdateCatalogEntityProperty(); // UpdateCatalogEntityProperty | 
    try {
      CatalogEntityPropertyResponse result = apiInstance.updateCatalogEntityProperty(id, updateCatalogEntityProperty);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogEntityPropertiesApi#updateCatalogEntityProperty");
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
| **updateCatalogEntityProperty** | [**UpdateCatalogEntityProperty**](UpdateCatalogEntityProperty.md)|  | |

### Return type

[**CatalogEntityPropertyResponse**](CatalogEntityPropertyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog_entity_property updated |  -  |
| **404** | resource not found |  -  |

