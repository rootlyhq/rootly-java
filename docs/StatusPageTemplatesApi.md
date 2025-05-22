# StatusPageTemplatesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createStatusPageTemplate**](StatusPageTemplatesApi.md#createStatusPageTemplate) | **POST** /v1/status-pages/{status_page_id}/templates | Creates a status page template |
| [**deleteStatusPageTemplate**](StatusPageTemplatesApi.md#deleteStatusPageTemplate) | **DELETE** /v1/templates/{id} | Delete a incident event |
| [**getStatusPageTemplate**](StatusPageTemplatesApi.md#getStatusPageTemplate) | **GET** /v1/templates/{id} | Retrieves a status page template |
| [**listStatusPageTemplates**](StatusPageTemplatesApi.md#listStatusPageTemplates) | **GET** /v1/status-pages/{status_page_id}/templates | List status page templates |
| [**updateStatusPageTemplate**](StatusPageTemplatesApi.md#updateStatusPageTemplate) | **PUT** /v1/templates/{id} | Update status page template |


<a id="createStatusPageTemplate"></a>
# **createStatusPageTemplate**
> StatusPageTemplateResponse createStatusPageTemplate(statusPageId, statusPageTemplate)

Creates a status page template

Creates a new template from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageTemplatesApi apiInstance = new StatusPageTemplatesApi(defaultClient);
    String statusPageId = "statusPageId_example"; // String | 
    StatusPageTemplate statusPageTemplate = new StatusPageTemplate(); // StatusPageTemplate | 
    try {
      StatusPageTemplateResponse result = apiInstance.createStatusPageTemplate(statusPageId, statusPageTemplate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageTemplatesApi#createStatusPageTemplate");
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
| **statusPageId** | **String**|  | |
| **statusPageTemplate** | [**StatusPageTemplate**](StatusPageTemplate.md)|  | |

### Return type

[**StatusPageTemplateResponse**](StatusPageTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident_event created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteStatusPageTemplate"></a>
# **deleteStatusPageTemplate**
> StatusPageTemplateResponse deleteStatusPageTemplate(id)

Delete a incident event

Delete a specific template event by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageTemplatesApi apiInstance = new StatusPageTemplatesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      StatusPageTemplateResponse result = apiInstance.deleteStatusPageTemplate(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageTemplatesApi#deleteStatusPageTemplate");
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

[**StatusPageTemplateResponse**](StatusPageTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_event deleted |  -  |
| **404** | resource not found |  -  |

<a id="getStatusPageTemplate"></a>
# **getStatusPageTemplate**
> StatusPageTemplateResponse getStatusPageTemplate(id)

Retrieves a status page template

Retrieves a specific status_page_template by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageTemplatesApi apiInstance = new StatusPageTemplatesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      StatusPageTemplateResponse result = apiInstance.getStatusPageTemplate(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageTemplatesApi#getStatusPageTemplate");
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

[**StatusPageTemplateResponse**](StatusPageTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | status page template found |  -  |
| **404** | resource not found |  -  |

<a id="listStatusPageTemplates"></a>
# **listStatusPageTemplates**
> StatusPageTemplateList listStatusPageTemplates(statusPageId, include, pageNumber, pageSize)

List status page templates

List status page templates

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageTemplatesApi apiInstance = new StatusPageTemplatesApi(defaultClient);
    String statusPageId = "statusPageId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      StatusPageTemplateList result = apiInstance.listStatusPageTemplates(statusPageId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageTemplatesApi#listStatusPageTemplates");
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
| **statusPageId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**StatusPageTemplateList**](StatusPageTemplateList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateStatusPageTemplate"></a>
# **updateStatusPageTemplate**
> StatusPageTemplateResponse updateStatusPageTemplate(id, statusPageTemplate)

Update status page template

Update a specific template event by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.StatusPageTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    StatusPageTemplatesApi apiInstance = new StatusPageTemplatesApi(defaultClient);
    String id = "id_example"; // String | 
    StatusPageTemplate statusPageTemplate = new StatusPageTemplate(); // StatusPageTemplate | 
    try {
      StatusPageTemplateResponse result = apiInstance.updateStatusPageTemplate(id, statusPageTemplate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StatusPageTemplatesApi#updateStatusPageTemplate");
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
| **statusPageTemplate** | [**StatusPageTemplate**](StatusPageTemplate.md)|  | |

### Return type

[**StatusPageTemplateResponse**](StatusPageTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_event updated |  -  |
| **404** | resource not found |  -  |

