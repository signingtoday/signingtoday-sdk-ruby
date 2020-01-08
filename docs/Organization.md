# SigningTodayAPIClient::Organization

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The uuid code that identifies the Organization | [optional] 
**logo** | **String** | This is the url to the image is supposed to be used as logo of the Organization, for example the logo or the motto of the company is integrating SigningToday  | [optional] 
**name** | **String** | This is an arbitrary name is possible to associate to the Organization  | [optional] 
**settings** | [**OrganizationSettings**](OrganizationSettings.md) |  | [optional] 
**slug** | **String** | This is the _organization-slug_ that is used as parameter in the endpoints or in the body of the requests  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::Organization.new(id: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 logo: https://www.my-organization.com/logo.png,
                                 name: Bit4id,
                                 settings: null,
                                 slug: bit4id)
```


