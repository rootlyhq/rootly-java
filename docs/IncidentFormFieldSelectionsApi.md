# IncidentFormFieldSelectionsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIncidentFormFieldSelection**](IncidentFormFieldSelectionsApi.md#createIncidentFormFieldSelection) | **POST** /v1/incidents/{incident_id}/form_field_selections | Creates an incident form field selection |
| [**deleteIncidentFormFieldSelection**](IncidentFormFieldSelectionsApi.md#deleteIncidentFormFieldSelection) | **DELETE** /v1/incident_form_field_selections/{id} | Delete an incident form field selection |
| [**getIncidentFormFieldSelection**](IncidentFormFieldSelectionsApi.md#getIncidentFormFieldSelection) | **GET** /v1/incident_form_field_selections/{id} | Retrieves an incident form field selection |
| [**listIncidentFormFieldSelections**](IncidentFormFieldSelectionsApi.md#listIncidentFormFieldSelections) | **GET** /v1/incidents/{incident_id}/form_field_selections | List incident form field selections |
| [**updateIncidentFormFieldSelection**](IncidentFormFieldSelectionsApi.md#updateIncidentFormFieldSelection) | **PUT** /v1/incident_form_field_selections/{id} | Update an incident form field selection |


<a id="createIncidentFormFieldSelection"></a>
# **createIncidentFormFieldSelection**
> IncidentFormFieldSelectionResponse createIncidentFormFieldSelection(incidentId, newIncidentFormFieldSelection)

Creates an incident form field selection

Creates a new incident form field selection from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentFormFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentFormFieldSelectionsApi apiInstance = new IncidentFormFieldSelectionsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    NewIncidentFormFieldSelection newIncidentFormFieldSelection = new NewIncidentFormFieldSelection(); // NewIncidentFormFieldSelection | 
    try {
      IncidentFormFieldSelectionResponse result = apiInstance.createIncidentFormFieldSelection(incidentId, newIncidentFormFieldSelection);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentFormFieldSelectionsApi#createIncidentFormFieldSelection");
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
| **newIncidentFormFieldSelection** | [**NewIncidentFormFieldSelection**](NewIncidentFormFieldSelection.md)|  | |

### Return type

[**IncidentFormFieldSelectionResponse**](IncidentFormFieldSelectionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident_form_field_selection created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="deleteIncidentFormFieldSelection"></a>
# **deleteIncidentFormFieldSelection**
> IncidentFormFieldSelectionResponse deleteIncidentFormFieldSelection(id)

Delete an incident form field selection

Delete a specific incident form field selection by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentFormFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentFormFieldSelectionsApi apiInstance = new IncidentFormFieldSelectionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentFormFieldSelectionResponse result = apiInstance.deleteIncidentFormFieldSelection(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentFormFieldSelectionsApi#deleteIncidentFormFieldSelection");
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

[**IncidentFormFieldSelectionResponse**](IncidentFormFieldSelectionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_form_field_selection deleted |  -  |
| **404** | resource not found |  -  |

<a id="getIncidentFormFieldSelection"></a>
# **getIncidentFormFieldSelection**
> IncidentFormFieldSelectionResponse getIncidentFormFieldSelection(id)

Retrieves an incident form field selection

Retrieves a specific incident form field selection by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentFormFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentFormFieldSelectionsApi apiInstance = new IncidentFormFieldSelectionsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentFormFieldSelectionResponse result = apiInstance.getIncidentFormFieldSelection(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentFormFieldSelectionsApi#getIncidentFormFieldSelection");
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

[**IncidentFormFieldSelectionResponse**](IncidentFormFieldSelectionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_form_field_selection found |  -  |
| **404** | resource not found |  -  |

<a id="listIncidentFormFieldSelections"></a>
# **listIncidentFormFieldSelections**
> IncidentFormFieldSelectionList listIncidentFormFieldSelections(incidentId, include, pageNumber, pageSize)

List incident form field selections

List incident form field selections

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentFormFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentFormFieldSelectionsApi apiInstance = new IncidentFormFieldSelectionsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      IncidentFormFieldSelectionList result = apiInstance.listIncidentFormFieldSelections(incidentId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentFormFieldSelectionsApi#listIncidentFormFieldSelections");
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

[**IncidentFormFieldSelectionList**](IncidentFormFieldSelectionList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateIncidentFormFieldSelection"></a>
# **updateIncidentFormFieldSelection**
> IncidentFormFieldSelectionResponse updateIncidentFormFieldSelection(id, updateIncidentFormFieldSelection)

Update an incident form field selection

Update a specific incident form field selection by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentFormFieldSelectionsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentFormFieldSelectionsApi apiInstance = new IncidentFormFieldSelectionsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateIncidentFormFieldSelection updateIncidentFormFieldSelection = new UpdateIncidentFormFieldSelection(); // UpdateIncidentFormFieldSelection | 
    try {
      IncidentFormFieldSelectionResponse result = apiInstance.updateIncidentFormFieldSelection(id, updateIncidentFormFieldSelection);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentFormFieldSelectionsApi#updateIncidentFormFieldSelection");
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
| **updateIncidentFormFieldSelection** | [**UpdateIncidentFormFieldSelection**](UpdateIncidentFormFieldSelection.md)|  | |

### Return type

[**IncidentFormFieldSelectionResponse**](IncidentFormFieldSelectionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_form_field_selection updated |  -  |
| **404** | resource not found |  -  |

