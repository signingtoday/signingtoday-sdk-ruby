# SigningTodayAPIClient::UpdateToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**http_options** | [**CreateTokenHttpOptions**](CreateTokenHttpOptions.md) |  | [optional] 
**label** | **String** | The label assigned to the Token, that is like the name is associated to it | [optional] 
**webhooks** | [**CreateTokenWebhooks**](CreateTokenWebhooks.md) |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::UpdateToken.new(http_options: null,
                                 label: Signing Today Token,
                                 webhooks: null)
```


