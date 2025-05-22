# IncidentRetrospectiveStepsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getIncidentRetrospectiveStep**](IncidentRetrospectiveStepsApi.md#getIncidentRetrospectiveStep) | **GET** /v1/incident_retrospective_steps/{id} | Retrieves an incident retrospective step |
| [**updateIncidentRetrospectiveStep**](IncidentRetrospectiveStepsApi.md#updateIncidentRetrospectiveStep) | **PUT** /v1/incident_retrospective_steps/{id} | Update an incident retrospective step |


<a id="getIncidentRetrospectiveStep"></a>
# **getIncidentRetrospectiveStep**
> IncidentRetrospectiveStepResponse getIncidentRetrospectiveStep(id)

Retrieves an incident retrospective step

Retrieves a specific incident retrospective step by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentRetrospectiveStepsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentRetrospectiveStepsApi apiInstance = new IncidentRetrospectiveStepsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      IncidentRetrospectiveStepResponse result = apiInstance.getIncidentRetrospectiveStep(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentRetrospectiveStepsApi#getIncidentRetrospectiveStep");
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

[**IncidentRetrospectiveStepResponse**](IncidentRetrospectiveStepResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident retrospective_step found |  -  |
| **404** | resource not found |  -  |

<a id="updateIncidentRetrospectiveStep"></a>
# **updateIncidentRetrospectiveStep**
> IncidentRetrospectiveStepResponse updateIncidentRetrospectiveStep(id, updateIncidentRetrospectiveStep)

Update an incident retrospective step

Update a specific incident retrospective step by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IncidentRetrospectiveStepsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IncidentRetrospectiveStepsApi apiInstance = new IncidentRetrospectiveStepsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateIncidentRetrospectiveStep updateIncidentRetrospectiveStep = new UpdateIncidentRetrospectiveStep(); // UpdateIncidentRetrospectiveStep | 
    try {
      IncidentRetrospectiveStepResponse result = apiInstance.updateIncidentRetrospectiveStep(id, updateIncidentRetrospectiveStep);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IncidentRetrospectiveStepsApi#updateIncidentRetrospectiveStep");
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
| **updateIncidentRetrospectiveStep** | [**UpdateIncidentRetrospectiveStep**](UpdateIncidentRetrospectiveStep.md)|  | |

### Return type

[**IncidentRetrospectiveStepResponse**](IncidentRetrospectiveStepResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | incident_retrospective_step updated |  -  |
| **404** | resource not found |  -  |

