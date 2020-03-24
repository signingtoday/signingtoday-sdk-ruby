# SigningTodayAPIClient::RobotApi

All URIs are relative to *https://web.sandbox.signingtoday.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**robot_configuration_put**](RobotApi.md#robot_configuration_put) | **PUT** /robot/configuration | Edit the Robot configuration



## robot_configuration_put

> robot_configuration_put(robot_configuration, opts)

Edit the Robot configuration

This API allows to edit the Robot configuration. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::RobotApi.new
robot_configuration = SigningTodayAPIClient::RobotConfiguration.new # RobotConfiguration | RobotConfiguration.
opts = {
  username: 'thirdPartApp', # String | The _username_ associated to the account
  domain: 'demo' # String | The _domain_ associated to the account
}

begin
  #Edit the Robot configuration
  api_instance.robot_configuration_put(robot_configuration, opts)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling RobotApi->robot_configuration_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **robot_configuration** | [**RobotConfiguration**](RobotConfiguration.md)| RobotConfiguration. | 
 **username** | **String**| The _username_ associated to the account | [optional] 
 **domain** | **String**| The _domain_ associated to the account | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

