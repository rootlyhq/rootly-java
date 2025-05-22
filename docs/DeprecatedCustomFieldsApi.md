# DeprecatedCustomFieldsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCustomField**](DeprecatedCustomFieldsApi.md#createCustomField) | **POST** /v1/custom_fields | [DEPRECATED] Creates a Custom Field |
| [**deleteCustomField**](DeprecatedCustomFieldsApi.md#deleteCustomField) | **DELETE** /v1/custom_fields/{id} | [DEPRECATED] Delete a Custom Field |
| [**getCustomField**](DeprecatedCustomFieldsApi.md#getCustomField) | **GET** /v1/custom_fields/{id} | [DEPRECATED] Retrieves a Custom Field |
| [**listCustomFields**](DeprecatedCustomFieldsApi.md#listCustomFields) | **GET** /v1/custom_fields | [DEPRECATED] List Custom Fields |
| [**updateCustomField**](DeprecatedCustomFieldsApi.md#updateCustomField) | **PUT** /v1/custom_fields/{id} | [DEPRECATED] Update a Custom Field |


<a id="createCustomField"></a>
# **createCustomField**
> CustomFieldResponse createCustomField(newCustomField)

[DEPRECATED] Creates a Custom Field

[DEPRECATED] Use form field endpoints instead. Creates a new custom field from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedCustomFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedCustomFieldsApi apiInstance = new DeprecatedCustomFieldsApi(defaultClient);
    NewCustomField newCustomField = new NewCustomField(); // NewCustomField | 
    try {
      CustomFieldResponse result = apiInstance.createCustomField(newCustomField);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedCustomFieldsApi#createCustomField");
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
| **newCustomField** | [**NewCustomField**](NewCustomField.md)|  | |

### Return type

[**CustomFieldResponse**](CustomFieldResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | custom_field created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteCustomField"></a>
# **deleteCustomField**
> CustomFieldResponse deleteCustomField(id)

[DEPRECATED] Delete a Custom Field

[DEPRECATED] Use form field endpoints instead. Delete a specific custom field by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedCustomFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedCustomFieldsApi apiInstance = new DeprecatedCustomFieldsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      CustomFieldResponse result = apiInstance.deleteCustomField(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedCustomFieldsApi#deleteCustomField");
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

[**CustomFieldResponse**](CustomFieldResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | custom_field deleted |  -  |
| **404** | resource not found |  -  |

<a id="getCustomField"></a>
# **getCustomField**
> CustomFieldResponse getCustomField(id, include)

[DEPRECATED] Retrieves a Custom Field

Retrieves a specific custom_field by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedCustomFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedCustomFieldsApi apiInstance = new DeprecatedCustomFieldsApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "options"; // String | comma separated if needed. eg: options
    try {
      CustomFieldResponse result = apiInstance.getCustomField(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedCustomFieldsApi#getCustomField");
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
| **include** | **String**| comma separated if needed. eg: options | [optional] [enum: options] |

### Return type

[**CustomFieldResponse**](CustomFieldResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | custom_field found |  -  |
| **404** | resource not found |  -  |

<a id="listCustomFields"></a>
# **listCustomFields**
> CustomFieldList listCustomFields(include, sort, pageNumber, pageSize, filterSlug, filterLabel, filterKind, filterEnabled, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

[DEPRECATED] List Custom Fields

[DEPRECATED] Use form field endpoints instead. List Custom fields

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedCustomFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedCustomFieldsApi apiInstance = new DeprecatedCustomFieldsApi(defaultClient);
    String include = "options"; // String | comma separated if needed. eg: options
    String sort = "created_at"; // String | comma separated if needed. eg: created_at,updated_at
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterLabel = "filterLabel_example"; // String | 
    String filterKind = "filterKind_example"; // String | 
    Boolean filterEnabled = true; // Boolean | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      CustomFieldList result = apiInstance.listCustomFields(include, sort, pageNumber, pageSize, filterSlug, filterLabel, filterKind, filterEnabled, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedCustomFieldsApi#listCustomFields");
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
| **include** | **String**| comma separated if needed. eg: options | [optional] [enum: options] |
| **sort** | **String**| comma separated if needed. eg: created_at,updated_at | [optional] [enum: created_at, -created_at, updated_at, -updated_at, position, -position] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterLabel** | **String**|  | [optional] |
| **filterKind** | **String**|  | [optional] |
| **filterEnabled** | **Boolean**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**CustomFieldList**](CustomFieldList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateCustomField"></a>
# **updateCustomField**
> CustomFieldResponse updateCustomField(id, updateCustomField)

[DEPRECATED] Update a Custom Field

[DEPRECATED] Use form field endpoints instead. Update a specific custom field by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedCustomFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedCustomFieldsApi apiInstance = new DeprecatedCustomFieldsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateCustomField updateCustomField = new UpdateCustomField(); // UpdateCustomField | 
    try {
      CustomFieldResponse result = apiInstance.updateCustomField(id, updateCustomField);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedCustomFieldsApi#updateCustomField");
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
| **updateCustomField** | [**UpdateCustomField**](UpdateCustomField.md)|  | |

### Return type

[**CustomFieldResponse**](CustomFieldResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | custom_field updated |  -  |
| **404** | resource not found |  -  |

