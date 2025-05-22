# FormFieldOptionsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createFormFieldOption**](FormFieldOptionsApi.md#createFormFieldOption) | **POST** /v1/form_fields/{form_field_id}/options | Creates FormField Options |
| [**deleteFormFieldOption**](FormFieldOptionsApi.md#deleteFormFieldOption) | **DELETE** /v1/form_field_options/{id} | Delete FormField Options |
| [**getFormFieldOption**](FormFieldOptionsApi.md#getFormFieldOption) | **GET** /v1/form_field_options/{id} | Retrieves FormField Options |
| [**listFormFieldOptions**](FormFieldOptionsApi.md#listFormFieldOptions) | **GET** /v1/form_fields/{form_field_id}/options | List FormField Options |
| [**updateFormFieldOption**](FormFieldOptionsApi.md#updateFormFieldOption) | **PUT** /v1/form_field_options/{id} | Update FormField Options |


<a id="createFormFieldOption"></a>
# **createFormFieldOption**
> FormFieldOptionResponse createFormFieldOption(formFieldId, newFormFieldOption)

Creates FormField Options

Creates a new form_field_option from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldOptionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldOptionsApi apiInstance = new FormFieldOptionsApi(defaultClient);
    String formFieldId = "formFieldId_example"; // String | 
    NewFormFieldOption newFormFieldOption = new NewFormFieldOption(); // NewFormFieldOption | 
    try {
      FormFieldOptionResponse result = apiInstance.createFormFieldOption(formFieldId, newFormFieldOption);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldOptionsApi#createFormFieldOption");
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
| **formFieldId** | **String**|  | |
| **newFormFieldOption** | [**NewFormFieldOption**](NewFormFieldOption.md)|  | |

### Return type

[**FormFieldOptionResponse**](FormFieldOptionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | form_field_option created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteFormFieldOption"></a>
# **deleteFormFieldOption**
> FormFieldOptionResponse deleteFormFieldOption(id)

Delete FormField Options

Delete a specific form_field_option by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldOptionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldOptionsApi apiInstance = new FormFieldOptionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      FormFieldOptionResponse result = apiInstance.deleteFormFieldOption(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldOptionsApi#deleteFormFieldOption");
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

[**FormFieldOptionResponse**](FormFieldOptionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field_option deleted |  -  |
| **404** | resource not found |  -  |

<a id="getFormFieldOption"></a>
# **getFormFieldOption**
> FormFieldOptionResponse getFormFieldOption(id)

Retrieves FormField Options

Retrieves a specific form_field_option by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldOptionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldOptionsApi apiInstance = new FormFieldOptionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      FormFieldOptionResponse result = apiInstance.getFormFieldOption(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldOptionsApi#getFormFieldOption");
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

[**FormFieldOptionResponse**](FormFieldOptionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field_option found |  -  |
| **404** | resource not found |  -  |

<a id="listFormFieldOptions"></a>
# **listFormFieldOptions**
> FormFieldOptionList listFormFieldOptions(formFieldId, include, pageNumber, pageSize, filterValue, filterColor)

List FormField Options

List form_field_options

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldOptionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldOptionsApi apiInstance = new FormFieldOptionsApi(defaultClient);
    String formFieldId = "formFieldId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterValue = "filterValue_example"; // String | 
    String filterColor = "filterColor_example"; // String | 
    try {
      FormFieldOptionList result = apiInstance.listFormFieldOptions(formFieldId, include, pageNumber, pageSize, filterValue, filterColor);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldOptionsApi#listFormFieldOptions");
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
| **formFieldId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterValue** | **String**|  | [optional] |
| **filterColor** | **String**|  | [optional] |

### Return type

[**FormFieldOptionList**](FormFieldOptionList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateFormFieldOption"></a>
# **updateFormFieldOption**
> FormFieldOptionResponse updateFormFieldOption(id, updateFormFieldOption)

Update FormField Options

Update a specific form_field_option by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldOptionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldOptionsApi apiInstance = new FormFieldOptionsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateFormFieldOption updateFormFieldOption = new UpdateFormFieldOption(); // UpdateFormFieldOption | 
    try {
      FormFieldOptionResponse result = apiInstance.updateFormFieldOption(id, updateFormFieldOption);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldOptionsApi#updateFormFieldOption");
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
| **updateFormFieldOption** | [**UpdateFormFieldOption**](UpdateFormFieldOption.md)|  | |

### Return type

[**FormFieldOptionResponse**](FormFieldOptionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field_option updated |  -  |
| **404** | resource not found |  -  |

