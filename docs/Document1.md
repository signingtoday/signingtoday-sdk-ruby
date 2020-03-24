# SigningTodayAPIClient::Document1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **String** | The name associated to the document, provided during the Digital Signature Transaction creation | [optional] 
**document_uri** | **String** | This is the url from where the document, commonly in pdf format, has been uploaded to the Digital Signature Transaction | [optional] 
**groups** | **Array&lt;Array&lt;SignatureDST&gt;&gt;** | The scheduled signatures ordered as groups of signers. The signatures of a group can be performed only once all the signatures of the previous groups have been completed  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::Document1.new(display_name: Work Contract,
                                 document_uri: http://www.africau.edu/images/default/sample.pdf,
                                 groups: null)
```


