# ServicesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**bulkDeleteServices**](ServicesApi.md#bulkDeleteServices) | **POST** /v1/services/bulk_delete | Bulk delete Services |
| [**bulkUpsertServices**](ServicesApi.md#bulkUpsertServices) | **POST** /v1/services/bulk_upsert | Bulk upsert Services |
| [**createService**](ServicesApi.md#createService) | **POST** /v1/services | Creates a service |
| [**createServiceCatalogProperty**](ServicesApi.md#createServiceCatalogProperty) | **POST** /v1/services/properties | Creates a Catalog Property |
| [**deleteService**](ServicesApi.md#deleteService) | **DELETE** /v1/services/{id} | Delete a service |
| [**getService**](ServicesApi.md#getService) | **GET** /v1/services/{id} | Retrieves a service |
| [**getServiceIncidentsChart**](ServicesApi.md#getServiceIncidentsChart) | **GET** /v1/services/{id}/incidents_chart | Get service incidents chart |
| [**getServiceUptimeChart**](ServicesApi.md#getServiceUptimeChart) | **GET** /v1/services/{id}/uptime_chart | Get service uptime chart |
| [**listServiceCatalogProperties**](ServicesApi.md#listServiceCatalogProperties) | **GET** /v1/services/properties | List Catalog Properties |
| [**listServices**](ServicesApi.md#listServices) | **GET** /v1/services | List services |
| [**updateService**](ServicesApi.md#updateService) | **PUT** /v1/services/{id} | Update a service |


<a id="bulkDeleteServices"></a>
# **bulkDeleteServices**
> BulkDestroyServicesResponse bulkDeleteServices(bulkDestroyServices)

Bulk delete Services

Delete services by external_id list, or prune by managed_by source. Two mutually exclusive modes.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ServicesApi apiInstance = new ServicesApi(defaultClient);
    BulkDestroyServices bulkDestroyServices = new BulkDestroyServices(); // BulkDestroyServices | 
    try {
      BulkDestroyServicesResponse result = apiInstance.bulkDeleteServices(bulkDestroyServices);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ServicesApi#bulkDeleteServices");
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
| **bulkDestroyServices** | [**BulkDestroyServices**](BulkDestroyServices.md)|  | |

### Return type

[**BulkDestroyServicesResponse**](BulkDestroyServicesResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | records deleted successfully |  -  |
| **422** | validation or partial-failure error |  -  |
| **401** | unauthorized |  -  |

<a id="bulkUpsertServices"></a>
# **bulkUpsertServices**
> BulkUpsertServicesResponse bulkUpsertServices(bulkUpsertServices)

Bulk upsert Services

Create or update multiple services by external_id. Only attributes present in the payload are written (managed-fields semantics). Transactional: all succeed or all fail. Requires an API key with both create and update capability across the resource scope (team/org-scoped); record-scoped principals cannot use this endpoint (they receive 404), which also prevents the create-vs-update branch from leaking whether an external_id exists.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ServicesApi apiInstance = new ServicesApi(defaultClient);
    BulkUpsertServices bulkUpsertServices = new BulkUpsertServices(); // BulkUpsertServices | 
    try {
      BulkUpsertServicesResponse result = apiInstance.bulkUpsertServices(bulkUpsertServices);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ServicesApi#bulkUpsertServices");
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
| **bulkUpsertServices** | [**BulkUpsertServices**](BulkUpsertServices.md)|  | |

### Return type

[**BulkUpsertServicesResponse**](BulkUpsertServicesResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | records upserted successfully |  -  |
| **422** | validation or record-level error |  -  |
| **401** | unauthorized |  -  |

<a id="createService"></a>
# **createService**
> ServiceResponse createService(newService)

Creates a service

Creates a new service from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ServicesApi apiInstance = new ServicesApi(defaultClient);
    NewService newService = new NewService(); // NewService | 
    try {
      ServiceResponse result = apiInstance.createService(newService);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ServicesApi#createService");
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
| **newService** | [**NewService**](NewService.md)|  | |

### Return type

[**ServiceResponse**](ServiceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | service created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="createServiceCatalogProperty"></a>
# **createServiceCatalogProperty**
> CatalogPropertyResponse createServiceCatalogProperty(newCatalogProperty)

Creates a Catalog Property

Creates a new Catalog Property from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ServicesApi apiInstance = new ServicesApi(defaultClient);
    NewCatalogProperty newCatalogProperty = new NewCatalogProperty(); // NewCatalogProperty | 
    try {
      CatalogPropertyResponse result = apiInstance.createServiceCatalogProperty(newCatalogProperty);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ServicesApi#createServiceCatalogProperty");
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
| **newCatalogProperty** | [**NewCatalogProperty**](NewCatalogProperty.md)|  | |

### Return type

[**CatalogPropertyResponse**](CatalogPropertyResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | catalog_property created ignores wrong catalog_type attribute |  -  |
| **422** | exceeds max fields per catalog |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteService"></a>
# **deleteService**
> ServiceResponse deleteService(id)

Delete a service

Delete a specific service by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ServicesApi apiInstance = new ServicesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      ServiceResponse result = apiInstance.deleteService(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ServicesApi#deleteService");
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

[**ServiceResponse**](ServiceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | service deleted |  -  |
| **404** | resource not found |  -  |

<a id="getService"></a>
# **getService**
> ServiceResponse getService(id)

Retrieves a service

Retrieves a specific service by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ServicesApi apiInstance = new ServicesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      ServiceResponse result = apiInstance.getService(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ServicesApi#getService");
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

[**ServiceResponse**](ServiceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | service found by slug |  -  |
| **404** | resource not found |  -  |

<a id="getServiceIncidentsChart"></a>
# **getServiceIncidentsChart**
> IncidentsChartResponse getServiceIncidentsChart(id, period)

Get service incidents chart

Get service incidents chart

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ServicesApi apiInstance = new ServicesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    String period = "period_example"; // String | 
    try {
      IncidentsChartResponse result = apiInstance.getServiceIncidentsChart(id, period);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ServicesApi#getServiceIncidentsChart");
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
| **period** | **String**|  | |

### Return type

[**IncidentsChartResponse**](IncidentsChartResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |
| **404** | resource not found |  -  |

<a id="getServiceUptimeChart"></a>
# **getServiceUptimeChart**
> UptimeChartResponse getServiceUptimeChart(id, period)

Get service uptime chart

Get service uptime chart

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ServicesApi apiInstance = new ServicesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    String period = "period_example"; // String | 
    try {
      UptimeChartResponse result = apiInstance.getServiceUptimeChart(id, period);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ServicesApi#getServiceUptimeChart");
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
| **period** | **String**|  | [optional] |

### Return type

[**UptimeChartResponse**](UptimeChartResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |
| **404** | resource not found |  -  |

<a id="listServiceCatalogProperties"></a>
# **listServiceCatalogProperties**
> CatalogPropertyList listServiceCatalogProperties(include, sort, pageNumber, pageSize, filterSlug, filterName, filterKind, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List Catalog Properties

List Service Catalog Properties

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ServicesApi apiInstance = new ServicesApi(defaultClient);
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
      CatalogPropertyList result = apiInstance.listServiceCatalogProperties(include, sort, pageNumber, pageSize, filterSlug, filterName, filterKind, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ServicesApi#listServiceCatalogProperties");
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

[**CatalogPropertyList**](CatalogPropertyList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="listServices"></a>
# **listServices**
> ServiceList listServices(include, pageNumber, pageSize, filterSearch, filterName, filterSlug, filterBackstageId, filterCortexId, filterOpslevelId, filterExternalId, filterAlertBroadcastEnabled, filterIncidentBroadcastEnabled, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterNameEq, filterNameNotEq, filterNameIn, filterNameNotIn, filterSlugEq, filterSlugNotEq, filterSlugIn, filterSlugNotIn, filterAlertBroadcastEnabledEq, filterAlertBroadcastEnabledNotEq, filterAlertBroadcastEnabledIn, filterAlertBroadcastEnabledNotIn, filterIncidentBroadcastEnabledEq, filterIncidentBroadcastEnabledNotEq, filterIncidentBroadcastEnabledIn, filterIncidentBroadcastEnabledNotIn, sort)

List services

List services

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ServicesApi apiInstance = new ServicesApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterBackstageId = "filterBackstageId_example"; // String | 
    String filterCortexId = "filterCortexId_example"; // String | 
    String filterOpslevelId = "filterOpslevelId_example"; // String | 
    String filterExternalId = "filterExternalId_example"; // String | 
    Boolean filterAlertBroadcastEnabled = true; // Boolean | 
    Boolean filterIncidentBroadcastEnabled = true; // Boolean | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String filterNameEq = "filterNameEq_example"; // String | 
    String filterNameNotEq = "filterNameNotEq_example"; // String | 
    String filterNameIn = "filterNameIn_example"; // String | 
    String filterNameNotIn = "filterNameNotIn_example"; // String | 
    String filterSlugEq = "filterSlugEq_example"; // String | 
    String filterSlugNotEq = "filterSlugNotEq_example"; // String | 
    String filterSlugIn = "filterSlugIn_example"; // String | 
    String filterSlugNotIn = "filterSlugNotIn_example"; // String | 
    String filterAlertBroadcastEnabledEq = "filterAlertBroadcastEnabledEq_example"; // String | 
    String filterAlertBroadcastEnabledNotEq = "filterAlertBroadcastEnabledNotEq_example"; // String | 
    String filterAlertBroadcastEnabledIn = "filterAlertBroadcastEnabledIn_example"; // String | 
    String filterAlertBroadcastEnabledNotIn = "filterAlertBroadcastEnabledNotIn_example"; // String | 
    String filterIncidentBroadcastEnabledEq = "filterIncidentBroadcastEnabledEq_example"; // String | 
    String filterIncidentBroadcastEnabledNotEq = "filterIncidentBroadcastEnabledNotEq_example"; // String | 
    String filterIncidentBroadcastEnabledIn = "filterIncidentBroadcastEnabledIn_example"; // String | 
    String filterIncidentBroadcastEnabledNotIn = "filterIncidentBroadcastEnabledNotIn_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      ServiceList result = apiInstance.listServices(include, pageNumber, pageSize, filterSearch, filterName, filterSlug, filterBackstageId, filterCortexId, filterOpslevelId, filterExternalId, filterAlertBroadcastEnabled, filterIncidentBroadcastEnabled, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterNameEq, filterNameNotEq, filterNameIn, filterNameNotIn, filterSlugEq, filterSlugNotEq, filterSlugIn, filterSlugNotIn, filterAlertBroadcastEnabledEq, filterAlertBroadcastEnabledNotEq, filterAlertBroadcastEnabledIn, filterAlertBroadcastEnabledNotIn, filterIncidentBroadcastEnabledEq, filterIncidentBroadcastEnabledNotEq, filterIncidentBroadcastEnabledIn, filterIncidentBroadcastEnabledNotIn, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ServicesApi#listServices");
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
| **filterName** | **String**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterBackstageId** | **String**|  | [optional] |
| **filterCortexId** | **String**|  | [optional] |
| **filterOpslevelId** | **String**|  | [optional] |
| **filterExternalId** | **String**|  | [optional] |
| **filterAlertBroadcastEnabled** | **Boolean**|  | [optional] |
| **filterIncidentBroadcastEnabled** | **Boolean**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **filterNameEq** | **String**|  | [optional] |
| **filterNameNotEq** | **String**|  | [optional] |
| **filterNameIn** | **String**|  | [optional] |
| **filterNameNotIn** | **String**|  | [optional] |
| **filterSlugEq** | **String**|  | [optional] |
| **filterSlugNotEq** | **String**|  | [optional] |
| **filterSlugIn** | **String**|  | [optional] |
| **filterSlugNotIn** | **String**|  | [optional] |
| **filterAlertBroadcastEnabledEq** | **String**|  | [optional] |
| **filterAlertBroadcastEnabledNotEq** | **String**|  | [optional] |
| **filterAlertBroadcastEnabledIn** | **String**|  | [optional] |
| **filterAlertBroadcastEnabledNotIn** | **String**|  | [optional] |
| **filterIncidentBroadcastEnabledEq** | **String**|  | [optional] |
| **filterIncidentBroadcastEnabledNotEq** | **String**|  | [optional] |
| **filterIncidentBroadcastEnabledIn** | **String**|  | [optional] |
| **filterIncidentBroadcastEnabledNotIn** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**ServiceList**](ServiceList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateService"></a>
# **updateService**
> ServiceResponse updateService(id, updateService)

Update a service

Update a specific service by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.ServicesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    ServicesApi apiInstance = new ServicesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    UpdateService updateService = new UpdateService(); // UpdateService | 
    try {
      ServiceResponse result = apiInstance.updateService(id, updateService);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ServicesApi#updateService");
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
| **updateService** | [**UpdateService**](UpdateService.md)|  | |

### Return type

[**ServiceResponse**](ServiceResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | service updated |  -  |
| **404** | resource not found |  -  |

