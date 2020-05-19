# SigningTodayAPIClient::SignatureWhere

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **Integer** | As can be guessed this is the page where to allocate the Signature | [optional] 
**position** | **String** | This is the exact position in the choosen page where to attach the Signature. Multiple unit of measurement are provided. The format is the following: \&quot;rect: 50mm, 100mm, 200mm, 150mm\&quot;  | [optional] 
**image_uri** | **String** | If provided this current image will be used for the signature, as a graphic appearance. This overrides the appearance definited in the Identity, which still will be the default one. If no signature appearance is provided in the Identity than will be used the default one of the Organization. If you choose to avoi the signature appearance than use this field as follows: _image_uri_: null  | [optional] 
**text** | [**Array&lt;SignatureWhereText&gt;**](SignatureWhereText.md) | The text field will be filled with a list of paragraphs that will be displayed next to the graphic signature. Each paragraph may have its own font type, font dimension, line-up and a list of rows (strings) which will compose the paragraph. It is possible to specify some _placeholders_ as well. The paragraph objects will use default font and line-up if none was specified. If no **format** field is specified than will be used the default one:   \&quot;format\&quot;: [     \&quot;Signed by {subject[commonName]}\&quot;,     \&quot;{subject[C]}\&quot;,     \&quot;{subject[L]}\&quot;,     \&quot;{subject[S]}\&quot;,     \&quot;{subject[OU]}\&quot;,     \&quot;{subject[O]}\&quot;,     \&quot;{subject[E]}\&quot;   ] Where {subject[...]} is a placeholder which will be filled with the certificate attirbutes. Follows the list of the placeholders:   - commonName: CommonName   - OU: OrganizationalUnit   - O: Organization   - L: Locality   - S: StateOrProvinceName   - C: CountryName  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::SignatureWhere.new(page: 1,
                                 position: rect: 50, 100, 200, 150,
                                 image_uri: https://signing.today/sample/signature_appearance,
                                 text: null)
```


