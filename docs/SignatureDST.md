# SigningTodayAPIClient::SignatureDST

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**constraints** | [**Object**](.md) | Particular constraints for the Signature. For example constraints about the _firs tname_ or _last name_ of the certificate associated with the identity is going to sign. The way to use this field is through the _django lookups_, for example:   - \&quot;certificate__subject_givenName__iexact&#x3D;JOHN\&quot;  | [optional] 
**declinable** | **Boolean** | If true the signer is able to decline the Signature if he wants to | [optional] 
**description** | **String** | This is a simple description to attach with the Signature | [optional] 
**display_name** | **String** | This is the name will be displayed on the signature tray associated to the Signature has to be performed. Usually is the _full name_ of the user is going to sign | [optional] 
**profile** | **String** | The _profile_ field of the Signature object specifies the modality of signature is going to be performed, and can be:   - _PADES_ :     - allows to exclusively sign a pdf file with the signature     directly affixed into the document;   - _CADES_ :     - allows to sign different types of documents; the signature     is not \&quot;physically\&quot; into the document but the signature and the file     are placed together in an envelope instead, making thus a _.p7m_     extension.  | [optional] 
**reason** | **String** | The reason of the Signature, or rather a motivational description associated to the Signature | [optional] 
**signer** | **String** | The user that have to sign the digital signature transaction | [optional] 
**urlback** | **String** | The url for the redirection from Signature tray when the digital signature transaction is completed or annulled | [optional] 
**where** | [**SignatureDSTWhere**](SignatureDSTWhere.md) |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::SignatureDST.new(constraints: {},
                                 declinable: true,
                                 description: *my-description*,
                                 display_name: John,
                                 profile: pades-bes,
                                 reason: For approval,
                                 signer: jdo,
                                 urlback: https://signing.today/sample/home,
                                 where: null)
```


