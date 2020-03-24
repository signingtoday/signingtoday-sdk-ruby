# SigningTodayAPIClient::RobotConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_headers** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Eventually the headers the application have to use during requests | [optional] 
**authentication** | [**RobotConfigurationAuthentication**](RobotConfigurationAuthentication.md) |  | [optional] 
**webhooks** | [**RobotConfigurationWebhooks**](RobotConfigurationWebhooks.md) |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::RobotConfiguration.new(request_headers: {&quot;Authorization&quot;:[&quot;Token eed3fc66-cfc8-4b11-9bf9-33493d95411b&quot;]},
                                 authentication: null,
                                 webhooks: null)
```


