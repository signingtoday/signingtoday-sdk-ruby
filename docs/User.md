# SigningTodayAPIClient::User

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique id of the User | [optional] [readonly] 
**username** | **String** | The username of the User. The username is used to login | [optional] 
**domain** | **String** | The _domain_ is the Organization which a user or a DST belongs | [optional] 
**language** | **String** | The default language of the User | [optional] 
**name** | **String** | The name of the User | [optional] 
**surname** | **String** | The name of the User | [optional] 
**email** | **String** | The email address of the User | [optional] 
**phone** | [**BigDecimal**](BigDecimal.md) | The phone number of the User | [optional] 
**role** | **String** | The role of the User. The **admin** can create users, as well as DSTs and can sign. The **instructor** can create DSTs and sign. The **signer** can only sign documents.  | [optional] 
**groups** | [**Array&lt;UserGroup&gt;**](UserGroup.md) | A group of users. This is useful during DSTs creation, it is possible to select a group as signers. This way all the components of that group have to sign the document | [optional] 
**capabilities** | **Array&lt;String&gt;** | The capabilities represents the action a user is able to do | [optional] 
**created_by** | **String** | The one which created the User | [optional] [readonly] 
**created_at** | **DateTime** | The date of the creation of the User | [optional] [readonly] 
**deleted_at** | **DateTime** | The date of deletion of the User | [optional] [readonly] 
**automatic** | **Boolean** | If true the user is automatic | [optional] [readonly] 
**extra_data** | **Hash&lt;String, Object&gt;** | Extra data associated to the User | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::User.new(id: e6419924-fd1d-4c42-9fa2-88023461f5df,
                                 username: jdo,
                                 domain: bit4id,
                                 language: en,
                                 name: John,
                                 surname: Doe,
                                 email: john.doe@email.com,
                                 phone: +013392213450,
                                 role: signer,
                                 groups: null,
                                 capabilities: null,
                                 created_by: 9a608f1a-e42a-4d05-8e2b-1df8ec63cd5d,
                                 created_at: 2007-04-02T19:30:10Z,
                                 deleted_at: 2007-04-02T19:30:10Z,
                                 automatic: false,
                                 extra_data: {&quot;st_uuid&quot;:&quot;d6ebb1ed-73a4-45ba-b33a-7db8a6cdd882&quot;})
```


