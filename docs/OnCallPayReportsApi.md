# OnCallPayReportsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createOnCallPayReport**](OnCallPayReportsApi.md#createOnCallPayReport) | **POST** /v1/on_call_pay_reports | Creates an On-Call Pay Report |
| [**getOnCallPayReport**](OnCallPayReportsApi.md#getOnCallPayReport) | **GET** /v1/on_call_pay_reports/{id} | Retrieves an On-Call Pay Report |
| [**listOnCallPayReports**](OnCallPayReportsApi.md#listOnCallPayReports) | **GET** /v1/on_call_pay_reports | List On-Call Pay Reports |
| [**regenerateOnCallPayReport**](OnCallPayReportsApi.md#regenerateOnCallPayReport) | **POST** /v1/on_call_pay_reports/{id}/regenerate | Regenerate an On-Call Pay Report |
| [**updateOnCallPayReport**](OnCallPayReportsApi.md#updateOnCallPayReport) | **PUT** /v1/on_call_pay_reports/{id} | Update an On-Call Pay Report |


<a id="createOnCallPayReport"></a>
# **createOnCallPayReport**
> OnCallPayReportResponse createOnCallPayReport(newOnCallPayReport)

Creates an On-Call Pay Report

Generates a new on-call pay report for the given date range. The report is generated asynchronously.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallPayReportsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallPayReportsApi apiInstance = new OnCallPayReportsApi(defaultClient);
    NewOnCallPayReport newOnCallPayReport = new NewOnCallPayReport(); // NewOnCallPayReport | 
    try {
      OnCallPayReportResponse result = apiInstance.createOnCallPayReport(newOnCallPayReport);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallPayReportsApi#createOnCallPayReport");
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
| **newOnCallPayReport** | [**NewOnCallPayReport**](NewOnCallPayReport.md)|  | |

### Return type

[**OnCallPayReportResponse**](OnCallPayReportResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | on_call_pay_report created |  -  |
| **422** | invalid request |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

<a id="getOnCallPayReport"></a>
# **getOnCallPayReport**
> OnCallPayReportResponse getOnCallPayReport(id, include)

Retrieves an On-Call Pay Report

Retrieves a specific on-call pay report by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallPayReportsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallPayReportsApi apiInstance = new OnCallPayReportsApi(defaultClient);
    String id = "id_example"; // String | 
    String include = "include_example"; // String | 
    try {
      OnCallPayReportResponse result = apiInstance.getOnCallPayReport(id, include);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallPayReportsApi#getOnCallPayReport");
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
| **include** | **String**|  | [optional] |

### Return type

[**OnCallPayReportResponse**](OnCallPayReportResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | on_call_pay_report found |  -  |
| **404** | resource not found for different team |  -  |

<a id="listOnCallPayReports"></a>
# **listOnCallPayReports**
> OnCallPayReportList listOnCallPayReports(include, pageNumber, pageSize, filterStatus, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List On-Call Pay Reports

List on-call pay reports

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallPayReportsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallPayReportsApi apiInstance = new OnCallPayReportsApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterStatus = "filterStatus_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      OnCallPayReportList result = apiInstance.listOnCallPayReports(include, pageNumber, pageSize, filterStatus, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallPayReportsApi#listOnCallPayReports");
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
| **filterStatus** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**OnCallPayReportList**](OnCallPayReportList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="regenerateOnCallPayReport"></a>
# **regenerateOnCallPayReport**
> OnCallPayReportResponse regenerateOnCallPayReport(id)

Regenerate an On-Call Pay Report

Triggers regeneration of an existing on-call pay report.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallPayReportsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallPayReportsApi apiInstance = new OnCallPayReportsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      OnCallPayReportResponse result = apiInstance.regenerateOnCallPayReport(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallPayReportsApi#regenerateOnCallPayReport");
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

[**OnCallPayReportResponse**](OnCallPayReportResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | on_call_pay_report regeneration triggered |  -  |
| **404** | on_call_pay_report not found |  -  |

<a id="updateOnCallPayReport"></a>
# **updateOnCallPayReport**
> OnCallPayReportResponse updateOnCallPayReport(id, updateOnCallPayReport)

Update an On-Call Pay Report

Update a specific on-call pay report by id. Triggers report regeneration.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallPayReportsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallPayReportsApi apiInstance = new OnCallPayReportsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateOnCallPayReport updateOnCallPayReport = new UpdateOnCallPayReport(); // UpdateOnCallPayReport | 
    try {
      OnCallPayReportResponse result = apiInstance.updateOnCallPayReport(id, updateOnCallPayReport);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallPayReportsApi#updateOnCallPayReport");
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
| **updateOnCallPayReport** | [**UpdateOnCallPayReport**](UpdateOnCallPayReport.md)|  | |

### Return type

[**OnCallPayReportResponse**](OnCallPayReportResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | on_call_pay_report updated |  -  |
| **404** | not allowed when flipper disabled |  -  |
| **422** | invalid request |  -  |

