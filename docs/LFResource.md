# SigningTodayAPIClient::LFResource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique id of the resource | [optional] 
**domain** | **String** | The _domain_ is the Organization which a user or a DST belongs | [optional] 
**type** | **String** | Type of the resource, for example a _PDFResource_ | [optional] [readonly] 
**dst_uuid** | **String** | Unique id of the _DST_ which the resource is correlated | [optional] [readonly] 
**title** | **String** | Title of the resource | [optional] 
**filename** | **String** | Name of the file uploaded, with its extension as well | [optional] 
**url** | **String** | Url of the resource | [optional] [readonly] 
**size** | **Integer** | Size of the resource | [optional] [readonly] 
**created_at** | **DateTime** | Indicates when the resource has been uploaded | [optional] [readonly] 
**mimetype** | **String** | _MIME_ type of the resource | [optional] [readonly] 
**pages** | **Integer** | Indicates how many pages the resource is | [optional] 
**extra_data** | **Hash&lt;String, Object&gt;** | Extra data of the resource | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::LFResource.new(id: 05a80817-a3a5-48fe-83c0-0df0f48a2a26,
                                 domain: bit4id,
                                 type: PDFResource,
                                 dst_uuid: d9b4df92-cf85-48dc-a2de-955f518a2992,
                                 title: Sales Contract,
                                 filename: contract.pdf,
                                 url: https://storage.myapi.com/resource/05a80817-a3a5-48fe-83c0-0df0f48a2a26,
                                 size: 1024,
                                 created_at: 2007-04-02T19:30:10Z,
                                 mimetype: application/pdf,
                                 pages: 3,
                                 extra_data: {&quot;toSign&quot;:true})
```


