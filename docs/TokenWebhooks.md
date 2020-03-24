# SigningTodayAPIClient::TokenWebhooks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identity** | **String** | The url where to receive notifications about identity status | [optional] 
**dst** | **String** | The url where to receive notifications about digital signature transaction status | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::TokenWebhooks.new(identity: https://host-name/identity,
                                 dst: https://host-name/dst)
```


