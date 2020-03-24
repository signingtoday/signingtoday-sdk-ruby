# SigningTodayAPIClient::SignerInstance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the Signer | [optional] 
**surname** | **String** | Surname of the Signer | [optional] 
**email** | **String** | Email address of the Signer | [optional] 
**phone** | **String** | Phone number of the Signer | [optional] 
**user_uuid** | **String** | LibroFirma UserUUID, if associated to. Otherwise null. | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::SignerInstance.new(name: Adam,
                                 surname: Smith,
                                 email: adam.smith@email.com,
                                 phone: +013392213450,
                                 user_uuid: a845e772-cb45-466f-9c02-d9dd06afa36e)
```


