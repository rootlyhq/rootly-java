# RetrospectiveTemplatesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createPostmortemTemplate**](RetrospectiveTemplatesApi.md#createPostmortemTemplate) | **POST** /v1/post_mortem_templates | Creates a retrospective template |
| [**deletePostmortemTemplate**](RetrospectiveTemplatesApi.md#deletePostmortemTemplate) | **DELETE** /v1/post_mortem_templates/{id} | Delete a Retrospective Template |
| [**getPostmortemTemplate**](RetrospectiveTemplatesApi.md#getPostmortemTemplate) | **GET** /v1/post_mortem_templates/{id} | Retrieves a Retrospective Template |
| [**listPostmortemTemplates**](RetrospectiveTemplatesApi.md#listPostmortemTemplates) | **GET** /v1/post_mortem_templates | List Retrospective Templates |
| [**updatePostmortemTemplate**](RetrospectiveTemplatesApi.md#updatePostmortemTemplate) | **PUT** /v1/post_mortem_templates/{id} | Update a Retrospective Template |


<a id="createPostmortemTemplate"></a>
# **createPostmortemTemplate**
> PostMortemTemplateResponse createPostmortemTemplate(newPostMortemTemplate)

Creates a retrospective template

Creates a new Retrospective Template from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveTemplatesApi apiInstance = new RetrospectiveTemplatesApi(defaultClient);
    NewPostMortemTemplate newPostMortemTemplate = new NewPostMortemTemplate(); // NewPostMortemTemplate | 
    try {
      PostMortemTemplateResponse result = apiInstance.createPostmortemTemplate(newPostMortemTemplate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveTemplatesApi#createPostmortemTemplate");
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
| **newPostMortemTemplate** | [**NewPostMortemTemplate**](NewPostMortemTemplate.md)|  | |

### Return type

[**PostMortemTemplateResponse**](PostMortemTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | post_mortem_template created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deletePostmortemTemplate"></a>
# **deletePostmortemTemplate**
> PostMortemTemplateResponse deletePostmortemTemplate(id)

Delete a Retrospective Template

Delete a specific Retrospective Template by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveTemplatesApi apiInstance = new RetrospectiveTemplatesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      PostMortemTemplateResponse result = apiInstance.deletePostmortemTemplate(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveTemplatesApi#deletePostmortemTemplate");
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

[**PostMortemTemplateResponse**](PostMortemTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Retrospective Template deleted |  -  |
| **404** | resource not found |  -  |

<a id="getPostmortemTemplate"></a>
# **getPostmortemTemplate**
> PostMortemTemplateResponse getPostmortemTemplate(id)

Retrieves a Retrospective Template

Retrieves a specific Retrospective Template by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveTemplatesApi apiInstance = new RetrospectiveTemplatesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      PostMortemTemplateResponse result = apiInstance.getPostmortemTemplate(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveTemplatesApi#getPostmortemTemplate");
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

[**PostMortemTemplateResponse**](PostMortemTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Retrospective Template found |  -  |
| **404** | resource not found |  -  |

<a id="listPostmortemTemplates"></a>
# **listPostmortemTemplates**
> PostMortemTemplateList listPostmortemTemplates(include, pageNumber, pageSize)

List Retrospective Templates

List Retrospective Templates

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveTemplatesApi apiInstance = new RetrospectiveTemplatesApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      PostMortemTemplateList result = apiInstance.listPostmortemTemplates(include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveTemplatesApi#listPostmortemTemplates");
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

### Return type

[**PostMortemTemplateList**](PostMortemTemplateList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updatePostmortemTemplate"></a>
# **updatePostmortemTemplate**
> PostMortemTemplateResponse updatePostmortemTemplate(id, updatePostMortemTemplate)

Update a Retrospective Template

Update a specific Retrospective Template by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.RetrospectiveTemplatesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    RetrospectiveTemplatesApi apiInstance = new RetrospectiveTemplatesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdatePostMortemTemplate updatePostMortemTemplate = new UpdatePostMortemTemplate(); // UpdatePostMortemTemplate | 
    try {
      PostMortemTemplateResponse result = apiInstance.updatePostmortemTemplate(id, updatePostMortemTemplate);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RetrospectiveTemplatesApi#updatePostmortemTemplate");
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
| **updatePostMortemTemplate** | [**UpdatePostMortemTemplate**](UpdatePostMortemTemplate.md)|  | |

### Return type

[**PostMortemTemplateResponse**](PostMortemTemplateResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Retrospective Template updated |  -  |
| **404** | resource not found |  -  |

