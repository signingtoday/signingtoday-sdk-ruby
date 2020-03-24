# SigningTodayAPIClient::OrganizationSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_dst_expire_days** | **Integer** |  | [optional] [default to 30]
**default_language** | **String** |  | [optional] 
**alfresco_properties** | [**OrganizationSettingsAlfrescoProperties**](OrganizationSettingsAlfrescoProperties.md) |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::OrganizationSettings.new(default_dst_expire_days: 30,
                                 default_language: null,
                                 alfresco_properties: null)
```


