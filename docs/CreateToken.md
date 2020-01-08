# SigningTodayAPIClient::CreateToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**http_options** | [**CreateTokenHttpOptions**](CreateTokenHttpOptions.md) |  | [optional] 
**label** | **String** | The label assigned to the Token, that is like the name is associated to it | [optional] 
**user** | **String** | The user whom the Token is to be associated | [optional] 
**webhooks** | [**CreateTokenWebhooks**](CreateTokenWebhooks.md) |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::CreateToken.new(http_options: null,
                                 label: null,
                                 user: jdo,
                                 webhooks: null)
```


