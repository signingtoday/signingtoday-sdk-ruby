# SigningTodayAPIClient::Token

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_by** | **String** | The user created the Token - _user_name@organization-id_ - | [optional] 
**http_options** | [**CreateTokenHttpOptions**](CreateTokenHttpOptions.md) |  | [optional] 
**id** | **String** | The uuid code that identifies the Token | [optional] 
**label** | **String** | The label assigned to the Token, that is like the name is associated to it | [optional] 
**user** | **String** | The user whom is associated the Token | [optional] 
**value** | **String** | This is the actual value of the Token, usually in a uuid format | [optional] 
**webhooks** | [**CreateTokenWebhooks**](CreateTokenWebhooks.md) |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::Token.new(created_by: jdo@bit4id,
                                 http_options: null,
                                 id: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 label: Signing Today Token,
                                 user: jdo,
                                 value: 8df173c3bcd4274715491fc196705da8,
                                 webhooks: null)
```


