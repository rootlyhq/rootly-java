# IncidentFeedbacksApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIncidentFeedback**](IncidentFeedbacksApi.md#createIncidentFeedback) | **POST** /v1/incidents/{incident_id}/feedbacks | Creates an incident feedback |
| [**getIncidentFeedbacks**](IncidentFeedbacksApi.md#getIncidentFeedbacks) | **GET** /v1/feedbacks/{id} | Retrieves an incident feedback |
| [**listIncidentFeedbacks**](IncidentFeedbacksApi.md#listIncidentFeedbacks) | **GET** /v1/incidents/{incident_id}/feedbacks | List incident feedbacks |
| [**updateIncidentFeedback**](IncidentFeedbacksApi.md#updateIncidentFeedback) | **PUT** /v1/feedbacks/{id} | Update an incident feedback |


<a id="createIncidentFeedback"></a>
# **createIncidentFeedback**
> IncidentFeedbackResponse createIncidentFeedback(incidentId, newIncidentFeedback)

Creates an incident feedback

Creates a new feedback from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentFeedbacksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentFeedbacksApi apiInstance = new IncidentFeedbacksApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    NewIncidentFeedback newIncidentFeedback = new NewIncidentFeedback(); // NewIncidentFeedback | 
    try {
      IncidentFeedbackResponse result = apiInstance.createIncidentFeedback(incidentId, newIncidentFeedback);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentFeedbacksApi#createIncidentFeedback");
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
| **newIncidentFeedback** | [**NewIncidentFeedback**](NewIncidentFeedback.md)|  | |

### Return type

[**IncidentFeedbackResponse**](IncidentFeedbackResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | incident_feedback created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="getIncidentFeedbacks"></a>
# **getIncidentFeedbacks**
> IncidentFeedbackResponse getIncidentFeedbacks(id)

Retrieves an incident feedback

Retrieves a specific incident_feedback by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentFeedbacksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentFeedbacksApi apiInstance = new IncidentFeedbacksApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentFeedbackResponse result = apiInstance.getIncidentFeedbacks(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentFeedbacksApi#getIncidentFeedbacks");
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

[**IncidentFeedbackResponse**](IncidentFeedbackResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_feedback found |  -  |
| **404** | resource not found |  -  |

<a id="listIncidentFeedbacks"></a>
# **listIncidentFeedbacks**
> IncidentFeedbackList listIncidentFeedbacks(incidentId, include, pageNumber, pageSize)

List incident feedbacks

List incident feedbacks

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentFeedbacksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentFeedbacksApi apiInstance = new IncidentFeedbacksApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      IncidentFeedbackList result = apiInstance.listIncidentFeedbacks(incidentId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentFeedbacksApi#listIncidentFeedbacks");
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

[**IncidentFeedbackList**](IncidentFeedbackList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateIncidentFeedback"></a>
# **updateIncidentFeedback**
> IncidentFeedbackResponse updateIncidentFeedback(id, updateIncidentFeedback)

Update an incident feedback

Update a specific incident feedback by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentFeedbacksApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentFeedbacksApi apiInstance = new IncidentFeedbacksApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateIncidentFeedback updateIncidentFeedback = new UpdateIncidentFeedback(); // UpdateIncidentFeedback | 
    try {
      IncidentFeedbackResponse result = apiInstance.updateIncidentFeedback(id, updateIncidentFeedback);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentFeedbacksApi#updateIncidentFeedback");
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
| **updateIncidentFeedback** | [**UpdateIncidentFeedback**](UpdateIncidentFeedback.md)|  | |

### Return type

[**IncidentFeedbackResponse**](IncidentFeedbackResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_feedback updated |  -  |
| **404** | resource not found |  -  |

