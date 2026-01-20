# FormFieldPlacementsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createFormFieldPlacement**](FormFieldPlacementsApi.md#createFormFieldPlacement) | **POST** /v1/form_fields/{form_field_id}/placements | Creates a Form Field Placement |
| [**deleteFormFieldPlacement**](FormFieldPlacementsApi.md#deleteFormFieldPlacement) | **DELETE** /v1/form_field_placements/{id} | Delete a Form Field Placement |
| [**getFormFieldPlacement**](FormFieldPlacementsApi.md#getFormFieldPlacement) | **GET** /v1/form_field_placements/{id} | Retrieves a Form Field Placement |
| [**listFormFieldPlacements**](FormFieldPlacementsApi.md#listFormFieldPlacements) | **GET** /v1/form_fields/{form_field_id}/placements | List Form Field Placements |
| [**updateFormFieldPlacement**](FormFieldPlacementsApi.md#updateFormFieldPlacement) | **PUT** /v1/form_field_placements/{id} | Update a Form Field Placement |


<a id="createFormFieldPlacement"></a>
# **createFormFieldPlacement**
> FormFieldPlacementResponse createFormFieldPlacement(formFieldId, newFormFieldPlacement)

Creates a Form Field Placement

Creates a new form_field_placement from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPlacementsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPlacementsApi apiInstance = new FormFieldPlacementsApi(defaultClient);
    String formFieldId = "formFieldId_example"; // String | 
    NewFormFieldPlacement newFormFieldPlacement = new NewFormFieldPlacement(); // NewFormFieldPlacement | 
    try {
      FormFieldPlacementResponse result = apiInstance.createFormFieldPlacement(formFieldId, newFormFieldPlacement);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPlacementsApi#createFormFieldPlacement");
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
| **newFormFieldPlacement** | [**NewFormFieldPlacement**](NewFormFieldPlacement.md)|  | |

### Return type

[**FormFieldPlacementResponse**](FormFieldPlacementResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | form_field_placement created with non_editable true |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteFormFieldPlacement"></a>
# **deleteFormFieldPlacement**
> FormFieldPlacementResponse deleteFormFieldPlacement(id)

Delete a Form Field Placement

Delete a specific form_field_placement by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPlacementsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPlacementsApi apiInstance = new FormFieldPlacementsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      FormFieldPlacementResponse result = apiInstance.deleteFormFieldPlacement(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPlacementsApi#deleteFormFieldPlacement");
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

[**FormFieldPlacementResponse**](FormFieldPlacementResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field_placement deleted |  -  |
| **404** | resource not found |  -  |

<a id="getFormFieldPlacement"></a>
# **getFormFieldPlacement**
> FormFieldPlacementResponse getFormFieldPlacement(id)

Retrieves a Form Field Placement

Retrieves a specific form_field_placement by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPlacementsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPlacementsApi apiInstance = new FormFieldPlacementsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      FormFieldPlacementResponse result = apiInstance.getFormFieldPlacement(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPlacementsApi#getFormFieldPlacement");
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

[**FormFieldPlacementResponse**](FormFieldPlacementResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field_placement found |  -  |
| **404** | resource not found |  -  |

<a id="listFormFieldPlacements"></a>
# **listFormFieldPlacements**
> FormFieldPlacementList listFormFieldPlacements(formFieldId, include, pageNumber, pageSize, filterFormFieldId)

List Form Field Placements

List form_field_placements

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPlacementsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPlacementsApi apiInstance = new FormFieldPlacementsApi(defaultClient);
    String formFieldId = "formFieldId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterFormFieldId = "filterFormFieldId_example"; // String | 
    try {
      FormFieldPlacementList result = apiInstance.listFormFieldPlacements(formFieldId, include, pageNumber, pageSize, filterFormFieldId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPlacementsApi#listFormFieldPlacements");
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
| **filterFormFieldId** | **String**|  | [optional] |

### Return type

[**FormFieldPlacementList**](FormFieldPlacementList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateFormFieldPlacement"></a>
# **updateFormFieldPlacement**
> FormFieldPlacementResponse updateFormFieldPlacement(id, updateFormFieldPlacement)

Update a Form Field Placement

Update a specific form_field_placement by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPlacementsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPlacementsApi apiInstance = new FormFieldPlacementsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateFormFieldPlacement updateFormFieldPlacement = new UpdateFormFieldPlacement(); // UpdateFormFieldPlacement | 
    try {
      FormFieldPlacementResponse result = apiInstance.updateFormFieldPlacement(id, updateFormFieldPlacement);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPlacementsApi#updateFormFieldPlacement");
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
| **updateFormFieldPlacement** | [**UpdateFormFieldPlacement**](UpdateFormFieldPlacement.md)|  | |

### Return type

[**FormFieldPlacementResponse**](FormFieldPlacementResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field_placement updated with non_editable |  -  |
| **404** | resource not found |  -  |

