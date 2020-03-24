# SigningTodayAPIClient::Bit4idPathgroupNotificationsApi

All URIs are relative to *https://web.sandbox.signingtoday.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notifications_dst_id_delete**](Bit4idPathgroupNotificationsApi.md#notifications_dst_id_delete) | **DELETE** /notifications/dst/{id} | Clear Notifications for a DST
[**notifications_dsts_get**](Bit4idPathgroupNotificationsApi.md#notifications_dsts_get) | **GET** /notifications/dsts | Get latest DST Notifications
[**notifications_push_token_delete**](Bit4idPathgroupNotificationsApi.md#notifications_push_token_delete) | **DELETE** /notifications/push-token | Clear a registered push notification token
[**notifications_push_token_post**](Bit4idPathgroupNotificationsApi.md#notifications_push_token_post) | **POST** /notifications/push-token | Register a token for push notifications



## notifications_dst_id_delete

> notifications_dst_id_delete(id)

Clear Notifications for a DST

This API notifies that a user consumed all active notifications for a DST.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupNotificationsApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Clear Notifications for a DST
  api_instance.notifications_dst_id_delete(id)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupNotificationsApi->notifications_dst_id_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## notifications_dsts_get

> NotificationsResponse notifications_dsts_get(opts)

Get latest DST Notifications

This APIs allows to get latest user Notifications for DSTs sorted desc by time.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupNotificationsApi.new
opts = {
  top: 32, # Integer | A number of results to return. Applied after **$skip** 
  skip: 64, # Integer | An offset into the collection of results
  count: true # Boolean | If true, the server includes the count of all the items in the response 
}

begin
  #Get latest DST Notifications
  result = api_instance.notifications_dsts_get(opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupNotificationsApi->notifications_dsts_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **top** | **Integer**| A number of results to return. Applied after **$skip**  | [optional] 
 **skip** | **Integer**| An offset into the collection of results | [optional] 
 **count** | **Boolean**| If true, the server includes the count of all the items in the response  | [optional] 

### Return type

[**NotificationsResponse**](NotificationsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## notifications_push_token_delete

> notifications_push_token_delete(device_id)

Clear a registered push notification token

This API deregister a deviceId from the push notifications.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupNotificationsApi.new
device_id = '05ea656f-df69-49b1-a12b-9bf640c427c2' # String | The _deviceId_ to deregister

begin
  #Clear a registered push notification token
  api_instance.notifications_push_token_delete(device_id)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupNotificationsApi->notifications_push_token_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **String**| The _deviceId_ to deregister | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## notifications_push_token_post

> notifications_push_token_post(inline_object6)

Register a token for push notifications

This API allows to register a token for push notifications. Only trusted deviceId can be registered. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupNotificationsApi.new
inline_object6 = SigningTodayAPIClient::InlineObject6.new # InlineObject6 | 

begin
  #Register a token for push notifications
  api_instance.notifications_push_token_post(inline_object6)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupNotificationsApi->notifications_push_token_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object6** | [**InlineObject6**](InlineObject6.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

