# AlertsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**acknowledgeAlert**](AlertsApi.md#acknowledgeAlert) | **POST** /v1/alerts/{id}/acknowledge | Acknowledges an alert |
| [**attachAlert**](AlertsApi.md#attachAlert) | **POST** /v1/incidents/{incident_id}/alerts | Attach alerts to an incident |
| [**createAlert**](AlertsApi.md#createAlert) | **POST** /v1/alerts | Creates an alert |
| [**getAlert**](AlertsApi.md#getAlert) | **GET** /v1/alerts/{id} | Retrieves an alert |
| [**listAlerts**](AlertsApi.md#listAlerts) | **GET** /v1/alerts | List alerts |
| [**listIncidentAlerts**](AlertsApi.md#listIncidentAlerts) | **GET** /v1/incidents/{incident_id}/alerts | List Incident alerts |
| [**resolveAlert**](AlertsApi.md#resolveAlert) | **POST** /v1/alerts/{id}/resolve | Resolves an alert |
| [**updateAlert**](AlertsApi.md#updateAlert) | **PATCH** /v1/alerts/{id} | Update alert |


<a id="acknowledgeAlert"></a>
# **acknowledgeAlert**
> AlertResponse acknowledgeAlert(id)

Acknowledges an alert

Acknowledges a specific alert by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertsApi apiInstance = new AlertsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AlertResponse result = apiInstance.acknowledgeAlert(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertsApi#acknowledgeAlert");
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

[**AlertResponse**](AlertResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert acknowledged |  -  |
| **404** | resource not found |  -  |

<a id="attachAlert"></a>
# **attachAlert**
> AlertList attachAlert(incidentId, attachAlert)

Attach alerts to an incident

Attach alerts to an incident from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertsApi apiInstance = new AlertsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    AttachAlert attachAlert = new AttachAlert(); // AttachAlert | 
    try {
      AlertList result = apiInstance.attachAlert(incidentId, attachAlert);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertsApi#attachAlert");
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
| **attachAlert** | [**AttachAlert**](AttachAlert.md)|  | |

### Return type

[**AlertList**](AlertList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert created |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="createAlert"></a>
# **createAlert**
> AlertResponse createAlert(newAlert)

Creates an alert

Creates a new alert from provided data

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertsApi apiInstance = new AlertsApi(defaultClient);
    NewAlert newAlert = new NewAlert(); // NewAlert | 
    try {
      AlertResponse result = apiInstance.createAlert(newAlert);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertsApi#createAlert");
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
| **newAlert** | [**NewAlert**](NewAlert.md)|  | |

### Return type

[**AlertResponse**](AlertResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | alert created |  -  |
| **422** | invalid request |  -  |
| **401** | resource not found |  -  |

<a id="getAlert"></a>
# **getAlert**
> AlertResponse getAlert(id)

Retrieves an alert

Retrieves a specific alert by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertsApi apiInstance = new AlertsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AlertResponse result = apiInstance.getAlert(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertsApi#getAlert");
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

[**AlertResponse**](AlertResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert found |  -  |
| **404** | resource not found |  -  |

<a id="listAlerts"></a>
# **listAlerts**
> AlertList listAlerts(include, filterStatus, pageNumber, pageSize)

List alerts

List alerts

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertsApi apiInstance = new AlertsApi(defaultClient);
    String include = "include_example"; // String | 
    String filterStatus = "filterStatus_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      AlertList result = apiInstance.listAlerts(include, filterStatus, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertsApi#listAlerts");
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
| **filterStatus** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**AlertList**](AlertList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | filter by status |  -  |

<a id="listIncidentAlerts"></a>
# **listIncidentAlerts**
> AlertList listIncidentAlerts(incidentId, include, filterSource, filterServices, filterEnvironments, filterGroups, filterLabels, filterStartedAtGt, filterStartedAtGte, filterStartedAtLt, filterStartedAtLte, filterEndedAtGt, filterEndedAtGte, filterEndedAtLt, filterEndedAtLte, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, pageNumber, pageSize)

List Incident alerts

List incident alerts

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertsApi apiInstance = new AlertsApi(defaultClient);
    String incidentId = "incidentId_example"; // String | 
    String include = "include_example"; // String | 
    String filterSource = "filterSource_example"; // String | 
    String filterServices = "filterServices_example"; // String | 
    String filterEnvironments = "filterEnvironments_example"; // String | 
    String filterGroups = "filterGroups_example"; // String | 
    String filterLabels = "filterLabels_example"; // String | 
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
      AlertList result = apiInstance.listIncidentAlerts(incidentId, include, filterSource, filterServices, filterEnvironments, filterGroups, filterLabels, filterStartedAtGt, filterStartedAtGte, filterStartedAtLt, filterStartedAtLte, filterEndedAtGt, filterEndedAtGte, filterEndedAtLt, filterEndedAtLte, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertsApi#listIncidentAlerts");
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
| **filterSource** | **String**|  | [optional] |
| **filterServices** | **String**|  | [optional] |
| **filterEnvironments** | **String**|  | [optional] |
| **filterGroups** | **String**|  | [optional] |
| **filterLabels** | **String**|  | [optional] |
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

[**AlertList**](AlertList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="resolveAlert"></a>
# **resolveAlert**
> AlertResponse resolveAlert(id, resolveAlert)

Resolves an alert

Resolves a specific alert by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertsApi apiInstance = new AlertsApi(defaultClient);
    String id = "id_example"; // String | 
    ResolveAlert resolveAlert = new ResolveAlert(); // ResolveAlert | 
    try {
      AlertResponse result = apiInstance.resolveAlert(id, resolveAlert);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertsApi#resolveAlert");
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
| **resolveAlert** | [**ResolveAlert**](ResolveAlert.md)|  | [optional] |

### Return type

[**AlertResponse**](AlertResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | resolve acknowledged |  -  |
| **404** | resource not found |  -  |

<a id="updateAlert"></a>
# **updateAlert**
> AlertResponse updateAlert(id, updateAlert)

Update alert

Updates an alert

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertsApi apiInstance = new AlertsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateAlert updateAlert = new UpdateAlert(); // UpdateAlert | 
    try {
      AlertResponse result = apiInstance.updateAlert(id, updateAlert);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertsApi#updateAlert");
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
| **updateAlert** | [**UpdateAlert**](UpdateAlert.md)|  | [optional] |

### Return type

[**AlertResponse**](AlertResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert updated |  -  |
| **422** | invalid request |  -  |

