# SigningTodayAPIClient::PaginationData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** |  | [optional] 
**_next** | **String** |  | [optional] 
**page** | **Integer** |  | [optional] 
**pages** | **Integer** |  | [optional] 
**previous** | **String** |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::PaginationData.new(count: 2,
                                 _next: next_page@signing.today,
                                 page: 2,
                                 pages: 20,
                                 previous: previous_page@signing.today)
```


