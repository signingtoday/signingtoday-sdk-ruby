# SigningTodayAPIClient::UserGroup

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique id of the Group | [optional] [readonly] 
**name** | **String** | Name of the Group | [optional] 
**domain** | **String** | Organization which the Group belongs | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::UserGroup.new(id: 1,
                                 name: Marketing BU,
                                 domain: bit4id)
```


