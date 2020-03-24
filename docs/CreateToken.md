# SigningTodayAPIClient::CreateToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user** | **String** | The user whom the Token is to be associated | [optional] 
**label** | **String** | The label assigned to the Token, that is like the name is associated to it | [optional] 
**webhooks** | [**TokenWebhooks**](TokenWebhooks.md) |  | [optional] 
**http_options** | [**TokenHttpOptions**](TokenHttpOptions.md) |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::CreateToken.new(user: jdo,
                                 label: null,
                                 webhooks: null,
                                 http_options: null)
```


