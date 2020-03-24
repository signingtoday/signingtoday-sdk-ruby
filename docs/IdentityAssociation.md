# SigningTodayAPIClient::IdentityAssociation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider_id** | **String** | _provider_id_ is the univocal name of the provider that issued the identity  | [optional] 
**label** | **String** | The label is an arbitrary name is possible to associate to an idenity. Doing so allows to distinguish different identities issued from the same provider during the performance of the signature in the signature tray | [optional] 
**provider_data** | [**Object**](.md) | Data of the provider that issued the certificate, it is variable from to provider to provider | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::IdentityAssociation.new(provider_id: aruba,
                                 label: aruba-prv,
                                 provider_data: {})
```


