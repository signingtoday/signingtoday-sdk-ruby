# SigningTodayAPIClient::UpdateUser

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** | First name of the User | [optional] 
**last_name** | **String** | Last name of the User | [optional] 
**email** | **String** | The email associated to the User | [optional] 
**automatic** | **Boolean** | True means the User is an automatic signer | [optional] 
**rao** | **Boolean** | The rao field identifies a RAO User | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::UpdateUser.new(first_name: John,
                                 last_name: Doe,
                                 email: jdo@example.com,
                                 automatic: false,
                                 rao: true)
```


