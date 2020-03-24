# SigningTodayAPIClient::InlineObject3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file** | **File** | The file to upload | 
**filename** | **String** | The name of the file | 
**resource_type** | **String** |  | 
**title** | **String** | User-defined title of the resource. | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::InlineObject3.new(file: null,
                                 filename: contract.pdf,
                                 resource_type: PDF_Document,
                                 title: Sales Contract)
```


