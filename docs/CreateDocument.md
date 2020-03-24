# SigningTodayAPIClient::CreateDocument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | [**CreateDocumentResource**](CreateDocumentResource.md) |  | [optional] 
**forms** | [**Array&lt;FillableForm&gt;**](FillableForm.md) | The fillable elements of the document. Use the type field to identify textual fillable field and signature fields. | [optional] 
**signature_requests** | [**Array&lt;SignatureRequest&gt;**](SignatureRequest.md) | The list of signature request of the document. | [optional] 
**signer_groups** | [**Array&lt;SignersGroup&gt;**](SignersGroup.md) | The sign plan for the document | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::CreateDocument.new(resource: null,
                                 forms: null,
                                 signature_requests: null,
                                 signer_groups: null)
```


