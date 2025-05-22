# PulsesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createPulse**](PulsesApi.md#createPulse) | **POST** /v1/pulses | Creates a pulse |
| [**getPulse**](PulsesApi.md#getPulse) | **GET** /v1/pulses/{id} | Retrieves a pulse |
| [**listPulses**](PulsesApi.md#listPulses) | **GET** /v1/pulses | List pulses |
| [**updatePulse**](PulsesApi.md#updatePulse) | **PUT** /v1/pulses/{id} | Update a pulse |


<a id="createPulse"></a>
# **createPulse**
> PulseResponse createPulse(newPulse)

Creates a pulse

Creates a new pulse from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PulsesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PulsesApi apiInstance = new PulsesApi(defaultClient);
    NewPulse newPulse = new NewPulse(); // NewPulse | 
    try {
      PulseResponse result = apiInstance.createPulse(newPulse);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PulsesApi#createPulse");
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
| **newPulse** | [**NewPulse**](NewPulse.md)|  | |

### Return type

[**PulseResponse**](PulseResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | pulse created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="getPulse"></a>
# **getPulse**
> PulseResponse getPulse(id)

Retrieves a pulse

Retrieves a specific pulse by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PulsesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PulsesApi apiInstance = new PulsesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      PulseResponse result = apiInstance.getPulse(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PulsesApi#getPulse");
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

[**PulseResponse**](PulseResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | pulse found |  -  |
| **404** | resource not found |  -  |

<a id="listPulses"></a>
# **listPulses**
> PulseList listPulses(include, filterSource, filterServices, filterEnvironments, filterLabels, filterRefs, filterStartedAtGt, filterStartedAtGte, filterStartedAtLt, filterStartedAtLte, filterEndedAtGt, filterEndedAtGte, filterEndedAtLt, filterEndedAtLte, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, pageNumber, pageSize)

List pulses

List pulses

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PulsesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PulsesApi apiInstance = new PulsesApi(defaultClient);
    String include = "include_example"; // String | 
    String filterSource = "filterSource_example"; // String | 
    String filterServices = "filterServices_example"; // String | 
    String filterEnvironments = "filterEnvironments_example"; // String | 
    String filterLabels = "filterLabels_example"; // String | 
    String filterRefs = "filterRefs_example"; // String | 
    String filterStartedAtGt = "filterStartedAtGt_example"; // String | 
    String filterStartedAtGte = "filterStartedAtGte_example"; // String | 
    String filterStartedAtLt = "filterStartedAtLt_example"; // String | 
    String filterStartedAtLte = "filterStartedAtLte_example"; // String | 
    String filterEndedAtGt = "filterEndedAtGt_example"; // String | 
    String filterEndedAtGte = "filterEndedAtGte_example"; // String | 
    String filterEndedAtLt = "filterEndedAtLt_example"; // String | 
    String filterEndedAtLte = "filterEndedAtLte_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      PulseList result = apiInstance.listPulses(include, filterSource, filterServices, filterEnvironments, filterLabels, filterRefs, filterStartedAtGt, filterStartedAtGte, filterStartedAtLt, filterStartedAtLte, filterEndedAtGt, filterEndedAtGte, filterEndedAtLt, filterEndedAtLte, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PulsesApi#listPulses");
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
| **filterSource** | **String**|  | [optional] |
| **filterServices** | **String**|  | [optional] |
| **filterEnvironments** | **String**|  | [optional] |
| **filterLabels** | **String**|  | [optional] |
| **filterRefs** | **String**|  | [optional] |
| **filterStartedAtGt** | **String**|  | [optional] |
| **filterStartedAtGte** | **String**|  | [optional] |
| **filterStartedAtLt** | **String**|  | [optional] |
| **filterStartedAtLte** | **String**|  | [optional] |
| **filterEndedAtGt** | **String**|  | [optional] |
| **filterEndedAtGte** | **String**|  | [optional] |
| **filterEndedAtLt** | **String**|  | [optional] |
| **filterEndedAtLte** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**PulseList**](PulseList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updatePulse"></a>
# **updatePulse**
> PulseResponse updatePulse(id, updatePulse)

Update a pulse

Update a specific pulse by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.PulsesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    PulsesApi apiInstance = new PulsesApi(defaultClient);
    String id = "id_example"; // String | 
    UpdatePulse updatePulse = new UpdatePulse(); // UpdatePulse | 
    try {
      PulseResponse result = apiInstance.updatePulse(id, updatePulse);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PulsesApi#updatePulse");
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
| **updatePulse** | [**UpdatePulse**](UpdatePulse.md)|  | |

### Return type

[**PulseResponse**](PulseResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | pulse updated |  -  |
| **404** | resource not found |  -  |

