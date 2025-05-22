# FormSetsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createFormSet**](FormSetsApi.md#createFormSet) | **POST** /v1/form_sets | Creates a Form Set |
| [**deleteFormSet**](FormSetsApi.md#deleteFormSet) | **DELETE** /v1/form_sets/{id} | Delete a Form Set |
| [**getFormSet**](FormSetsApi.md#getFormSet) | **GET** /v1/form_sets/{id} | Retrieves a Form Set |
| [**listFormSets**](FormSetsApi.md#listFormSets) | **GET** /v1/form_sets | List Form Sets |
| [**updateFormSet**](FormSetsApi.md#updateFormSet) | **PUT** /v1/form_sets/{id} | Update a Form Set |


<a id="createFormSet"></a>
# **createFormSet**
> FormSetResponse createFormSet(newFormSet)

Creates a Form Set

Creates a new form_set from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormSetsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormSetsApi apiInstance = new FormSetsApi(defaultClient);
    NewFormSet newFormSet = new NewFormSet(); // NewFormSet | 
    try {
      FormSetResponse result = apiInstance.createFormSet(newFormSet);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormSetsApi#createFormSet");
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
| **newFormSet** | [**NewFormSet**](NewFormSet.md)|  | |

### Return type

[**FormSetResponse**](FormSetResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | form_set created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteFormSet"></a>
# **deleteFormSet**
> FormSetResponse deleteFormSet(id)

Delete a Form Set

Delete a specific form_set by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormSetsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormSetsApi apiInstance = new FormSetsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      FormSetResponse result = apiInstance.deleteFormSet(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormSetsApi#deleteFormSet");
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

[**FormSetResponse**](FormSetResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_set deleted |  -  |
| **404** | resource not found |  -  |

<a id="getFormSet"></a>
# **getFormSet**
> FormSetResponse getFormSet(id)

Retrieves a Form Set

Retrieves a specific form_set by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormSetsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormSetsApi apiInstance = new FormSetsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      FormSetResponse result = apiInstance.getFormSet(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormSetsApi#getFormSet");
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

[**FormSetResponse**](FormSetResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_set found |  -  |
| **404** | resource not found |  -  |

<a id="listFormSets"></a>
# **listFormSets**
> FormSetList listFormSets(include, pageNumber, pageSize, filterSlug, filterIsDefault, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List Form Sets

List form_sets

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormSetsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormSetsApi apiInstance = new FormSetsApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterSlug = "filterSlug_example"; // String | 
    Boolean filterIsDefault = true; // Boolean | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      FormSetList result = apiInstance.listFormSets(include, pageNumber, pageSize, filterSlug, filterIsDefault, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormSetsApi#listFormSets");
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
| **filterSlug** | **String**|  | [optional] |
| **filterIsDefault** | **Boolean**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**FormSetList**](FormSetList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateFormSet"></a>
# **updateFormSet**
> FormSetResponse updateFormSet(id, updateFormSet)

Update a Form Set

Update a specific form_set by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.FormSetsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    FormSetsApi apiInstance = new FormSetsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateFormSet updateFormSet = new UpdateFormSet(); // UpdateFormSet | 
    try {
      FormSetResponse result = apiInstance.updateFormSet(id, updateFormSet);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FormSetsApi#updateFormSet");
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
| **updateFormSet** | [**UpdateFormSet**](UpdateFormSet.md)|  | |

### Return type

[**FormSetResponse**](FormSetResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | form_set updated |  -  |
| **404** | resource not found |  -  |

