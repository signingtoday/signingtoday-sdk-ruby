# SigningTodayAPIClient::Identity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**actions** | **Hash&lt;String, String&gt;** |  | [optional] 
**provider** | **String** |  | [optional] 
**label** | **String** |  | [optional] 
**provider_type** | **String** |  | [optional] 
**subject_common_name** | **String** |  | [optional] 
**issuer_common_name** | **String** |  | [optional] 
**expire_date** | **DateTime** |  | [optional] 
**raw_certificate** | **String** |  | [optional] 
**appearance** | [**LFResource**](LFResource.md) |  | [optional] 
**provider_data** | [**IdentityProviderData**](IdentityProviderData.md) |  | [optional] 
**valid** | **Boolean** |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::Identity.new(id: abd562ae-e8ab-4cfd-a688-395e06eea9ff,
                                 actions: null,
                                 provider: Approval Signing Today,
                                 label: Token John Doe,
                                 provider_type: token,
                                 subject_common_name: John Doe,
                                 issuer_common_name: Emicert,
                                 expire_date: 2022-12-13T23:59:59Z,
                                 raw_certificate: null,
                                 appearance: null,
                                 provider_data: null,
                                 valid: true,
                                 tags: null)
```


