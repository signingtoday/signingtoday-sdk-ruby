# SigningTodayAPIClient::InlineObject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**edu_person_principal_name** | **String** | The username of the account | [optional] 
**is_member_of** | **Array&lt;String&gt;** | Memberships of the user | [optional] 
**given_name** | **String** | First name of the user | [optional] 
**surname** | **String** | Last name of the user | [optional] 
**org_role** | **String** | The role of the user in the organization | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::InlineObject.new(edu_person_principal_name: jdo@email.com,
                                 is_member_of: null,
                                 given_name: John,
                                 surname: Doe,
                                 org_role: signer)
```


