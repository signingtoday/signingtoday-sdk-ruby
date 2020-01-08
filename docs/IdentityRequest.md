# SigningTodayAPIClient::IdentityRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **String** | The label is an arbitrary name is possible to associate to an idenity. Doing so allows to distinguish different identities issued from the same provider during the performance of the signature in the signature tray | [optional] 
**provider_data** | [**SMS**](SMS.md) |  | [optional] 
**provider_id** | **String** | The id of the provider will issue the requested identity | [optional] 
**registered_by** | **String** | The RAO user that registered the identity | [optional] 
**user** | **String** | The user is intended to associate the requestd identity | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::IdentityRequest.new(label: string label,
                                 provider_data: null,
                                 provider_id: sms,
                                 registered_by: jdo,
                                 user: jdo)
```


