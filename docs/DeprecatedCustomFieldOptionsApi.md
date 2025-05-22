# DeprecatedCustomFieldOptionsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCustomFieldOption**](DeprecatedCustomFieldOptionsApi.md#createCustomFieldOption) | **POST** /v1/custom_fields/{custom_field_id}/options | [DEPRECATED] Creates a custom field option |
| [**deleteCustomFieldOption**](DeprecatedCustomFieldOptionsApi.md#deleteCustomFieldOption) | **DELETE** /v1/custom_field_options/{id} | [DEPRECATED] Delete a custom field option |
| [**getCustomFieldOption**](DeprecatedCustomFieldOptionsApi.md#getCustomFieldOption) | **GET** /v1/custom_field_options/{id} | [DEPRECATED] Retrieves a custom field option |
| [**listCustomFieldOptions**](DeprecatedCustomFieldOptionsApi.md#listCustomFieldOptions) | **GET** /v1/custom_fields/{custom_field_id}/options | [DEPRECATED] List custom field options |
| [**updateCustomFieldOption**](DeprecatedCustomFieldOptionsApi.md#updateCustomFieldOption) | **PUT** /v1/custom_field_options/{id} | [DEPRECATED] Update a custom field option |


<a id="createCustomFieldOption"></a>
# **createCustomFieldOption**
> CustomFieldOptionResponse createCustomFieldOption(customFieldId, newCustomFieldOption)

[DEPRECATED] Creates a custom field option

[DEPRECATED] Use form field endpoints instead. Creates a new custom field option from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedCustomFieldOptionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedCustomFieldOptionsApi apiInstance = new DeprecatedCustomFieldOptionsApi(defaultClient);
    String customFieldId = "customFieldId_example"; // String | 
    NewCustomFieldOption newCustomFieldOption = new NewCustomFieldOption(); // NewCustomFieldOption | 
    try {
      CustomFieldOptionResponse result = apiInstance.createCustomFieldOption(customFieldId, newCustomFieldOption);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedCustomFieldOptionsApi#createCustomFieldOption");
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
| **customFieldId** | **String**|  | |
| **newCustomFieldOption** | [**NewCustomFieldOption**](NewCustomFieldOption.md)|  | |

### Return type

[**CustomFieldOptionResponse**](CustomFieldOptionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | custom_field_option created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteCustomFieldOption"></a>
# **deleteCustomFieldOption**
> CustomFieldOptionResponse deleteCustomFieldOption(id)

[DEPRECATED] Delete a custom field option

[DEPRECATED] Use form field endpoints instead. Delete a specific Custom Field Option by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedCustomFieldOptionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedCustomFieldOptionsApi apiInstance = new DeprecatedCustomFieldOptionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      CustomFieldOptionResponse result = apiInstance.deleteCustomFieldOption(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedCustomFieldOptionsApi#deleteCustomFieldOption");
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

[**CustomFieldOptionResponse**](CustomFieldOptionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | custom_field_option deleted |  -  |
| **404** | resource not found |  -  |

<a id="getCustomFieldOption"></a>
# **getCustomFieldOption**
> CustomFieldOptionResponse getCustomFieldOption(id)

[DEPRECATED] Retrieves a custom field option

[DEPRECATED] Use form field endpoints instead. Retrieves a specific custom field option by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedCustomFieldOptionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedCustomFieldOptionsApi apiInstance = new DeprecatedCustomFieldOptionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      CustomFieldOptionResponse result = apiInstance.getCustomFieldOption(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedCustomFieldOptionsApi#getCustomFieldOption");
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

[**CustomFieldOptionResponse**](CustomFieldOptionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | custom_field_option found |  -  |
| **404** | resource not found |  -  |

<a id="listCustomFieldOptions"></a>
# **listCustomFieldOptions**
> CustomFieldOptionList listCustomFieldOptions(customFieldId, include, pageNumber, pageSize, filterValue, filterColor)

[DEPRECATED] List custom field options

[DEPRECATED] Use form field endpoints instead. List custom field options

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedCustomFieldOptionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedCustomFieldOptionsApi apiInstance = new DeprecatedCustomFieldOptionsApi(defaultClient);
    String customFieldId = "customFieldId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterValue = "filterValue_example"; // String | 
    String filterColor = "filterColor_example"; // String | 
    try {
      CustomFieldOptionList result = apiInstance.listCustomFieldOptions(customFieldId, include, pageNumber, pageSize, filterValue, filterColor);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedCustomFieldOptionsApi#listCustomFieldOptions");
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
| **customFieldId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterValue** | **String**|  | [optional] |
| **filterColor** | **String**|  | [optional] |

### Return type

[**CustomFieldOptionList**](CustomFieldOptionList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateCustomFieldOption"></a>
# **updateCustomFieldOption**
> CustomFieldOptionResponse updateCustomFieldOption(id, updateCustomFieldOption)

[DEPRECATED] Update a custom field option

[DEPRECATED] Use form field endpoints instead. Update a specific custom field option by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedCustomFieldOptionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedCustomFieldOptionsApi apiInstance = new DeprecatedCustomFieldOptionsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateCustomFieldOption updateCustomFieldOption = new UpdateCustomFieldOption(); // UpdateCustomFieldOption | 
    try {
      CustomFieldOptionResponse result = apiInstance.updateCustomFieldOption(id, updateCustomFieldOption);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedCustomFieldOptionsApi#updateCustomFieldOption");
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
| **updateCustomFieldOption** | [**UpdateCustomFieldOption**](UpdateCustomFieldOption.md)|  | |

### Return type

[**CustomFieldOptionResponse**](CustomFieldOptionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | custom_field_option updated |  -  |
| **404** | resource not found |  -  |

