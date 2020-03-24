# SigningTodayAPIClient::DevicesApi

All URIs are relative to *https://web.sandbox.signingtoday.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**device_authorization_delete**](DevicesApi.md#device_authorization_delete) | **DELETE** /device/authorization | Clear a trusted device
[**device_authorization_get**](DevicesApi.md#device_authorization_get) | **GET** /device/authorization | Retrieve a challenge for authorizing a new trusted device
[**device_authorization_post**](DevicesApi.md#device_authorization_post) | **POST** /device/authorization | Register a new trusted device
[**devices_get**](DevicesApi.md#devices_get) | **GET** /devices | Get the list of trusted devices



## device_authorization_delete

> device_authorization_delete(device_id, opts)

Clear a trusted device

This APIs allows to deregister a _deviceId_ of a trusted device.  It also deletes any notification push-token associated to the trusted device. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DevicesApi.new
device_id = '05ea656f-df69-49b1-a12b-9bf640c427c2' # String | The _deviceId_ to deregister
opts = {
  user_id: '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | Select the objects relative to the user specified by the parameter. If not specified will be used the id of the current authenticated user
}

begin
  #Clear a trusted device
  api_instance.device_authorization_delete(device_id, opts)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DevicesApi->device_authorization_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| The _deviceId_ to deregister | 
 **user_id** | [**String**](.md)| Select the objects relative to the user specified by the parameter. If not specified will be used the id of the current authenticated user | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## device_authorization_get

> DeviceAuthorizationResponse device_authorization_get

Retrieve a challenge for authorizing a new trusted device

This API allows to retrieve a challenge in order to authorize a new trusted device.   - If asked in image/png the challenge is given encoded as a QR-Code image.   - An invocation of the endpoint invalidate any previous challenge.   - The challenge lasts 10 minutes. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DevicesApi.new

begin
  #Retrieve a challenge for authorizing a new trusted device
  result = api_instance.device_authorization_get
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DevicesApi->device_authorization_get: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DeviceAuthorizationResponse**](DeviceAuthorizationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, image/png, */*


## device_authorization_post

> Array&lt;String&gt; device_authorization_post(inline_object7)

Register a new trusted device

This API allows to register a new trusted device. If the device is already present, it returns the current associated Token and updates the name. 

### Example

```ruby
# load the gem
require 'signing_today_client'

api_instance = SigningTodayAPIClient::DevicesApi.new
inline_object7 = SigningTodayAPIClient::InlineObject7.new # InlineObject7 | 

begin
  #Register a new trusted device
  result = api_instance.device_authorization_post(inline_object7)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DevicesApi->device_authorization_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object7** | [**InlineObject7**](InlineObject7.md)|  | 

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## devices_get

> TrustedDevicesGetResponse devices_get(opts)

Get the list of trusted devices

The API allows to enumerate all the devices of a user. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DevicesApi.new
opts = {
  user_id: '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4', # String | Select the objects relative to the user specified by the parameter. If not specified will be used the id of the current authenticated user
  top: 32, # Integer | A number of results to return. Applied after **$skip** 
  skip: 64, # Integer | An offset into the collection of results
  count: true # Boolean | If true, the server includes the count of all the items in the response 
}

begin
  #Get the list of trusted devices
  result = api_instance.devices_get(opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DevicesApi->devices_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | [**String**](.md)| Select the objects relative to the user specified by the parameter. If not specified will be used the id of the current authenticated user | [optional] 
 **top** | **Integer**| A number of results to return. Applied after **$skip**  | [optional] 
 **skip** | **Integer**| An offset into the collection of results | [optional] 
 **count** | **Boolean**| If true, the server includes the count of all the items in the response  | [optional] 

### Return type

[**TrustedDevicesGetResponse**](TrustedDevicesGetResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*

