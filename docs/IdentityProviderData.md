# SigningTodayAPIClient::IdentityProviderData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**smartcard_id** | **Float** |  | [optional] 
**middleware_id** | **String** |  | [optional] 
**atr** | **String** |  | [optional] 
**token_info** | [**IdentityProviderDataTokenInfo**](IdentityProviderDataTokenInfo.md) |  | [optional] 
**reader** | **String** |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::IdentityProviderData.new(smartcard_id: -1121978858,
                                 middleware_id: bit4xpki,
                                 atr: 3bff1800008131fe55006b02090403010101434e5310318065,
                                 token_info: null,
                                 reader: Generic Smart Card Reader Interface 0)
```


