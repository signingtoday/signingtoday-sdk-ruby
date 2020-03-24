# SigningTodayAPIClient::Token

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The uuid code that identifies the Token | [optional] 
**value** | **String** | This is the actual value of the Token, usually in a uuid format | [optional] 
**user** | **String** | The user whom is associated the Token | [optional] 
**webhooks** | [**TokenWebhooks**](TokenWebhooks.md) |  | [optional] 
**http_options** | [**TokenHttpOptions**](TokenHttpOptions.md) |  | [optional] 
**label** | **String** | The label assigned to the Token, that is like the name is associated to it | [optional] 
**created_by** | **String** | The user created the Token - _user_name@organization-id_ - | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::Token.new(id: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 value: 8df173c3bcd4274715491fc196705da8,
                                 user: jdo,
                                 webhooks: null,
                                 http_options: null,
                                 label: Signing Today Token,
                                 created_by: jdo@bit4id)
```


