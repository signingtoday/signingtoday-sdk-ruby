# SigningTodayAPIClient::Signature

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The uuid code that identifies the Signature | [optional] 
**signer** | **String** | The user that have to sign the digital signature transaction | [optional] 
**signer_group** | **String** | The group which the signer belongs. This field is used in the scenario of a digital signature transaction that has multiple signatures to be performed, where the signers belongs to the same group. Let&#39;s think to the group _\&quot;teachers\&quot;_ of a school. Thus is possible to add the _signer_group_ _\&quot;teachers\&quot;_ as signers of the digital signature transaction without worrying about who really belong to that group | [optional] 
**signature_ticket** | **String** | This is the url where a signature tray is predisposed for a specific signer that have to sign a specific digital signature transaction. It is possible to set the signature tray language by the use of the **locate** query string - e.g. *?locate&#x3D;en*  | [optional] 
**automatic** | **Boolean** | If true indicates that the signer is an _automatic_ one, thus the signature procedure will be different from a regular signer | [optional] 
**decline_url** | **String** | This is the url to decline a digital signature transaction | [optional] 
**description_html** | **String** | This is a _html_ description to attach with the Signature | [optional] 
**status** | **String** | The status of the Signature. As the digital signature transaction is created the status of the Signature is _waiting_, if everything is legit than the status changes to _pending_, otherwise to _error_. Once the Signature is made the status changes to _performed_. If the DST expires before the Signature is performed then the status changes to _expired_ | [optional] 
**display_name** | **String** | This is the name will be displayed on the signature tray associated to the Signature has to be performed. Usually is the _full name_ of the user is going to sign | [optional] 
**profile** | **String** | The _profile_ field of the Signature object specifies the modality of signature is going to be performed, and can be:   - _PADES_ : allows to exclusively sign a pdf file with the signature     directly affixed into the document;   - _CADES_ : allows to sign different types of documents; the signature     is not \&quot;physically\&quot; into the document but the signature and the file     are placed together in an envelope instead, making thus a .p7m extension.  | [optional] 
**reason** | **String** | The reason of the Signature, or rather a motivational description associated to the Signature | [optional] 
**description** | **String** | This is a simple description to attach with the Signature | [optional] 
**declinable** | **Boolean** | If true the signer is able to decline the Signature if he wants to | [optional] 
**urlback** | **String** | The url for the redirection from Signature tray when the digital signature transaction is completed or annulled | [optional] 
**where** | [**SignatureWhere**](SignatureWhere.md) |  | [optional] 
**constraints** | [**Object**](.md) | Particular constraints for the Signature. For example constraints about the _firs tname_ or _last name_ of the certificate associated with the identity is going to sign. The way to use this field is through the _django lookups_, for example:   - \&quot;certificate__subject_givenName__iexact&#x3D;JOHN\&quot;  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::Signature.new(id: 787dc132-b3f0-11e9-a1a3-2a2ae2dbcce5,
                                 signer: jdo,
                                 signer_group: null,
                                 signature_ticket: https://sandbox.signingtoday.com/787dc132-b3f0-11e9-a1a3-2a2ae2dbcce5/signature,
                                 automatic: false,
                                 decline_url: /api/v1/bit4id/signatures/787dc132-b3f0-11e9-a1a3-2a2ae2dbcce5/decline,
                                 description_html: &lt;i&gt;my-description&lt;/i&gt;,
                                 status: performed,
                                 display_name: John,
                                 profile: pades-bes,
                                 reason: For approval,
                                 description: *my-description*,
                                 declinable: true,
                                 urlback: https://signing.today/sample/home,
                                 where: null,
                                 constraints: {})
```


