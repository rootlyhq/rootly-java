# AuditsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**listAudits**](AuditsApi.md#listAudits) | **GET** /v1/audits | List audits |


<a id="listAudits"></a>
# **listAudits**
> AuditsList listAudits(include, pageNumber, pageSize, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterUserId, filterApiKeyId, filterSource, filterItemType, sort)

List audits

List audits

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AuditsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AuditsApi apiInstance = new AuditsApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    String filterUserId = "filterUserId_example"; // String | 
    String filterApiKeyId = "filterApiKeyId_example"; // String | 
    String filterSource = "filterSource_example"; // String | 
    String filterItemType = "filterItemType_example"; // String | 
    String sort = "sort_example"; // String | 
    try {
      AuditsList result = apiInstance.listAudits(include, pageNumber, pageSize, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte, filterUserId, filterApiKeyId, filterSource, filterItemType, sort);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuditsApi#listAudits");
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
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |
| **filterUserId** | **String**|  | [optional] |
| **filterApiKeyId** | **String**|  | [optional] |
| **filterSource** | **String**|  | [optional] |
| **filterItemType** | **String**|  | [optional] |
| **sort** | **String**|  | [optional] |

### Return type

[**AuditsList**](AuditsList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

