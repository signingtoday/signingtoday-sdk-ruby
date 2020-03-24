# SigningTodayAPIClient::TrustedDevice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_instance_id** | **Integer** | It is a reference for internal use | [optional] [readonly] 
**user_id** | **String** |  | [optional] 
**device_id** | **String** |  | [optional] 
**name** | **String** | Application defined label to identify the device | [optional] 
**registered_at** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::TrustedDevice.new(_instance_id: 1,
                                 user_id: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 device_id: e6419924-fd1d-4c42-9fa2-88023461f5df,
                                 name: John Doe&quot;s Iphone,
                                 registered_at: 2021-10-17T07:26Z)
```


