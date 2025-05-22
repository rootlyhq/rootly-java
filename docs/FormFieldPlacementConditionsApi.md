# FormFieldPlacementConditionsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createFormFieldPlacementCondition**](FormFieldPlacementConditionsApi.md#createFormFieldPlacementCondition) | **POST** /v1/form_field_placements/{form_field_placement_id}/conditions | Creates a Form Set Condition |
| [**deleteFormFieldPlacementCondition**](FormFieldPlacementConditionsApi.md#deleteFormFieldPlacementCondition) | **DELETE** /v1/form_field_placement_conditions/{id} | Delete a Form Set Condition |
| [**getFormFieldPlacementCondition**](FormFieldPlacementConditionsApi.md#getFormFieldPlacementCondition) | **GET** /v1/form_field_placement_conditions/{id} | Retrieves a Form Set Condition |
| [**listFormFieldPlacementConditions**](FormFieldPlacementConditionsApi.md#listFormFieldPlacementConditions) | **GET** /v1/form_field_placements/{form_field_placement_id}/conditions | List Form Set Conditions |
| [**updateFormFieldPlacementCondition**](FormFieldPlacementConditionsApi.md#updateFormFieldPlacementCondition) | **PUT** /v1/form_field_placement_conditions/{id} | Update a Form Set Condition |


<a id="createFormFieldPlacementCondition"></a>
# **createFormFieldPlacementCondition**
> FormFieldPlacementConditionResponse createFormFieldPlacementCondition(formFieldPlacementId, newFormFieldPlacementCondition)

Creates a Form Set Condition

Creates a new form_field_placement_condition from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPlacementConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPlacementConditionsApi apiInstance = new FormFieldPlacementConditionsApi(defaultClient);
    String formFieldPlacementId = "formFieldPlacementId_example"; // String | 
    NewFormFieldPlacementCondition newFormFieldPlacementCondition = new NewFormFieldPlacementCondition(); // NewFormFieldPlacementCondition | 
    try {
      FormFieldPlacementConditionResponse result = apiInstance.createFormFieldPlacementCondition(formFieldPlacementId, newFormFieldPlacementCondition);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPlacementConditionsApi#createFormFieldPlacementCondition");
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
| **formFieldPlacementId** | **String**|  | |
| **newFormFieldPlacementCondition** | [**NewFormFieldPlacementCondition**](NewFormFieldPlacementCondition.md)|  | |

### Return type

[**FormFieldPlacementConditionResponse**](FormFieldPlacementConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | form_field_placement_condition created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteFormFieldPlacementCondition"></a>
# **deleteFormFieldPlacementCondition**
> FormFieldPlacementConditionResponse deleteFormFieldPlacementCondition(id)

Delete a Form Set Condition

Delete a specific form_field_placement_condition by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPlacementConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPlacementConditionsApi apiInstance = new FormFieldPlacementConditionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      FormFieldPlacementConditionResponse result = apiInstance.deleteFormFieldPlacementCondition(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPlacementConditionsApi#deleteFormFieldPlacementCondition");
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

[**FormFieldPlacementConditionResponse**](FormFieldPlacementConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field_placement_condition deleted |  -  |
| **404** | resource not found |  -  |

<a id="getFormFieldPlacementCondition"></a>
# **getFormFieldPlacementCondition**
> FormFieldPlacementConditionResponse getFormFieldPlacementCondition(id)

Retrieves a Form Set Condition

Retrieves a specific form_field_placement_condition by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPlacementConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPlacementConditionsApi apiInstance = new FormFieldPlacementConditionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      FormFieldPlacementConditionResponse result = apiInstance.getFormFieldPlacementCondition(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPlacementConditionsApi#getFormFieldPlacementCondition");
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

[**FormFieldPlacementConditionResponse**](FormFieldPlacementConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field_placement_condition found |  -  |
| **404** | resource not found |  -  |

<a id="listFormFieldPlacementConditions"></a>
# **listFormFieldPlacementConditions**
> FormFieldPlacementConditionList listFormFieldPlacementConditions(formFieldPlacementId, include, pageNumber, pageSize, filterFormFieldId)

List Form Set Conditions

List form_field_placement_conditions

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPlacementConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPlacementConditionsApi apiInstance = new FormFieldPlacementConditionsApi(defaultClient);
    String formFieldPlacementId = "formFieldPlacementId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterFormFieldId = "filterFormFieldId_example"; // String | 
    try {
      FormFieldPlacementConditionList result = apiInstance.listFormFieldPlacementConditions(formFieldPlacementId, include, pageNumber, pageSize, filterFormFieldId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPlacementConditionsApi#listFormFieldPlacementConditions");
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
| **formFieldPlacementId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterFormFieldId** | **String**|  | [optional] |

### Return type

[**FormFieldPlacementConditionList**](FormFieldPlacementConditionList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateFormFieldPlacementCondition"></a>
# **updateFormFieldPlacementCondition**
> FormFieldPlacementConditionResponse updateFormFieldPlacementCondition(id, updateFormFieldPlacementCondition)

Update a Form Set Condition

Update a specific form_field_placement_condition by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormFieldPlacementConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormFieldPlacementConditionsApi apiInstance = new FormFieldPlacementConditionsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateFormFieldPlacementCondition updateFormFieldPlacementCondition = new UpdateFormFieldPlacementCondition(); // UpdateFormFieldPlacementCondition | 
    try {
      FormFieldPlacementConditionResponse result = apiInstance.updateFormFieldPlacementCondition(id, updateFormFieldPlacementCondition);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormFieldPlacementConditionsApi#updateFormFieldPlacementCondition");
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
| **updateFormFieldPlacementCondition** | [**UpdateFormFieldPlacementCondition**](UpdateFormFieldPlacementCondition.md)|  | |

### Return type

[**FormFieldPlacementConditionResponse**](FormFieldPlacementConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_field_placement_condition updated |  -  |
| **404** | resource not found |  -  |

