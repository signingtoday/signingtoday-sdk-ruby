# SigningTodayAPIClient::DSTNote

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The id of the note | [optional] 
**dst_id** | **String** | The _UUID_ code of the Digital Signature Transaction | [optional] 
**user_id** | **String** | The _UUID_ code of the user which created the _Note_ | [optional] 
**created_at** | **DateTime** | The _data-time_ of the note creation | [optional] 
**text** | **String** | Actual content of the _DST Note_ | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::DSTNote.new(id: 32,
                                 dst_id: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 user_id: 123e4567-e89b-12d3-a456-426655440000,
                                 created_at: null,
                                 text: This a DSTNote sample)
```


