

# AlertEventFeedMeta

Cursor-pagination meta. `total_count` and `total_pages` are nullable because the feed does not run a COUNT query.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**nextCursor** | **String** | Pass as &#x60;page[after]&#x60; on the next request to fetch the following page. |  |
|**currentPage** | **Integer** |  |  [optional] |
|**nextPage** | **Integer** |  |  [optional] |
|**prevPage** | **Integer** |  |  [optional] |
|**totalCount** | **Integer** |  |  [optional] |
|**totalPages** | **Integer** |  |  [optional] |



