# SigningTodayAPIClient::SignatureImplementationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**profile** | [**Profile**](Profile.md) |  | [optional] 
**provider_id** | [**ProviderId**](ProviderId.md) |  | [optional] 
**position** | [**Position**](Position.md) |  | [optional] 
**group** | **Integer** | Number of the groups which the signer belongs during digital signature transaction creation | [optional] 
**certificate** | [**Certificate**](Certificate.md) |  | [optional] 
**title** | [**Title**](Title.md) |  | [optional] 
**dst** | [**Id**](Id.md) |  | [optional] 
**signing_time** | **String** |  | [optional] 
**reason** | [**Reason**](Reason.md) |  | [optional] 
**channel** | [**SignatureImplementationResponseChannel**](SignatureImplementationResponseChannel.md) |  | [optional] 
**signature_text** | **String** |  | [optional] 
**signature** | [**Id**](Id.md) |  | [optional] 
**signature_appearance_uri** | [**SignatureAppearanceUri**](SignatureAppearanceUri.md) |  | [optional] 
**pades_subfilter** | **String** |  | [optional] 
**document** | **String** |  | [optional] 
**page** | **Integer** |  | [optional] 
**identity** | [**Id**](Id.md) |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::SignatureImplementationResponse.new(profile: null,
                                 provider_id: null,
                                 position: null,
                                 group: 0,
                                 certificate: null,
                                 title: null,
                                 dst: null,
                                 signing_time: null,
                                 reason: null,
                                 channel: null,
                                 signature_text: [{&quot;format&quot;: [&quot;Signed by {subject[commonName]}&quot;, &quot;{subject[C]}&quot;, &quot;{subject[L]}&quot;, &quot;{subject[S]}&quot;, &quot;{subject[OU]}&quot;, &quot;{subject[O]}&quot;, &quot;{subject[E]}&quot;]}],
                                 signature: null,
                                 signature_appearance_uri: null,
                                 pades_subfilter: null,
                                 document: /docs/dsts/94794c07-d16e-4791-a507-0549225538b5/0,
                                 page: 1,
                                 identity: null)
```


