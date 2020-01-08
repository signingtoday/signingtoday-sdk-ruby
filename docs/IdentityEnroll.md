# SigningTodayAPIClient::IdentityEnroll

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actions** | [**IdentityEnrollActions**](IdentityEnrollActions.md) |  | [optional] 
**created_by** | **String** |  | [optional] 
**enroll_ticket** | **String** |  | [optional] 
**id** | **String** |  | [optional] 
**label** | **String** |  | [optional] 
**_next** | **String** |  | [optional] 
**provider** | **String** |  | [optional] 
**provider_data** | [**Object**](.md) | Data of the provider that issued the certificate, it is variable from to provider to provider | [optional] 
**provider_type** | **String** |  | [optional] 
**registered_by** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**urlback** | **String** |  | [optional] 
**user** | **String** |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::IdentityEnroll.new(actions: null,
                                 created_by: admin@sample.com,
                                 enroll_ticket: https://signing.today/sample/enroll-ticket,
                                 id: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 label: identity provider,
                                 _next: next activity to complete sample,
                                 provider: system provider,
                                 provider_data: {},
                                 provider_type: provider type,
                                 registered_by: jdo,
                                 status: active,
                                 urlback: https://signing.today/sample/home,
                                 user: jdo)
```


