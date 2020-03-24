# SigningTodayAPIClient::Signature

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_instance_id** | **Integer** | It is a reference for internal use | [optional] [readonly] 
**document_id** | **Integer** | Id of the document | [optional] 
**signature_request_id** | **Integer** | Id of the requested signature | [optional] 
**signed_at** | **DateTime** | Indicates when the DST has been signed | [optional] 
**declined_reason** | **String** |  | [optional] 
**status** | **String** | Status of the signature, which can be _signed_ or _declined_ | [optional] [readonly] 
**extra_data** | **Hash&lt;String, Object&gt;** | Extra data of the signature | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::Signature.new(_instance_id: 1,
                                 document_id: 3,
                                 signature_request_id: 2,
                                 signed_at: 2021-10-17T07:26Z,
                                 declined_reason: Reason of declination,
                                 status: signed,
                                 extra_data: {&quot;st_uuid&quot;:&quot;d6ebb1ed-73a4-45ba-b33a-7db8a6cdd882&quot;})
```


