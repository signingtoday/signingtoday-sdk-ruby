# SigningTodayAPIClient::SignerRecord

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**surname** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**role** | **String** |  | [optional] 
**user_uuid** | **String** | LibroFirma UserUUID, if associated to. Otherwise null. | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::SignerRecord.new(name: Adam,
                                 surname: Smith,
                                 email: adam.smith@email.com,
                                 role: buyer,
                                 user_uuid: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4)
```


