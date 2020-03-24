# SigningTodayAPIClient::Organization

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The uuid code that identifies the Organization | [optional] 
**name** | **String** | This is an arbitrary name is possible to associate to the Organization  | [optional] 
**slug** | **String** | This is the _organization-slug_ that is used as parameter in the endpoints or in the body of the requests  | [optional] 
**settings** | [**OrganizationSettings**](OrganizationSettings.md) |  | [optional] 
**logo** | **String** | This is the url to the image is supposed to be used as logo of the Organization, for example the logo or the motto of the company is integrating SigningToday  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::Organization.new(id: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 name: Bit4id,
                                 slug: bit4id,
                                 settings: null,
                                 logo: https://www.my-organization.com/logo.png)
```


