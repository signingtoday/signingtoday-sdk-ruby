# SigningTodayAPIClient::IdentityEnroll

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**_next** | **String** |  | [optional] 
**actions** | [**IdentityEnrollActions**](IdentityEnrollActions.md) |  | [optional] 
**provider** | **String** |  | [optional] 
**label** | **String** |  | [optional] 
**provider_type** | **String** |  | [optional] 
**user** | **String** |  | [optional] 
**registered_by** | **String** |  | [optional] 
**provider_data** | [**Object**](.md) | Data of the provider that issued the certificate, it is variable from to provider to provider | [optional] 
**enroll_ticket** | **String** |  | [optional] 
**created_by** | **String** |  | [optional] 
**urlback** | **String** |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::IdentityEnroll.new(id: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 status: active,
                                 _next: next activity to complete sample,
                                 actions: null,
                                 provider: system provider,
                                 label: identity provider,
                                 provider_type: provider type,
                                 user: jdo,
                                 registered_by: jdo,
                                 provider_data: {},
                                 enroll_ticket: https://signing.today/sample/enroll-ticket,
                                 created_by: admin@sample.com,
                                 urlback: https://signing.today/sample/home)
```


