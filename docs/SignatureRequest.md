# SigningTodayAPIClient::SignatureRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_instance_id** | **Integer** | It is a reference for internal use | [optional] [readonly] 
**id** | **Integer** |  | [optional] 
**reason** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**signer_id** | **Integer** |  | [optional] 
**sign_profile** | **String** |  | [optional] 
**with_timestamp** | **Boolean** |  | [optional] 
**declinable** | **Boolean** |  | [optional] 
**restrictions** | [**Array&lt;SignatureRestriction&gt;**](SignatureRestriction.md) |  | [optional] 
**extra_data** | **Hash&lt;String, Object&gt;** |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::SignatureRequest.new(_instance_id: 1,
                                 id: 3,
                                 reason: As the Buyer,
                                 description: The proponent,
                                 signer_id: 2,
                                 sign_profile: PAdES,
                                 with_timestamp: true,
                                 declinable: false,
                                 restrictions: null,
                                 extra_data: {&quot;st_ticketUrl&quot;:&quot;http://signing.today/ticket/8bd4aead-ad37-42bc-b3b0-22ce3d1c9e79&quot;})
```


