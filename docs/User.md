# SigningTodayAPIClient::User

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The uuid code that identifies the User | 
**status** | **String** | The status of the User | [optional] 
**type** | **String** | The _type field_ identifies the permissions the User have | [optional] 
**email** | **String** | The email associated to the User | [optional] 
**first_name** | **String** | First name of the User | [optional] 
**last_name** | **String** | Last name of the User | [optional] 
**created_by** | **String** | This field shows who created the User - _user_name@organization-id_. It may be a SigningToday system User as well | [optional] 
**automatic** | **Boolean** | If true indicates that the User is an _automatic_ one, thus the signature procedure will be different from a regular signer | [optional] 
**owner** | **Boolean** | The _owner field_ gives to the User administrative permissions | [optional] 
**rao** | **Boolean** | The _rao field_ identifies a RAO User, the one can associate identities to the other users | [optional] 
**wallet** | [**Array&lt;Identity&gt;**](Identity.md) | The wallet of an User identifies its portfolio of identities | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::User.new(id: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 status: enabled,
                                 type: Basic user account,
                                 email: jdo@example.com,
                                 first_name: John,
                                 last_name: Doe,
                                 created_by: system,
                                 automatic: false,
                                 owner: true,
                                 rao: true,
                                 wallet: null)
```


