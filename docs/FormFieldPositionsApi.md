# FormFieldPositionsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createFormFieldPosition**](FormFieldPositionsApi.md#createFormFieldPosition) | **POST** /v1/form_fields/{form_field_id}/positions | Creates FormField Positions |
| [**deleteFormFieldPosition**](FormFieldPositionsApi.md#deleteFormFieldPosition) | **DELETE** /v1/form_field_positions/{id} | Delete a FormFieldPosition |
| [**getFormFieldPosition**](FormFieldPositionsApi.md#getFormFieldPosition) | **GET** /v1/form_field_positions/{id} | Retrieves a FormFieldPosition |
| [**listFormFieldPositions**](FormFieldPositionsApi.md#listFormFieldPositions) | **GET** /v1/form_fields/{form_field_id}/positions | List FormField Position |
| [**updateFormFieldPosition**](FormFieldPositionsApi.md#updateFormFieldPosition) | **PUT** /v1/form_field_positions/{id} | Update a FormFieldPosition |


<a id="createFormFieldPosition"></a>
# **createFormFieldPosition**
> FormFieldPositionResponse createFormFieldPosition(formFieldId, newFormFieldPosition)

Creates FormField Positions

Creates a new form field_position from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPositionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPositionsApi apiInstance = new FormFieldPositionsApi(defaultClient);
    String formFieldId = "formFieldId_example"; // String | 
    NewFormFieldPosition newFormFieldPosition = new NewFormFieldPosition(); // NewFormFieldPosition | 
    try {
      FormFieldPositionResponse result = apiInstance.createFormFieldPosition(formFieldId, newFormFieldPosition);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPositionsApi#createFormFieldPosition");
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
| **newFormFieldPosition** | [**NewFormFieldPosition**](NewFormFieldPosition.md)|  | |

### Return type

[**FormFieldPositionResponse**](FormFieldPositionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | form_field_position created |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteFormFieldPosition"></a>
# **deleteFormFieldPosition**
> FormFieldPositionResponse deleteFormFieldPosition(id)

Delete a FormFieldPosition

Delete a specific form_field position by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPositionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPositionsApi apiInstance = new FormFieldPositionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      FormFieldPositionResponse result = apiInstance.deleteFormFieldPosition(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPositionsApi#deleteFormFieldPosition");
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

[**FormFieldPositionResponse**](FormFieldPositionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field_position deleted |  -  |
| **404** | resource not found |  -  |

<a id="getFormFieldPosition"></a>
# **getFormFieldPosition**
> FormFieldPositionResponse getFormFieldPosition(id)

Retrieves a FormFieldPosition

Retrieves a specific form field_position by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPositionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPositionsApi apiInstance = new FormFieldPositionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      FormFieldPositionResponse result = apiInstance.getFormFieldPosition(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPositionsApi#getFormFieldPosition");
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

[**FormFieldPositionResponse**](FormFieldPositionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field_position found |  -  |
| **404** | resource not found |  -  |

<a id="listFormFieldPositions"></a>
# **listFormFieldPositions**
> FormFieldPositionList listFormFieldPositions(formFieldId, include, pageNumber, pageSize, filterForm)

List FormField Position

List form field positions

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPositionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPositionsApi apiInstance = new FormFieldPositionsApi(defaultClient);
    String formFieldId = "formFieldId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterForm = "filterForm_example"; // String | 
    try {
      FormFieldPositionList result = apiInstance.listFormFieldPositions(formFieldId, include, pageNumber, pageSize, filterForm);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPositionsApi#listFormFieldPositions");
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
| **filterForm** | **String**|  | [optional] |

### Return type

[**FormFieldPositionList**](FormFieldPositionList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateFormFieldPosition"></a>
# **updateFormFieldPosition**
> FormFieldPositionResponse updateFormFieldPosition(id, updateFormFieldPosition)

Update a FormFieldPosition

Update a specific form_field position by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPositionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPositionsApi apiInstance = new FormFieldPositionsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateFormFieldPosition updateFormFieldPosition = new UpdateFormFieldPosition(); // UpdateFormFieldPosition | 
    try {
      FormFieldPositionResponse result = apiInstance.updateFormFieldPosition(id, updateFormFieldPosition);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPositionsApi#updateFormFieldPosition");
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
| **updateFormFieldPosition** | [**UpdateFormFieldPosition**](UpdateFormFieldPosition.md)|  | |

### Return type

[**FormFieldPositionResponse**](FormFieldPositionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field_position updated |  -  |
| **404** | resource not found |  -  |

