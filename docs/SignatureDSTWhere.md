# SigningTodayAPIClient::SignatureDSTWhere

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **Integer** | As can be guessed this is the page where to allocate the Signature | [optional] 
**position** | **String** | This is the exact position in the choosen page where to attach the Signature. Multiple unit of measurement are provided. The format is the following:   - \&quot;rect: 50mm, 100mm, 200mm, 150mm\&quot;  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::SignatureDSTWhere.new(page: 1,
                                 position: rect: 50, 100, 200, 150)
```


