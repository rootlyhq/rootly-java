# DeprecatedIncidentCustomFieldSelectionsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIncidentCustomFieldSelection**](DeprecatedIncidentCustomFieldSelectionsApi.md#createIncidentCustomFieldSelection) | **POST** /v1/incidents/{incident_id}/custom_field_selections | [DEPRECATED] Creates an incident custom field selection |
| [**deleteIncidentCustomFieldSelection**](DeprecatedIncidentCustomFieldSelectionsApi.md#deleteIncidentCustomFieldSelection) | **DELETE** /v1/incident_custom_field_selections/{id} | [DEPRECATED] Delete an incident custom field selection |
| [**getIncidentCustomFieldSelection**](DeprecatedIncidentCustomFieldSelectionsApi.md#getIncidentCustomFieldSelection) | **GET** /v1/incident_custom_field_selections/{id} | [DEPRECATED] Retrieves an incident custom field selection |
| [**listIncidentCustomFieldSelections**](DeprecatedIncidentCustomFieldSelectionsApi.md#listIncidentCustomFieldSelections) | **GET** /v1/incidents/{incident_id}/custom_field_selections | [DEPRECATED] List incident custom field selections |
| [**updateIncidentCustomFieldSelection**](DeprecatedIncidentCustomFieldSelectionsApi.md#updateIncidentCustomFieldSelection) | **PUT** /v1/incident_custom_field_selections/{id} | [DEPRECATED] Update an incident custom field selection |


<a id="createIncidentCustomFieldSelection"></a>
# **createIncidentCustomFieldSelection**
> IncidentCustomFieldSelectionResponse createIncidentCustomFieldSelection(incidentId, newIncidentCustomFieldSelection)

[DEPRECATED] Creates an incident custom field selection

[DEPRECATED] Use form field endpoints instead. Creates a new incident custom field selection from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedIncidentCustomFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedIncidentCustomFieldSelectionsApi apiInstance = new DeprecatedIncidentCustomFieldSelectionsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    NewIncidentCustomFieldSelection newIncidentCustomFieldSelection = new NewIncidentCustomFieldSelection(); // NewIncidentCustomFieldSelection | 
    try {
      IncidentCustomFieldSelectionResponse result = apiInstance.createIncidentCustomFieldSelection(incidentId, newIncidentCustomFieldSelection);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedIncidentCustomFieldSelectionsApi#createIncidentCustomFieldSelection");
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
| **incidentId** | **String**|  | |
| **newIncidentCustomFieldSelection** | [**NewIncidentCustomFieldSelection**](NewIncidentCustomFieldSelection.md)|  | |

### Return type

[**IncidentCustomFieldSelectionResponse**](IncidentCustomFieldSelectionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident_custom_field_selection created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteIncidentCustomFieldSelection"></a>
# **deleteIncidentCustomFieldSelection**
> IncidentCustomFieldSelectionResponse deleteIncidentCustomFieldSelection(id)

[DEPRECATED] Delete an incident custom field selection

[DEPRECATED] Use form field endpoints instead. Delete a specific incident custom field selection by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedIncidentCustomFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedIncidentCustomFieldSelectionsApi apiInstance = new DeprecatedIncidentCustomFieldSelectionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentCustomFieldSelectionResponse result = apiInstance.deleteIncidentCustomFieldSelection(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedIncidentCustomFieldSelectionsApi#deleteIncidentCustomFieldSelection");
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

[**IncidentCustomFieldSelectionResponse**](IncidentCustomFieldSelectionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_custom_field_selection deleted |  -  |
| **404** | resource not found |  -  |

<a id="getIncidentCustomFieldSelection"></a>
# **getIncidentCustomFieldSelection**
> IncidentCustomFieldSelectionResponse getIncidentCustomFieldSelection(id)

[DEPRECATED] Retrieves an incident custom field selection

[DEPRECATED] Use form field endpoints instead. Retrieves a specific incident custom field selection by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedIncidentCustomFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedIncidentCustomFieldSelectionsApi apiInstance = new DeprecatedIncidentCustomFieldSelectionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentCustomFieldSelectionResponse result = apiInstance.getIncidentCustomFieldSelection(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedIncidentCustomFieldSelectionsApi#getIncidentCustomFieldSelection");
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

[**IncidentCustomFieldSelectionResponse**](IncidentCustomFieldSelectionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_custom_field_selection found |  -  |
| **404** | resource not found |  -  |

<a id="listIncidentCustomFieldSelections"></a>
# **listIncidentCustomFieldSelections**
> IncidentCustomFieldSelectionList listIncidentCustomFieldSelections(incidentId, include, pageNumber, pageSize)

[DEPRECATED] List incident custom field selections

[DEPRECATED] Use form field endpoints instead. List incident custom field selections

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedIncidentCustomFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedIncidentCustomFieldSelectionsApi apiInstance = new DeprecatedIncidentCustomFieldSelectionsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      IncidentCustomFieldSelectionList result = apiInstance.listIncidentCustomFieldSelections(incidentId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedIncidentCustomFieldSelectionsApi#listIncidentCustomFieldSelections");
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
| **incidentId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**IncidentCustomFieldSelectionList**](IncidentCustomFieldSelectionList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateIncidentCustomFieldSelection"></a>
# **updateIncidentCustomFieldSelection**
> IncidentCustomFieldSelectionResponse updateIncidentCustomFieldSelection(id, updateIncidentCustomFieldSelection)

[DEPRECATED] Update an incident custom field selection

[DEPRECATED] Use form field endpoints instead. Update a specific incident custom field selection by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.DeprecatedIncidentCustomFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    DeprecatedIncidentCustomFieldSelectionsApi apiInstance = new DeprecatedIncidentCustomFieldSelectionsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateIncidentCustomFieldSelection updateIncidentCustomFieldSelection = new UpdateIncidentCustomFieldSelection(); // UpdateIncidentCustomFieldSelection | 
    try {
      IncidentCustomFieldSelectionResponse result = apiInstance.updateIncidentCustomFieldSelection(id, updateIncidentCustomFieldSelection);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DeprecatedIncidentCustomFieldSelectionsApi#updateIncidentCustomFieldSelection");
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
| **updateIncidentCustomFieldSelection** | [**UpdateIncidentCustomFieldSelection**](UpdateIncidentCustomFieldSelection.md)|  | |

### Return type

[**IncidentCustomFieldSelectionResponse**](IncidentCustomFieldSelectionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_custom_field_selection updated |  -  |
| **404** | resource not found |  -  |

