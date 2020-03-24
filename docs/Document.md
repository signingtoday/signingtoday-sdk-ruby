# SigningTodayAPIClient::Document

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_instance_id** | **Integer** | It is a reference for internal use | [optional] [readonly] 
**id** | **Integer** | Unique Id of the document | [optional] 
**plain_document_uuid** | **String** | Id of the associated Resource (plain PDF file e.g. the one uploaded by the user) | [optional] 
**filled_document_uuid** | **String** | Id of the associated PDF file that contains all the forms filled (present only once the whole document has been filled) | [optional] [readonly] 
**signed_document_uuid** | **String** | Id of the associated PDF file that contains all the signatures  (present only once the whole document has been signed) | [optional] [readonly] 
**status** | **String** | The status of the _Document_, which can be: - \&quot;plain\&quot;: The document has been correctly updated by the user - \&quot;filled\&quot;: The document has been filled - \&quot;signed\&quot;: The document has been signed  | [optional] [readonly] 
**forms** | [**Array&lt;FillableForm&gt;**](FillableForm.md) | The fillable elements of the document. Use the type field to identify textual fillable fields and signature fields | [optional] 
**signature_requests** | [**Array&lt;SignatureRequest&gt;**](SignatureRequest.md) | The list of signature request of the document | [optional] 
**signer_groups** | [**Array&lt;SignersGroup&gt;**](SignersGroup.md) | The sign plan for the document | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::Document.new(_instance_id: 1,
                                 id: 1,
                                 plain_document_uuid: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 filled_document_uuid: 192db8d8-4128-11ea-b77f-2e728ce88125,
                                 signed_document_uuid: 2a126504-4128-11ea-b77f-2e728ce88125,
                                 status: signed,
                                 forms: null,
                                 signature_requests: null,
                                 signer_groups: null)
```


