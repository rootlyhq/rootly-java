# CatalogChecklistTemplatesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCatalogChecklistTemplate**](CatalogChecklistTemplatesApi.md#createCatalogChecklistTemplate) | **POST** /v1/catalog_checklist_templates | Creates a catalog checklist template |
| [**deleteCatalogChecklistTemplate**](CatalogChecklistTemplatesApi.md#deleteCatalogChecklistTemplate) | **DELETE** /v1/catalog_checklist_templates/{id} | Delete a catalog checklist template |
| [**getCatalogChecklistTemplate**](CatalogChecklistTemplatesApi.md#getCatalogChecklistTemplate) | **GET** /v1/catalog_checklist_templates/{id} | Retrieves a catalog checklist template |
| [**listCatalogChecklistTemplates**](CatalogChecklistTemplatesApi.md#listCatalogChecklistTemplates) | **GET** /v1/catalog_checklist_templates | List catalog checklist templates |
| [**triggerCatalogChecklistTemplate**](CatalogChecklistTemplatesApi.md#triggerCatalogChecklistTemplate) | **POST** /v1/catalog_checklist_templates/{id}/trigger | Trigger an audit for a catalog checklist template |
| [**updateCatalogChecklistTemplate**](CatalogChecklistTemplatesApi.md#updateCatalogChecklistTemplate) | **PUT** /v1/catalog_checklist_templates/{id} | Update a catalog checklist template |


<a id="createCatalogChecklistTemplate"></a>
# **createCatalogChecklistTemplate**
> CatalogChecklistTemplateResponse createCatalogChecklistTemplate(newCatalogChecklistTemplate)

Creates a catalog checklist template

Creates a new catalog checklist template

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogChecklistTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogChecklistTemplatesApi apiInstance = new CatalogChecklistTemplatesApi(defaultClient);
    NewCatalogChecklistTemplate newCatalogChecklistTemplate = new NewCatalogChecklistTemplate(); // NewCatalogChecklistTemplate | 
    try {
      CatalogChecklistTemplateResponse result = apiInstance.createCatalogChecklistTemplate(newCatalogChecklistTemplate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogChecklistTemplatesApi#createCatalogChecklistTemplate");
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
| **newCatalogChecklistTemplate** | [**NewCatalogChecklistTemplate**](NewCatalogChecklistTemplate.md)|  | |

### Return type

[**CatalogChecklistTemplateResponse**](CatalogChecklistTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | ignores user-provided field_key for custom fields |  -  |
| **422** | returns 422 when scope_type is missing for Catalog scope_id |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteCatalogChecklistTemplate"></a>
# **deleteCatalogChecklistTemplate**
> CatalogChecklistTemplateResponse deleteCatalogChecklistTemplate(id)

Delete a catalog checklist template

Delete a specific catalog checklist template by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogChecklistTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogChecklistTemplatesApi apiInstance = new CatalogChecklistTemplatesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      CatalogChecklistTemplateResponse result = apiInstance.deleteCatalogChecklistTemplate(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogChecklistTemplatesApi#deleteCatalogChecklistTemplate");
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

[**CatalogChecklistTemplateResponse**](CatalogChecklistTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog checklist template deleted |  -  |
| **404** | catalog checklist template not found |  -  |

<a id="getCatalogChecklistTemplate"></a>
# **getCatalogChecklistTemplate**
> CatalogChecklistTemplateResponse getCatalogChecklistTemplate(id)

Retrieves a catalog checklist template

Retrieves a specific catalog checklist template by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogChecklistTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogChecklistTemplatesApi apiInstance = new CatalogChecklistTemplatesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      CatalogChecklistTemplateResponse result = apiInstance.getCatalogChecklistTemplate(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogChecklistTemplatesApi#getCatalogChecklistTemplate");
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

[**CatalogChecklistTemplateResponse**](CatalogChecklistTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | catalog checklist template found by slug |  -  |
| **404** | resource not found for another team |  -  |

<a id="listCatalogChecklistTemplates"></a>
# **listCatalogChecklistTemplates**
> CatalogChecklistTemplateList listCatalogChecklistTemplates(include, sort, pageNumber, pageSize, filterName, filterSlug, filterCatalogType, filterScopeType, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List catalog checklist templates

List catalog checklist templates

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogChecklistTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogChecklistTemplatesApi apiInstance = new CatalogChecklistTemplatesApi(defaultClient);
    String include = "template_fields"; // String | comma separated if needed. eg: template_fields,template_owners
    String sort = "created_at"; // String | comma separated if needed. eg: created_at,updated_at
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterName = "filterName_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterCatalogType = "filterCatalogType_example"; // String | 
    String filterScopeType = "filterScopeType_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      CatalogChecklistTemplateList result = apiInstance.listCatalogChecklistTemplates(include, sort, pageNumber, pageSize, filterName, filterSlug, filterCatalogType, filterScopeType, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogChecklistTemplatesApi#listCatalogChecklistTemplates");
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
| **include** | **String**| comma separated if needed. eg: template_fields,template_owners | [optional] [enum: template_fields, template_owners] |
| **sort** | **String**| comma separated if needed. eg: created_at,updated_at | [optional] [enum: created_at, -created_at, updated_at, -updated_at, name, -name] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterCatalogType** | **String**|  | [optional] |
| **filterScopeType** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**CatalogChecklistTemplateList**](CatalogChecklistTemplateList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | returns empty list for another team |  -  |

<a id="triggerCatalogChecklistTemplate"></a>
# **triggerCatalogChecklistTemplate**
> triggerCatalogChecklistTemplate(id)

Trigger an audit for a catalog checklist template

Triggers an audit for all applicable entities of the checklist template

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogChecklistTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogChecklistTemplatesApi apiInstance = new CatalogChecklistTemplatesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    try {
      apiInstance.triggerCatalogChecklistTemplate(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogChecklistTemplatesApi#triggerCatalogChecklistTemplate");
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

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | audit triggered |  -  |
| **404** | resource not found for another team |  -  |

<a id="updateCatalogChecklistTemplate"></a>
# **updateCatalogChecklistTemplate**
> CatalogChecklistTemplateResponse updateCatalogChecklistTemplate(id, updateCatalogChecklistTemplate)

Update a catalog checklist template

Update a specific catalog checklist template by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CatalogChecklistTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CatalogChecklistTemplatesApi apiInstance = new CatalogChecklistTemplatesApi(defaultClient);
    GetAlertFieldIdParameter id = new GetAlertFieldIdParameter(); // GetAlertFieldIdParameter | 
    UpdateCatalogChecklistTemplate updateCatalogChecklistTemplate = new UpdateCatalogChecklistTemplate(); // UpdateCatalogChecklistTemplate | 
    try {
      CatalogChecklistTemplateResponse result = apiInstance.updateCatalogChecklistTemplate(id, updateCatalogChecklistTemplate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CatalogChecklistTemplatesApi#updateCatalogChecklistTemplate");
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
| **updateCatalogChecklistTemplate** | [**UpdateCatalogChecklistTemplate**](UpdateCatalogChecklistTemplate.md)|  | |

### Return type

[**CatalogChecklistTemplateResponse**](CatalogChecklistTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | ignores user-provided field_key for custom fields on update |  -  |
| **422** | rejects duplicate custom fields on update |  -  |

