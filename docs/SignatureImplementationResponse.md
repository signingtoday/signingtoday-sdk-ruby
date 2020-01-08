# SigningTodayAPIClient::SignatureImplementationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**certificate** | [**Certificate**](Certificate.md) |  | [optional] 
**channel** | [**SignatureImplementationResponseChannel**](SignatureImplementationResponseChannel.md) |  | [optional] 
**document** | **String** |  | [optional] 
**dst** | [**Id**](Id.md) |  | [optional] 
**group** | **Integer** | Number of the groups which the signer belongs during digital signature transaction creation | [optional] 
**identity** | [**Id**](Id.md) |  | [optional] 
**pades_subfilter** | **String** |  | [optional] 
**page** | **Integer** |  | [optional] 
**position** | [**Position**](Position.md) |  | [optional] 
**profile** | [**Profile**](Profile.md) |  | [optional] 
**provider_id** | [**ProviderId**](ProviderId.md) |  | [optional] 
**reason** | [**Reason**](Reason.md) |  | [optional] 
**signature** | [**Id**](Id.md) |  | [optional] 
**signature_appearance_uri** | [**SignatureAppearanceUri**](SignatureAppearanceUri.md) |  | [optional] 
**signature_text** | **String** |  | [optional] 
**signing_time** | **String** |  | [optional] 
**title** | [**Title**](Title.md) |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::SignatureImplementationResponse.new(certificate: null,
                                 channel: null,
                                 document: /docs/dsts/94794c07-d16e-4791-a507-0549225538b5/0,
                                 dst: null,
                                 group: 0,
                                 identity: null,
                                 pades_subfilter: null,
                                 page: 1,
                                 position: null,
                                 profile: null,
                                 provider_id: null,
                                 reason: null,
                                 signature: null,
                                 signature_appearance_uri: null,
                                 signature_text: [{&quot;format&quot;: [&quot;Signed by {subject[commonName]}&quot;, &quot;{subject[C]}&quot;, &quot;{subject[L]}&quot;, &quot;{subject[S]}&quot;, &quot;{subject[OU]}&quot;, &quot;{subject[O]}&quot;, &quot;{subject[E]}&quot;]}],
                                 signing_time: null,
                                 title: null)
```


