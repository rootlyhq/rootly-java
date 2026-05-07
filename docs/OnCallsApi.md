# OnCallsApi

All URIs are relative to *https://api.rootly.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**listOncalls**](OnCallsApi.md#listOncalls) | **GET** /v1/oncalls | List on-calls |


<a id="listOncalls"></a>
# **listOncalls**
> listOncalls(include, since, until, earliest, timeZone, filterEscalationPolicyIds, filterScheduleIds, filterUserIds, filterServiceIds, filterGroupIds, filterNotificationTypes)

List on-calls

List who is currently on-call, with support for filtering by escalation policy, schedule, and user. Returns on-call entries grouped by escalation policy level.

### Example
```java
// Import classes:
import com.rootly.client.ApiClient;
import com.rootly.client.ApiException;
import com.rootly.client.Configuration;
import com.rootly.client.auth.*;
import com.rootly.client.models.*;
import com.rootly.client.api.OnCallsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.rootly.com");
    
    // Configure HTTP bearer authorization: bearer_auth
    HttpBearerAuth bearer_auth = (HttpBearerAuth) defaultClient.getAuthentication("bearer_auth");
    bearer_auth.setBearerToken("BEARER TOKEN");

    OnCallsApi apiInstance = new OnCallsApi(defaultClient);
    String include = "user"; // String | comma separated if needed. eg: user,schedule
    String since = "since_example"; // String | Start of time range in ISO-8601 format (e.g., 2025-01-01T00:00:00Z). Defaults to current time.
    String until = "until_example"; // String | End of time range in ISO-8601 format (e.g., 2025-01-01T00:00:00Z). Defaults to 'since' time.
    Boolean earliest = true; // Boolean | When true, returns only the first on-call user per escalation policy level
    String timeZone = "timeZone_example"; // String | Timezone for response times (e.g., America/New_York). Defaults to UTC.
    String filterEscalationPolicyIds = "filterEscalationPolicyIds_example"; // String | Comma-separated escalation policy IDs
    String filterScheduleIds = "filterScheduleIds_example"; // String | Comma-separated schedule IDs
    String filterUserIds = "filterUserIds_example"; // String | Comma-separated user IDs
    String filterServiceIds = "filterServiceIds_example"; // String | Comma-separated service IDs
    String filterGroupIds = "filterGroupIds_example"; // String | Comma-separated group IDs (teams)
    String filterNotificationTypes = "filterNotificationTypes_example"; // String | Comma-separated notification types to include. One or both of: audible, quiet. When present, oncalls are returned from every non-deferral escalation path whose notification_type is in the filter, sorted audible-first. When absent, only the default path's oncalls are returned (existing behavior).
    try {
      apiInstance.listOncalls(include, since, until, earliest, timeZone, filterEscalationPolicyIds, filterScheduleIds, filterUserIds, filterServiceIds, filterGroupIds, filterNotificationTypes);
    } catch (ApiException e) {
      System.err.println("Exception when calling OnCallsApi#listOncalls");
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
| **include** | **String**| comma separated if needed. eg: user,schedule | [optional] [enum: user, schedule, escalation_policy] |
| **since** | **String**| Start of time range in ISO-8601 format (e.g., 2025-01-01T00:00:00Z). Defaults to current time. | [optional] |
| **until** | **String**| End of time range in ISO-8601 format (e.g., 2025-01-01T00:00:00Z). Defaults to &#39;since&#39; time. | [optional] |
| **earliest** | **Boolean**| When true, returns only the first on-call user per escalation policy level | [optional] |
| **timeZone** | **String**| Timezone for response times (e.g., America/New_York). Defaults to UTC. | [optional] |
| **filterEscalationPolicyIds** | **String**| Comma-separated escalation policy IDs | [optional] |
| **filterScheduleIds** | **String**| Comma-separated schedule IDs | [optional] |
| **filterUserIds** | **String**| Comma-separated user IDs | [optional] |
| **filterServiceIds** | **String**| Comma-separated service IDs | [optional] |
| **filterGroupIds** | **String**| Comma-separated group IDs (teams) | [optional] |
| **filterNotificationTypes** | **String**| Comma-separated notification types to include. One or both of: audible, quiet. When present, oncalls are returned from every non-deferral escalation path whose notification_type is in the filter, sorted audible-first. When absent, only the default path&#39;s oncalls are returned (existing behavior). | [optional] |

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
| **200** | success |  -  |
| **404** | resource not found when alerting is disabled |  -  |
| **401** | responds with unauthorized for invalid token |  -  |

