# IpRangesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getIpRanges**](IpRangesApi.md#getIpRanges) | **GET** /v1/ip_ranges | Retrieves IP ranges |


<a id="getIpRanges"></a>
# **getIpRanges**
> IpRangesResponse getIpRanges()

Retrieves IP ranges

Retrieves the IP ranges for rootly.com services

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.IpRangesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    IpRangesApi apiInstance = new IpRangesApi(defaultClient);
    try {
      IpRangesResponse result = apiInstance.getIpRanges();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IpRangesApi#getIpRanges");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IpRangesResponse**](IpRangesResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | ip_ranges found |  -  |

