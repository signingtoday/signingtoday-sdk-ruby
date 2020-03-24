# SigningTodayAPIClient::PaginationData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** |  | [optional] 
**_next** | **String** |  | [optional] 
**previous** | **String** |  | [optional] 
**pages** | **Integer** |  | [optional] 
**page** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::PaginationData.new(count: 2,
                                 _next: next_page@signing.today,
                                 previous: previous_page@signing.today,
                                 pages: 20,
                                 page: 2)
```


