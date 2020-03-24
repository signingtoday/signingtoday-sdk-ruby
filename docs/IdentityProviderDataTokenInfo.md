# SigningTodayAPIClient::IdentityProviderDataTokenInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ul_min_pin_len** | **Float** |  | [optional] 
**manufacturer_id** | **String** |  | [optional] 
**ul_free_public_memory** | **Float** |  | [optional] 
**serial_number** | **String** |  | [optional] 
**ul_total_public_memory** | **Float** |  | [optional] 
**label** | **String** |  | [optional] 
**flags** | **Float** |  | [optional] 
**ul_total_private_memory** | **Float** |  | [optional] 
**model** | **String** |  | [optional] 
**ul_free_private_memory** | **Float** |  | [optional] 
**ul_max_pin_len** | **Float** |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::IdentityProviderDataTokenInfo.new(ul_min_pin_len: 4,
                                 manufacturer_id: Bit4id,
                                 ul_free_public_memory: 41168,
                                 serial_number: 7430010005961358,
                                 ul_total_public_memory: 80000,
                                 label: CNS,
                                 flags: 1037,
                                 ul_total_private_memory: 80000,
                                 model: JS2048 (LB),
                                 ul_free_private_memory: 41168,
                                 ul_max_pin_len: 8)
```


