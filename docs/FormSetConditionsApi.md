# FormSetConditionsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createFormSetCondition**](FormSetConditionsApi.md#createFormSetCondition) | **POST** /v1/form_sets/{form_set_id}/conditions | Creates a Form Set Condition |
| [**deleteFormSetCondition**](FormSetConditionsApi.md#deleteFormSetCondition) | **DELETE** /v1/form_set_conditions/{id} | Delete a Form Set Condition |
| [**getFormSetCondition**](FormSetConditionsApi.md#getFormSetCondition) | **GET** /v1/form_set_conditions/{id} | Retrieves a Form Set Condition |
| [**listFormSetConditions**](FormSetConditionsApi.md#listFormSetConditions) | **GET** /v1/form_sets/{form_set_id}/conditions | List Form Set Conditions |
| [**updateFormSetCondition**](FormSetConditionsApi.md#updateFormSetCondition) | **PUT** /v1/form_set_conditions/{id} | Update a Form Set Condition |


<a id="createFormSetCondition"></a>
# **createFormSetCondition**
> FormSetConditionResponse createFormSetCondition(formSetId, newFormSetCondition)

Creates a Form Set Condition

Creates a new form_set_condition from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormSetConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormSetConditionsApi apiInstance = new FormSetConditionsApi(defaultClient);
    String formSetId = "formSetId_example"; // String | 
    NewFormSetCondition newFormSetCondition = new NewFormSetCondition(); // NewFormSetCondition | 
    try {
      FormSetConditionResponse result = apiInstance.createFormSetCondition(formSetId, newFormSetCondition);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormSetConditionsApi#createFormSetCondition");
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
| **formSetId** | **String**|  | |
| **newFormSetCondition** | [**NewFormSetCondition**](NewFormSetCondition.md)|  | |

### Return type

[**FormSetConditionResponse**](FormSetConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | form_set_condition created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteFormSetCondition"></a>
# **deleteFormSetCondition**
> FormSetConditionResponse deleteFormSetCondition(id)

Delete a Form Set Condition

Delete a specific form_set_condition by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormSetConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormSetConditionsApi apiInstance = new FormSetConditionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      FormSetConditionResponse result = apiInstance.deleteFormSetCondition(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormSetConditionsApi#deleteFormSetCondition");
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

[**FormSetConditionResponse**](FormSetConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_set_condition deleted |  -  |
| **404** | resource not found |  -  |

<a id="getFormSetCondition"></a>
# **getFormSetCondition**
> FormSetConditionResponse getFormSetCondition(id)

Retrieves a Form Set Condition

Retrieves a specific form_set_condition by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormSetConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormSetConditionsApi apiInstance = new FormSetConditionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      FormSetConditionResponse result = apiInstance.getFormSetCondition(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormSetConditionsApi#getFormSetCondition");
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

[**FormSetConditionResponse**](FormSetConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_set_condition found |  -  |
| **404** | resource not found |  -  |

<a id="listFormSetConditions"></a>
# **listFormSetConditions**
> FormSetConditionList listFormSetConditions(formSetId, include, pageNumber, pageSize, filterFormFieldId)

List Form Set Conditions

List form_set_conditions

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormSetConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormSetConditionsApi apiInstance = new FormSetConditionsApi(defaultClient);
    String formSetId = "formSetId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterFormFieldId = "filterFormFieldId_example"; // String | 
    try {
      FormSetConditionList result = apiInstance.listFormSetConditions(formSetId, include, pageNumber, pageSize, filterFormFieldId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormSetConditionsApi#listFormSetConditions");
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
| **formSetId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterFormFieldId** | **String**|  | [optional] |

### Return type

[**FormSetConditionList**](FormSetConditionList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateFormSetCondition"></a>
# **updateFormSetCondition**
> FormSetConditionResponse updateFormSetCondition(id, updateFormSetCondition)

Update a Form Set Condition

Update a specific form_set_condition by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormSetConditionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormSetConditionsApi apiInstance = new FormSetConditionsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateFormSetCondition updateFormSetCondition = new UpdateFormSetCondition(); // UpdateFormSetCondition | 
    try {
      FormSetConditionResponse result = apiInstance.updateFormSetCondition(id, updateFormSetCondition);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormSetConditionsApi#updateFormSetCondition");
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
| **updateFormSetCondition** | [**UpdateFormSetCondition**](UpdateFormSetCondition.md)|  | |

### Return type

[**FormSetConditionResponse**](FormSetConditionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_set_condition updated |  -  |
| **404** | resource not found |  -  |

