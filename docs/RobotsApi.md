# SigningTodayAPIClient::RobotsApi

All URIs are relative to *https://web.sandbox.signingtoday.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**robot_authentication_delete**](RobotsApi.md#robot_authentication_delete) | **DELETE** /robot/authentication | Clear a Robot authentication lifetime token
[**robot_authentication_get**](RobotsApi.md#robot_authentication_get) | **GET** /robot/authentication | Retrieve the Robot authentication lifetime token
[**robot_configuration_get**](RobotsApi.md#robot_configuration_get) | **GET** /robot/configuration | Retrieve the Robot configuration
[**robot_ds_ts_post**](RobotsApi.md#robot_ds_ts_post) | **POST** /robot/DSTs | Create a new DST in one call
[**robot_id_instantiate_post**](RobotsApi.md#robot_id_instantiate_post) | **POST** /robot/{id}/instantiate | Instantiate a DST from a template by robot



## robot_authentication_delete

> robot_authentication_delete(opts)

Clear a Robot authentication lifetime token

This API allows to clear the Robot authentication lifetime token.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::RobotsApi.new
opts = {
  username: 'thirdPartApp', # String | The _username_ associated to the account
  domain: 'demo' # String | The _domain_ associated to the account
}

begin
  #Clear a Robot authentication lifetime token
  api_instance.robot_authentication_delete(opts)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling RobotsApi->robot_authentication_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The _username_ associated to the account | [optional] 
 **domain** | **String**| The _domain_ associated to the account | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## robot_authentication_get

> RobotAuthenticationToken robot_authentication_get(opts)

Retrieve the Robot authentication lifetime token

This API allows to generate or retrieves the Robot authentication lifetime token for the specified robot account, or the current logged in account. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::RobotsApi.new
opts = {
  username: 'thirdPartApp', # String | The _username_ associated to the account
  domain: 'demo' # String | The _domain_ associated to the account
}

begin
  #Retrieve the Robot authentication lifetime token
  result = api_instance.robot_authentication_get(opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling RobotsApi->robot_authentication_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The _username_ associated to the account | [optional] 
 **domain** | **String**| The _domain_ associated to the account | [optional] 

### Return type

[**RobotAuthenticationToken**](RobotAuthenticationToken.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## robot_configuration_get

> RobotConfiguration robot_configuration_get(opts)

Retrieve the Robot configuration

This API allows to retrieve the Robot configuration. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::RobotsApi.new
opts = {
  username: 'thirdPartApp', # String | The _username_ associated to the account
  domain: 'demo' # String | The _domain_ associated to the account
}

begin
  #Retrieve the Robot configuration
  result = api_instance.robot_configuration_get(opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling RobotsApi->robot_configuration_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The _username_ associated to the account | [optional] 
 **domain** | **String**| The _domain_ associated to the account | [optional] 

### Return type

[**RobotConfiguration**](RobotConfiguration.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## robot_ds_ts_post

> DigitalSignatureTransaction robot_ds_ts_post(create_digital_signature_transaction)

Create a new DST in one call

This API allows to create a new DST with a more convenient interface for client applications. The purpose is to provide a method for the creation of a DST in order to semplify the integration into third part applications. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::RobotsApi.new
create_digital_signature_transaction = SigningTodayAPIClient::CreateDigitalSignatureTransaction.new # CreateDigitalSignatureTransaction | description

begin
  #Create a new DST in one call
  result = api_instance.robot_ds_ts_post(create_digital_signature_transaction)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling RobotsApi->robot_ds_ts_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_digital_signature_transaction** | [**CreateDigitalSignatureTransaction**](CreateDigitalSignatureTransaction.md)| description | 

### Return type

[**DigitalSignatureTransaction**](DigitalSignatureTransaction.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## robot_id_instantiate_post

> DigitalSignatureTransaction robot_id_instantiate_post(id, instantiate_dst_template)

Instantiate a DST from a template by robot

This API allows to instantiate a DST from a template patching parts of its data structure. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::RobotsApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
instantiate_dst_template = SigningTodayAPIClient::InstantiateDSTTemplate.new # InstantiateDSTTemplate | 

begin
  #Instantiate a DST from a template by robot
  result = api_instance.robot_id_instantiate_post(id, instantiate_dst_template)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling RobotsApi->robot_id_instantiate_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **instantiate_dst_template** | [**InstantiateDSTTemplate**](InstantiateDSTTemplate.md)|  | 

### Return type

[**DigitalSignatureTransaction**](DigitalSignatureTransaction.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*

