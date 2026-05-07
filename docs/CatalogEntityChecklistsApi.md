# CatalogEntityChecklistsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getCatalogEntityChecklist**](CatalogEntityChecklistsApi.md#getCatalogEntityChecklist) | **GET** /v1/catalog_entity_checklists/{id} | Retrieves a catalog entity checklist |
| [**listCatalogEntityChecklists**](CatalogEntityChecklistsApi.md#listCatalogEntityChecklists) | **GET** /v1/catalog_entity_checklists | List catalog entity checklists |


<a id="getCatalogEntityChecklist"></a>
# **getCatalogEntityChecklist**
> CatalogEntityChecklistResponse getCatalogEntityChecklist(id)

Retrieves a catalog entity checklist

Retrieves a specific catalog entity checklist by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogEntityChecklistsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogEntityChecklistsApi apiInstance = new CatalogEntityChecklistsApi(defaultClient);
    UUID id = UUID.randomUUID(); // UUID | 
    try {
      CatalogEntityChecklistResponse result = apiInstance.getCatalogEntityChecklist(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogEntityChecklistsApi#getCatalogEntityChecklist");
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
| **id** | **UUID**|  | |

### Return type

[**CatalogEntityChecklistResponse**](CatalogEntityChecklistResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog entity checklist found |  -  |
| **404** | resource not found for another team |  -  |

<a id="listCatalogEntityChecklists"></a>
# **listCatalogEntityChecklists**
> CatalogEntityChecklistList listCatalogEntityChecklists(pageNumber, pageSize, filterStatus, filterCatalogChecklistTemplateId, filterAuditableType, filterAuditableId, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List catalog entity checklists

List catalog entity checklists

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogEntityChecklistsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogEntityChecklistsApi apiInstance = new CatalogEntityChecklistsApi(defaultClient);
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterStatus = "filterStatus_example"; // String | 
    String filterCatalogChecklistTemplateId = "filterCatalogChecklistTemplateId_example"; // String | 
    String filterAuditableType = "filterAuditableType_example"; // String | 
    String filterAuditableId = "filterAuditableId_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      CatalogEntityChecklistList result = apiInstance.listCatalogEntityChecklists(pageNumber, pageSize, filterStatus, filterCatalogChecklistTemplateId, filterAuditableType, filterAuditableId, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogEntityChecklistsApi#listCatalogEntityChecklists");
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
| **filterStatus** | **String**|  | [optional] |
| **filterCatalogChecklistTemplateId** | **String**|  | [optional] |
| **filterAuditableType** | **String**|  | [optional] |
| **filterAuditableId** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**CatalogEntityChecklistList**](CatalogEntityChecklistList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | returns empty list for another team |  -  |

