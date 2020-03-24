# SigningTodayAPIClient::InlineObject2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file** | **File** | The path of the file to upload | 
**filename** | **String** | The name of the file | 
**resource_type** | **String** | The type of the resource | 
**title** | **String** | User-defined title of the resource | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::InlineObject2.new(file: null,
                                 filename: contract.pdf,
                                 resource_type: PDF_Document,
                                 title: Sales Contract)
```


