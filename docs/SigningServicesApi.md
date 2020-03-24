# SigningTodayAPIClient::SigningServicesApi

All URIs are relative to *https://web.sandbox.signingtoday.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sign_service_open**](SigningServicesApi.md#sign_service_open) | **POST** /sign-service/open | sign-service open post
[**sign_service_open_id**](SigningServicesApi.md#sign_service_open_id) | **POST** /sign-service/open/{transaction-id} | sign-service-open-transaction-id post
[**signature_id_perform_id_post**](SigningServicesApi.md#signature_id_perform_id_post) | **POST** /sign-service/{signature-id}/perform/{identity-id} | sign-service-signature-id-perform-identity-id post



## sign_service_open

> Object sign_service_open

sign-service open post

description bla bla

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::SigningServicesApi.new

begin
  #sign-service open post
  result = api_instance.sign_service_open
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling SigningServicesApi->sign_service_open: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## sign_service_open_id

> Object sign_service_open_id(transaction_id)

sign-service-open-transaction-id post

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::SigningServicesApi.new
transaction_id = 'transaction_id_example' # String | 

begin
  #sign-service-open-transaction-id post
  result = api_instance.sign_service_open_id(transaction_id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling SigningServicesApi->sign_service_open_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**|  | 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## signature_id_perform_id_post

> Object signature_id_perform_id_post(signature_id, identity_id, opts)

sign-service-signature-id-perform-identity-id post

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::SigningServicesApi.new
signature_id = 'signature_id_example' # String | 
identity_id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | 
opts = {
  inline_object8: SigningTodayAPIClient::InlineObject8.new # InlineObject8 | 
}

begin
  #sign-service-signature-id-perform-identity-id post
  result = api_instance.signature_id_perform_id_post(signature_id, identity_id, opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling SigningServicesApi->signature_id_perform_id_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_id** | **String**|  | 
 **identity_id** | **String**|  | 
 **inline_object8** | [**InlineObject8**](InlineObject8.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

