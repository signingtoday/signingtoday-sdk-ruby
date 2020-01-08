# SigningTodayAPIClient::UpdateUser

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatic** | **Boolean** | True means the User is an automatic signer | [optional] 
**email** | **String** | The email associated to the User | [optional] 
**first_name** | **String** | First name of the User | [optional] 
**last_name** | **String** | Last name of the User | [optional] 
**rao** | **Boolean** | The rao field identifies a RAO User | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::UpdateUser.new(automatic: false,
                                 email: jdo@example.com,
                                 first_name: John,
                                 last_name: Doe,
                                 rao: true)
```


