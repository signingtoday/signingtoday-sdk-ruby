# SigningTodayAPIClient::DeviceAuthorizationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **String** |  | [optional] 
**base_url** | **String** |  | [optional] 
**challenge** | **String** | the challenge to be used to register the device. | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::DeviceAuthorizationResponse.new(user_id: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 base_url: https://web.sandbox.signingtoday.com/api/challenge,
                                 challenge: 8df173c3bcd4274715491fc196705da8)
```


