# SigningTodayAPIClient::InstantiateDSTTemplate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template_patches** | [**CreateDigitalSignatureTransaction**](CreateDigitalSignatureTransaction.md) |  | [optional] 
**roles_mapping** | [**Array&lt;RobotIdInstantiateRolesMapping&gt;**](RobotIdInstantiateRolesMapping.md) | Indicates the mapping between the role specified into the template and the actual signer have to sign the _Digital Signature Transaction_ | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::InstantiateDSTTemplate.new(template_patches: null,
                                 roles_mapping: {&quot;buyer&quot;:{&quot;email&quot;:&quot;adam.smith@example.co.uk&quot;}})
```


