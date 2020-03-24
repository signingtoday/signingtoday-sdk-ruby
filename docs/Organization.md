# SigningTodayAPIClient::Organization

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**email_override_folder_path** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**contact_email** | **String** |  | [optional] 
**contact_phone** | **String** |  | [optional] 
**nation** | **String** |  | [optional] 
**city** | **String** |  | [optional] 
**deleted_at** | **DateTime** |  | [optional] [readonly] 
**private_settings** | [**OrganizationPrivateSettings**](OrganizationPrivateSettings.md) |  | [optional] 
**public_settings** | [**OrganizationPublicSettings**](OrganizationPublicSettings.md) |  | [optional] 
**settings** | [**OrganizationSettings**](OrganizationSettings.md) |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::Organization.new(id: null,
                                 email_override_folder_path: null,
                                 name: null,
                                 contact_email: null,
                                 contact_phone: null,
                                 nation: null,
                                 city: null,
                                 deleted_at: 2007-04-02T19:30:10Z,
                                 private_settings: null,
                                 public_settings: null,
                                 settings: null)
```


