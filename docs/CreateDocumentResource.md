# SigningTodayAPIClient::CreateDocumentResource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filename** | **String** |  | [optional] 
**resource_type** | **Array&lt;String&gt;** |  | [optional] 
**title** | **String** |  | [optional] 
**source** | [**CreateDocumentSource**](CreateDocumentSource.md) |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::CreateDocumentResource.new(filename: contract.pdf,
                                 resource_type: null,
                                 title: Sales Contract,
                                 source: null)
```


