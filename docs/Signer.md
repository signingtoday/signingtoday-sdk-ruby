# SigningTodayAPIClient::Signer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_instance_id** | **Integer** | It is a reference for internal use | [optional] [readonly] 
**id** | **Integer** |  | [optional] 
**name** | **String** |  | [optional] 
**surname** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**phone** | **String** |  | [optional] 
**role** | **String** |  | [optional] 
**user_uuid** | **String** | LibroFirma UserUUID, if associated to. Otherwise null. | [optional] 
**template_label** | **String** | Label used to link signers to placeholders in DST template, otherwise null. | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::Signer.new(_instance_id: 1,
                                 id: 1,
                                 name: Adam,
                                 surname: Smith,
                                 email: adam.smith@email.com,
                                 phone: +013392213450,
                                 role: buyer,
                                 user_uuid: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 template_label: Buyer)
```


