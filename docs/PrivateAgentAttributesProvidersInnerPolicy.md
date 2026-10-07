

# PrivateAgentAttributesProvidersInnerPolicy

Reported local policy, not credentials or provider connection configuration. Fields are provider-type specific: Kubernetes reports namespace scope; search providers report index scope; databases report database/schema scope; HTTP reports method/path/header scope; Kafka reports topic and message-read scope; Redis and Valkey report diagnostic limits; and each provider family normally reports only its applicable numeric limits. Management responses may preserve legacy cross-family fields for backwards compatibility; capability catalog and dispatch use provider-scoped execution metadata. Invalid or absent fields are omitted.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**digest** | **String** |  |  [optional] |
|**clusterScoped** | **Boolean** |  |  [optional] |
|**podLogs** | **Boolean** |  |  [optional] |
|**maximumConcurrency** | **Integer** |  |  [optional] |
|**maximumAttributeValues** | **Integer** |  |  [optional] |
|**maximumDocuments** | **Integer** |  |  [optional] |
|**maximumEntries** | **Integer** |  |  [optional] |
|**maximumExemplars** | **Integer** |  |  [optional] |
|**maximumIndices** | **Integer** |  |  [optional] |
|**maximumLabelValues** | **Integer** |  |  [optional] |
|**maximumNodes** | **Integer** |  |  [optional] |
|**maximumPatternPoints** | **Integer** |  |  [optional] |
|**maximumPointsPerSeries** | **Integer** |  |  [optional] |
|**maximumProfileTypes** | **Integer** |  |  [optional] |
|**maximumQueryBytes** | **Integer** |  |  [optional] |
|**maximumRequestBytes** | **Integer** |  |  [optional] |
|**maximumResponseBytes** | **Integer** |  |  [optional] |
|**maximumRangeSeconds** | **Integer** |  |  [optional] |
|**maximumRows** | **Integer** |  |  [optional] |
|**maximumResultBytes** | **Integer** |  |  [optional] |
|**maximumItems** | **Integer** |  |  [optional] |
|**maximumMessages** | **Integer** |  |  [optional] |
|**maximumMessageBytes** | **Integer** |  |  [optional] |
|**maximumScanRecords** | **Integer** |  |  [optional] |
|**maximumScanBytes** | **Integer** |  |  [optional] |
|**maximumSeries** | **Integer** |  |  [optional] |
|**maximumShards** | **Integer** |  |  [optional] |
|**maximumSlowlogEntries** | **Integer** |  |  [optional] |
|**maximumSpansPerSpanSet** | **Integer** |  |  [optional] |
|**maximumStaleValues** | **Integer** |  |  [optional] |
|**maximumTimeoutSeconds** | **Integer** |  |  [optional] |
|**maximumTraces** | **Integer** |  |  [optional] |
|**stuckTransactionSeconds** | **Integer** |  |  [optional] |
|**namespaces** | **List&lt;String&gt;** |  |  [optional] |
|**allowedIndices** | **List&lt;String&gt;** |  |  [optional] |
|**timestampField** | **String** |  |  [optional] |
|**database** | **String** |  |  [optional] |
|**allowedSchemas** | **List&lt;String&gt;** |  |  [optional] |
|**allowedMethods** | **List&lt;String&gt;** |  |  [optional] |
|**allowedPathPrefixes** | **List&lt;String&gt;** |  |  [optional] |
|**allowedRequestHeaders** | **List&lt;String&gt;** |  |  [optional] |
|**exposedResponseHeaders** | **List&lt;String&gt;** |  |  [optional] |
|**allowedTopics** | **List&lt;String&gt;** |  |  [optional] |
|**deniedTopics** | **List&lt;String&gt;** |  |  [optional] |
|**includeInternalTopics** | **Boolean** |  |  [optional] |
|**allowMessageReads** | **Boolean** |  |  [optional] |
|**includeMessageValues** | **Boolean** |  |  [optional] |



