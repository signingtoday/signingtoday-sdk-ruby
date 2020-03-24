# SigningTodayAPIClient::RobotConfigurationAuthentication

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **String** | The username for the authentication | [optional] 
**password** | **String** | The password for the authentication | [optional] 
**auth_mode** | **String** | The type of authentication | [optional] 
**client_key** | **String** | Client key | [optional] 
**client_cert** | **String** | Client certificate | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::RobotConfigurationAuthentication.new(username: jdo,
                                 password: A12345678z,
                                 auth_mode: basic,
                                 client_key: clientKey,
                                 client_cert: &lt;client certificate&gt;)
```


