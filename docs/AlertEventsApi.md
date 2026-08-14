# AlertEventsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createAlertEvent**](AlertEventsApi.md#createAlertEvent) | **POST** /v1/alerts/{alert_id}/events | Create alert event |
| [**deleteAlertEvent**](AlertEventsApi.md#deleteAlertEvent) | **DELETE** /v1/alert_events/{id} | Delete alert event |
| [**getAlertEvent**](AlertEventsApi.md#getAlertEvent) | **GET** /v1/alert_events/{id} | Retrieve alert event |
| [**listAlertEvents**](AlertEventsApi.md#listAlertEvents) | **GET** /v1/alerts/{alert_id}/events | List alert events |
| [**listAlertEventsFeed**](AlertEventsApi.md#listAlertEventsFeed) | **GET** /v1/alert_events | List alert events across alerts |
| [**updateAlertEvent**](AlertEventsApi.md#updateAlertEvent) | **PATCH** /v1/alert_events/{id} | Update alert event |


<a id="createAlertEvent"></a>
# **createAlertEvent**
> AlertEventResponse createAlertEvent(alertId, newAlertEvent)

Create alert event

Creates a new alert event

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertEventsApi apiInstance = new AlertEventsApi(defaultClient);
    String alertId = "alertId_example"; // String | 
    NewAlertEvent newAlertEvent = new NewAlertEvent(); // NewAlertEvent | 
    try {
      AlertEventResponse result = apiInstance.createAlertEvent(alertId, newAlertEvent);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertEventsApi#createAlertEvent");
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
| **alertId** | **String**|  | |
| **newAlertEvent** | [**NewAlertEvent**](NewAlertEvent.md)|  | [optional] |

### Return type

[**AlertEventResponse**](AlertEventResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | alert event created with Rootly bot user |  -  |
| **422** | invalid request |  -  |

<a id="deleteAlertEvent"></a>
# **deleteAlertEvent**
> deleteAlertEvent(id)

Delete alert event

Deletes a specific alert event. Only alert events with kind &#39;note&#39; (user-created notes) can be deleted. System-generated events are immutable to maintain audit trail integrity.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertEventsApi apiInstance = new AlertEventsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      apiInstance.deleteAlertEvent(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertEventsApi#deleteAlertEvent");
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

null (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert event deleted |  -  |
| **404** | alert event not found |  -  |

<a id="getAlertEvent"></a>
# **getAlertEvent**
> AlertEventResponse getAlertEvent(id)

Retrieve alert event

Retrieves a specific alert_event by id

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertEventsApi apiInstance = new AlertEventsApi(defaultClient);
    String id = "id_example"; // String | 
    try {
      AlertEventResponse result = apiInstance.getAlertEvent(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertEventsApi#getAlertEvent");
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

[**AlertEventResponse**](AlertEventResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert_event found |  -  |
| **404** | alert_event not found |  -  |

<a id="listAlertEvents"></a>
# **listAlertEvents**
> AlertEventList listAlertEvents(alertId, include, pageNumber, pageSize, filterKind, filterAction)

List alert events

List alert_events

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertEventsApi apiInstance = new AlertEventsApi(defaultClient);
    String alertId = "alertId_example"; // String | 
    String include = "include_example"; // String | 
    Integer pageNumber = 56; // Integer | 
    Integer pageSize = 56; // Integer | 
    String filterKind = "filterKind_example"; // String | 
    String filterAction = "filterAction_example"; // String | 
    try {
      AlertEventList result = apiInstance.listAlertEvents(alertId, include, pageNumber, pageSize, filterKind, filterAction);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertEventsApi#listAlertEvents");
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
| **alertId** | **String**|  | |
| **include** | **String**|  | [optional] |
| **pageNumber** | **Integer**|  | [optional] |
| **pageSize** | **Integer**|  | [optional] |
| **filterKind** | **String**|  | [optional] |
| **filterAction** | **String**|  | [optional] |

### Return type

[**AlertEventList**](AlertEventList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="listAlertEventsFeed"></a>
# **listAlertEventsFeed**
> AlertEventFeedList listAlertEventsFeed(include, pageSize, pageAfter, sort, filterKind, filterAction, filterAlertId, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte)

List alert events across alerts

Returns a flat list of alert events across all alerts the requester can access. Designed for periodic polling: use &#x60;page[after]&#x60; with the &#x60;next_cursor&#x60; returned in the previous response to stream forward.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertEventsApi apiInstance = new AlertEventsApi(defaultClient);
    String include = "include_example"; // String | 
    Integer pageSize = 56; // Integer | Page size (max 50).
    String pageAfter = "pageAfter_example"; // String | Cursor token from the previous response's `meta.next_cursor`. Pass the same `sort` value used to obtain the cursor.
    String sort = "created_at"; // String | Sort by `created_at`. Defaults to `created_at` (oldest-first). Use `-created_at` for newest-first.
    String filterKind = "informational"; // String | 
    String filterAction = "created"; // String | 
    String filterAlertId = "filterAlertId_example"; // String | 
    String filterCreatedAtGt = "filterCreatedAtGt_example"; // String | 
    String filterCreatedAtGte = "filterCreatedAtGte_example"; // String | 
    String filterCreatedAtLt = "filterCreatedAtLt_example"; // String | 
    String filterCreatedAtLte = "filterCreatedAtLte_example"; // String | 
    try {
      AlertEventFeedList result = apiInstance.listAlertEventsFeed(include, pageSize, pageAfter, sort, filterKind, filterAction, filterAlertId, filterCreatedAtGt, filterCreatedAtGte, filterCreatedAtLt, filterCreatedAtLte);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertEventsApi#listAlertEventsFeed");
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
| **pageSize** | **Integer**| Page size (max 50). | [optional] |
| **pageAfter** | **String**| Cursor token from the previous response&#39;s &#x60;meta.next_cursor&#x60;. Pass the same &#x60;sort&#x60; value used to obtain the cursor. | [optional] |
| **sort** | **String**| Sort by &#x60;created_at&#x60;. Defaults to &#x60;created_at&#x60; (oldest-first). Use &#x60;-created_at&#x60; for newest-first. | [optional] [enum: created_at, -created_at] |
| **filterKind** | **String**|  | [optional] [enum: informational, notification, action, status_update, recording, alert_grouping, alert_urgency, alert_routing, note, noise, maintenance, deferral] |
| **filterAction** | **String**|  | [optional] [enum: created, escalation_policy_paged, ignored_alert_request, call_lifecycle, level_skipped, emailed, slacked, ms_teams_messaged, google_chat_messaged, called, texted, notified, skipped, opened, retriggered, ack_timeout_retriggered, answered, acknowledged, escalated, paged, resolved, attached, snoozed, retrigger_suppressed, triggered, open, updated, added, removed, marked, not_marked, cleared, muted, deferred] |
| **filterAlertId** | **String**|  | [optional] |
| **filterCreatedAtGt** | **String**|  | [optional] |
| **filterCreatedAtGte** | **String**|  | [optional] |
| **filterCreatedAtLt** | **String**|  | [optional] |
| **filterCreatedAtLte** | **String**|  | [optional] |

### Return type

[**AlertEventFeedList**](AlertEventFeedList.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | success |  -  |

<a id="updateAlertEvent"></a>
# **updateAlertEvent**
> AlertEventResponse updateAlertEvent(id, updateAlertEvent)

Update alert event

Updates a specific alert event. Only alert events with kind &#39;note&#39; (user-created notes) can be updated. System-generated events are immutable to maintain audit trail integrity.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.AlertEventsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    AlertEventsApi apiInstance = new AlertEventsApi(defaultClient);
    String id = "id_example"; // String | 
    UpdateAlertEvent updateAlertEvent = new UpdateAlertEvent(); // UpdateAlertEvent | 
    try {
      AlertEventResponse result = apiInstance.updateAlertEvent(id, updateAlertEvent);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AlertEventsApi#updateAlertEvent");
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
| **updateAlertEvent** | [**UpdateAlertEvent**](UpdateAlertEvent.md)|  | [optional] |

### Return type

[**AlertEventResponse**](AlertEventResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.api+json
 - **Accept**: application/vnd.api+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | alert event updated |  -  |
| **422** | invalid request |  -  |

