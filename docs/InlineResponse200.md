# SigningTodayAPIClient::InlineResponse200

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **String** |  | [optional] 
**token_type** | **String** |  | [optional] 
**refresh_token** | **String** |  | [optional] 
**expires_in** | **Integer** |  | [optional] 
**scope** | **String** |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::InlineResponse200.new(access_token: 5c7fe85e-5ccd-4ae7-9629-ed49f969eee9,
                                 token_type: bearer,
                                 refresh_token: ef1185f4-2af7-4bf2-acd5-3c4b2e7dad72,
                                 expires_in: 30623,
                                 scope: all)
```


