# SigningTodayAPIClient::CreateTokenWebhooks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dst** | **String** | The url where to receive notifications about digital signature transaction status | [optional] 
**identity** | **String** | The url where to receive notifications about identity status | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::CreateTokenWebhooks.new(dst: https://host-name/dst,
                                 identity: https://host-name/identity)
```


