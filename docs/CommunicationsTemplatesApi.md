# CommunicationsTemplatesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCommunicationsTemplate**](CommunicationsTemplatesApi.md#createCommunicationsTemplate) | **POST** /v1/communications/templates | Creates a communications template |
| [**deleteCommunicationsTemplate**](CommunicationsTemplatesApi.md#deleteCommunicationsTemplate) | **DELETE** /v1/communications/templates/{id} | Deletes a communications template |
| [**getCommunicationsTemplate**](CommunicationsTemplatesApi.md#getCommunicationsTemplate) | **GET** /v1/communications/templates/{id} | Shows a communications template |
| [**listCommunicationsTemplates**](CommunicationsTemplatesApi.md#listCommunicationsTemplates) | **GET** /v1/communications/templates | Lists communications templates |
| [**updateCommunicationsTemplate**](CommunicationsTemplatesApi.md#updateCommunicationsTemplate) | **PATCH** /v1/communications/templates/{id} | Updates a communications template |


<a id="createCommunicationsTemplate"></a>
# **createCommunicationsTemplate**
> CommunicationsTemplateResponse createCommunicationsTemplate(newCommunicationsTemplate)

Creates a communications template

Creates a new communications template from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsTemplatesApi apiInstance = new CommunicationsTemplatesApi(defaultClient);
    NewCommunicationsTemplate newCommunicationsTemplate = new NewCommunicationsTemplate(); // NewCommunicationsTemplate | 
    try {
      CommunicationsTemplateResponse result = apiInstance.createCommunicationsTemplate(newCommunicationsTemplate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsTemplatesApi#createCommunicationsTemplate");
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
| **newCommunicationsTemplate** | [**NewCommunicationsTemplate**](NewCommunicationsTemplate.md)|  | |

### Return type

[**CommunicationsTemplateResponse**](CommunicationsTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | communications template created |  -  |
| **422** | invalid request |  -  |

<a id="deleteCommunicationsTemplate"></a>
# **deleteCommunicationsTemplate**
> deleteCommunicationsTemplate(id)

Deletes a communications template

Deletes a communications template

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsTemplatesApi apiInstance = new CommunicationsTemplatesApi(defaultClient);
    String id = "id_example"; // String | Communications Template ID
    try {
      apiInstance.deleteCommunicationsTemplate(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsTemplatesApi#deleteCommunicationsTemplate");
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
| **id** | **String**| Communications Template ID | |

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
| **200** | communications template deleted |  -  |
| **404** | communications template not found |  -  |

<a id="getCommunicationsTemplate"></a>
# **getCommunicationsTemplate**
> CommunicationsTemplateResponse getCommunicationsTemplate(id)

Shows a communications template

Shows details of a communications template

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsTemplatesApi apiInstance = new CommunicationsTemplatesApi(defaultClient);
    String id = "id_example"; // String | Communications Template ID
    try {
      CommunicationsTemplateResponse result = apiInstance.getCommunicationsTemplate(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsTemplatesApi#getCommunicationsTemplate");
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
| **id** | **String**| Communications Template ID | |

### Return type

[**CommunicationsTemplateResponse**](CommunicationsTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | communications template found |  -  |
| **404** | communications template not found |  -  |

<a id="listCommunicationsTemplates"></a>
# **listCommunicationsTemplates**
> CommunicationsTemplatesResponse listCommunicationsTemplates(pageNumber, pageSize, filterSearch, filterName, filterSlug, filterCommunicationTypeId, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort)

Lists communications templates

Lists communications templates

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsTemplatesApi apiInstance = new CommunicationsTemplatesApi(defaultClient);
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterCommunicationTypeId = "filterCommunicationTypeId_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      CommunicationsTemplatesResponse result = apiInstance.listCommunicationsTemplates(pageNumber, pageSize, filterSearch, filterName, filterSlug, filterCommunicationTypeId, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsTemplatesApi#listCommunicationsTemplates");
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
| **filterCommunicationTypeId** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**CommunicationsTemplatesResponse**](CommunicationsTemplatesResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | communications templates found |  -  |

<a id="updateCommunicationsTemplate"></a>
# **updateCommunicationsTemplate**
> CommunicationsTemplateResponse updateCommunicationsTemplate(id, updateCommunicationsTemplate)

Updates a communications template

Updates a communications template

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.CommunicationsTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    CommunicationsTemplatesApi apiInstance = new CommunicationsTemplatesApi(defaultClient);
    String id = "id_example"; // String | Communications Template ID
    UpdateCommunicationsTemplate updateCommunicationsTemplate = new UpdateCommunicationsTemplate(); // UpdateCommunicationsTemplate | 
    try {
      CommunicationsTemplateResponse result = apiInstance.updateCommunicationsTemplate(id, updateCommunicationsTemplate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CommunicationsTemplatesApi#updateCommunicationsTemplate");
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
| **id** | **String**| Communications Template ID | |
| **updateCommunicationsTemplate** | [**UpdateCommunicationsTemplate**](UpdateCommunicationsTemplate.md)|  | |

### Return type

[**CommunicationsTemplateResponse**](CommunicationsTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | communications template updated |  -  |
| **422** | invalid request |  -  |

