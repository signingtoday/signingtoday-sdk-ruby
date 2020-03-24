# SigningTodayAPIClient::RobotIdInstantiateRolesMapping

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**role_name** | **String** | The role indicated into the template | [optional] 
**signer** | [**SignerInstance**](SignerInstance.md) |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::RobotIdInstantiateRolesMapping.new(role_name: Buyer,
                                 signer: null)
```


