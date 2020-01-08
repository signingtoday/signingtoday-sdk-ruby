# SigningTodayAPIClient::CreateUser

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatic** | **Boolean** | True means the User is an automatic signer | [optional] 
**created_by** | **String** | The user created the User (user_name@organization-id). It may be a user of the system as well. | [optional] 
**email** | **String** | The email associated to the User | [optional] 
**first_name** | **String** | First name of the User | [optional] 
**id** | **String** | Uuid code that identifies the User | 
**last_name** | **String** | Last name of the User | [optional] 
**owner** | **Boolean** | The owner field gives to the User administrative permissions | [optional] 
**rao** | **Boolean** | The rao field identifies a RAO User | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::CreateUser.new(automatic: false,
                                 created_by: system,
                                 email: jdo@example.com,
                                 first_name: John,
                                 id: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 last_name: Doe,
                                 owner: true,
                                 rao: true)
```


