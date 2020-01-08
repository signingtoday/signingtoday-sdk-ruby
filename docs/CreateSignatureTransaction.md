# SigningTodayAPIClient::CreateSignatureTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**documents** | [**Array&lt;Document&gt;**](Document.md) | The _documents_ field is an array containing document objects, where everyone of them is defined as follows  | [optional] 
**title** | **String** | Title of the Digital Signature Transaction | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::CreateSignatureTransaction.new(documents: null,
                                 title: Signature Transaction Demo)
```


