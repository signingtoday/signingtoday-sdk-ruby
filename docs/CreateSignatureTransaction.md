# SigningTodayAPIClient::CreateSignatureTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | Title of the Digital Signature Transaction | [optional] 
**documents** | [**Array&lt;Document1&gt;**](Document1.md) | The _documents_ field is an array containing document objects, where everyone of them is defined as follows  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::CreateSignatureTransaction.new(title: Signature Transaction Demo,
                                 documents: null)
```


