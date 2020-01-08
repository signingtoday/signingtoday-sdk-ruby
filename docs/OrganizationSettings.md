# SigningTodayAPIClient::OrganizationSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_rao** | **String** | This is the default *RAO* user of the Organization. A rao user is the one can associate identities to the other users  | [optional] 
**dst_default_months** | **Integer** | This is the default deadline before the expiration of a digital signature transaction | [optional] [default to 3]
**signature_appearance** | **String** | This is the url to the default signature appearance will be used for every member of the organization. In the scenario of a user that owns an identity with a signature_appearance will be uset the image associated to the identity rather than the default one  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::OrganizationSettings.new(default_rao: jdo,
                                 dst_default_months: 3,
                                 signature_appearance: https://www.my-organization.com/signature.png)
```


