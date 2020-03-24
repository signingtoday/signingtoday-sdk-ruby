# SigningTodayAPIClient::UpdateToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **String** | The label assigned to the Token, that is like the name is associated to it | [optional] 
**webhooks** | [**TokenWebhooks**](TokenWebhooks.md) |  | [optional] 
**http_options** | [**TokenHttpOptions**](TokenHttpOptions.md) |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::UpdateToken.new(label: Signing Today Token,
                                 webhooks: null,
                                 http_options: null)
```


