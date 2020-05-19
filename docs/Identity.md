# SigningTodayAPIClient::Identity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The uuid code that identifies the Identity | [optional] 
**certificate** | **String** | The X.509 certificate in PEM format of the Identity | [optional] 
**not_after** | **String** | Deadline of the Identity, expressed in ISO format | [optional] 
**status** | **String** | Identity status which can be one of the following. When an identity request is send, the identity is created and the status is **pending** until the provider dont approve the request. Then status of the identity changes to **active**. If for some reason an error occurs during the process, or after that, the status will be **error**  | [optional] 
**_next** | **String** | The next step to complete the activation procedure | [optional] 
**actions** | [**IdentityActions**](IdentityActions.md) |  | [optional] 
**provider** | **String** | The name of the provider that issued the certificate for the Identity | [optional] 
**label** | **String** | The label is an arbitrary name is possible to associate to an idenity. Doing so allows to distinguish different identities issued from the same provider during the performance of the signature in the signature tray | [optional] 
**signature_appearance_uri** | **String** | This is the url to the image that will be impressed on the document after the performance of the signature  | [optional] 
**provider_id** | **String** | _provider_id_ is the univocal name of the provider that issued the identity  | [optional] 
**provider_type** | **String** | Type of the provider. The most usual type is **cloud**  | [optional] 
**provider_data** | [**Object**](.md) | Data of the provider that issued the certificate, it is variable from provider to provider | [optional] 
**provider_image** | **String** | This is the logo of the provider that issued the identity | [optional] 
**send_otp_url** | **String** | The url to send a one time password to the user which the identity is associated | [optional] 
**sign_url** | **String** | The url to sign a document of a digital signature transaction | [optional] 
**has_been_imported** | **Boolean** | If the Identity has been imported from another pre-existing Identity the has_been_imported field is set to **true** | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::Identity.new(id: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 certificate: &lt;certificate-string&gt;,
                                 not_after: 2021-10-17T07:26Z,
                                 status: active,
                                 _next: next activity to complete &lt;sample&gt;,
                                 actions: null,
                                 provider: System Sample Provider,
                                 label: Identity Label,
                                 signature_appearance_uri: https://upload.mysite.com/signature_appearance.png,
                                 provider_id: null,
                                 provider_type: provider type,
                                 provider_data: {},
                                 provider_image: https://my-org/image,
                                 send_otp_url: https://signing.today/sample/send-otp,
                                 sign_url: https://signing.today/sample/sign-document,
                                 has_been_imported: false)
```


