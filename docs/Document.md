# SigningTodayAPIClient::Document

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**document_uri** | **String** | This is the url from where the document, commonly in pdf format, has been uploaded to the Digital Signature Transaction | [optional] 
**document_uri_options** | [**Object**](.md) | Additional options about the upload of the document | [optional] 
**document** | **String** | The url to download the document | [optional] 
**display_name** | **String** | The name associated to the document, provided during the Digital Signature Transaction creation | [optional] 
**groups** | **Array&lt;Array&lt;Signature&gt;&gt;** | The scheduled signatures ordered as groups of signers. The signatures of a group can be performed only once all the signatures of the previous groups have been completed  | [optional] 
**preview** | **String** | The preview field is a parametric url which can be used to make a preview of the documents in the client integration of SigningToday. The parameters are:   - page: the page to display   - width: the width of the page   - heigth: the heigth of the page The width and height parameters allows to display the page in a preferred size. If both are provided the first one is only use because the proportion of the page remains unchanged  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::Document.new(document_uri: https://signing.today/sample/document-uri,
                                 document_uri_options: {&quot;headers&quot;:{&quot;Authorization&quot;:&quot;barer ba12bb43ac54dd65&quot;},&quot;method&quot;:&quot;GET&quot;},
                                 document: https://signing.today/sample/get-document,
                                 display_name: Work Contract,
                                 groups: null,
                                 preview: /pdfr/737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4/0/{page}.png?w&#x3D;{width}&amp;h&#x3D;{height})
```


