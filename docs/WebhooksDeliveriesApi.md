# WebhooksDeliveriesApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deliverWebhooksDelivery**](WebhooksDeliveriesApi.md#deliverWebhooksDelivery) | **POST** /v1/webhooks/deliveries/{id}/deliver | Retries a webhook delivery |
| [**getWebhooksDelivery**](WebhooksDeliveriesApi.md#getWebhooksDelivery) | **GET** /v1/webhooks/deliveries/{id} | Retrieves a webhook delivery |
| [**listWebhooksDeliveries**](WebhooksDeliveriesApi.md#listWebhooksDeliveries) | **GET** /v1/webhooks/endpoints/{endpoint_id}/deliveries | List webhook deliveries |


<a id="deliverWebhooksDelivery"></a>
# **deliverWebhooksDelivery**
> WebhooksDeliveryResponse deliverWebhooksDelivery(id)

Retries a webhook delivery

Retries a webhook delivery

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WebhooksDeliveriesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WebhooksDeliveriesApi apiInstance = new WebhooksDeliveriesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WebhooksDeliveryResponse result = apiInstance.deliverWebhooksDelivery(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WebhooksDeliveriesApi#deliverWebhooksDelivery");
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

[**WebhooksDeliveryResponse**](WebhooksDeliveryResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | webhooks_delivery delivered |  -  |

<a id="getWebhooksDelivery"></a>
# **getWebhooksDelivery**
> WebhooksDeliveryResponse getWebhooksDelivery(id)

Retrieves a webhook delivery

Retrieves a specific webhook delivery by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WebhooksDeliveriesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WebhooksDeliveriesApi apiInstance = new WebhooksDeliveriesApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      WebhooksDeliveryResponse result = apiInstance.getWebhooksDelivery(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WebhooksDeliveriesApi#getWebhooksDelivery");
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

[**WebhooksDeliveryResponse**](WebhooksDeliveryResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | webhooks_delivery found |  -  |
| **404** | resource not found |  -  |

<a id="listWebhooksDeliveries"></a>
# **listWebhooksDeliveries**
> WebhooksDeliveryList listWebhooksDeliveries(endpointId, include, pageNumber, pageSize)

List webhook deliveries

List webhook deliveries for given endpoint

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.WebhooksDeliveriesApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    WebhooksDeliveriesApi apiInstance = new WebhooksDeliveriesApi(defaultClient);
    String endpointId = "endpointId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    try {
      WebhooksDeliveryList result = apiInstance.listWebhooksDeliveries(endpointId, include, pageNumber, pageSize);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WebhooksDeliveriesApi#listWebhooksDeliveries");
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
| **endpointId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |

### Return type

[**WebhooksDeliveryList**](WebhooksDeliveryList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

