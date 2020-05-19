# SigningTodayAPIClient::SignatureWhereText

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**font** | [**SignatureWhereFont**](SignatureWhereFont.md) |  | [optional] 
**align** | **String** |  | [optional] 
**format** | **Array&lt;String&gt;** |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::SignatureWhereText.new(font: null,
                                 align: middle,
                                 format: [&quot;Firmato con SigningToday&quot;,&quot;da {subject[commonName]}&quot;,&quot;{subject[C]}&quot;,&quot;{subject[L]}&quot;,&quot;{subject[S]}&quot;,&quot;{subject[OU]}&quot;,&quot;{subject[O]}&quot;,&quot;{subject[E]}&quot;,&quot;in data {date:%d-%m-%Y %H:%M:%S}&quot;])
```


