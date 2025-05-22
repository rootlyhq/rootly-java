# FormFieldsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createFormField**](FormFieldsApi.md#createFormField) | **POST** /v1/form_fields | Creates a Form Field |
| [**deleteFormField**](FormFieldsApi.md#deleteFormField) | **DELETE** /v1/form_fields/{id} | Delete a Form Field |
| [**getFormField**](FormFieldsApi.md#getFormField) | **GET** /v1/form_fields/{id} | Retrieves a Form Field |
| [**listFormFields**](FormFieldsApi.md#listFormFields) | **GET** /v1/form_fields | List Form Fields |
| [**updateFormField**](FormFieldsApi.md#updateFormField) | **PUT** /v1/form_fields/{id} | Update a Form Field |


<a id="createFormField"></a>
# **createFormField**
> FormFieldResponse createFormField(newFormField)

Creates a Form Field

Creates a new form_field from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldsApi apiInstance = new FormFieldsApi(defaultClient);
    NewFormField newFormField = new NewFormField(); // NewFormField | 
    try {
      FormFieldResponse result = apiInstance.createFormField(newFormField);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldsApi#createFormField");
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
| **newFormField** | [**NewFormField**](NewFormField.md)|  | |

### Return type

[**FormFieldResponse**](FormFieldResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | form_field created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteFormField"></a>
# **deleteFormField**
> FormFieldResponse deleteFormField(id)

Delete a Form Field

Delete a specific form_field by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldsApi apiInstance = new FormFieldsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      FormFieldResponse result = apiInstance.deleteFormField(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldsApi#deleteFormField");
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

[**FormFieldResponse**](FormFieldResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field deleted |  -  |
| **404** | resource not found |  -  |

<a id="getFormField"></a>
# **getFormField**
> FormFieldResponse getFormField(id, include)

Retrieves a Form Field

Retrieves a specific form_field by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldsApi apiInstance = new FormFieldsApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "options"; // String | comma separated if needed. eg: options,positions
    try {
      FormFieldResponse result = apiInstance.getFormField(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldsApi#getFormField");
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
| **include** | **String**| comma separated if needed. eg: options,positions | [optional] [enum: options, positions] |

### Return type

[**FormFieldResponse**](FormFieldResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field found |  -  |
| **404** | resource not found |  -  |

<a id="listFormFields"></a>
# **listFormFields**
> FormFieldList listFormFields(include, pageNumber, pageSize, filterSearch, filterSlug, filterName, filterKind, filterEnabled, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List Form Fields

List form_fields

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldsApi apiInstance = new FormFieldsApi(defaultClient);
    String include = "options"; // String | comma separated if needed. eg: options,positions
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSearch = "filterSearch_example"; // String | 
    String filterSlug = "filterSlug_example"; // String | 
    String filterName = "filterName_example"; // String | 
    String filterKind = "filterKind_example"; // String | 
    Boolean filterEnabled = true; // Boolean | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      FormFieldList result = apiInstance.listFormFields(include, pageNumber, pageSize, filterSearch, filterSlug, filterName, filterKind, filterEnabled, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldsApi#listFormFields");
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
| **include** | **String**| comma separated if needed. eg: options,positions | [optional] [enum: options, positions] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterSearch** | **String**|  | [optional] |
| **filterSlug** | **String**|  | [optional] |
| **filterName** | **String**|  | [optional] |
| **filterKind** | **String**|  | [optional] |
| **filterEnabled** | **Boolean**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**FormFieldList**](FormFieldList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateFormField"></a>
# **updateFormField**
> FormFieldResponse updateFormField(id, updateFormField)

Update a Form Field

Update a specific form_field by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldsApi apiInstance = new FormFieldsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateFormField updateFormField = new UpdateFormField(); // UpdateFormField | 
    try {
      FormFieldResponse result = apiInstance.updateFormField(id, updateFormField);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldsApi#updateFormField");
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
| **updateFormField** | [**UpdateFormField**](UpdateFormField.md)|  | |

### Return type

[**FormFieldResponse**](FormFieldResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field updated |  -  |
| **404** | resource not found |  -  |

