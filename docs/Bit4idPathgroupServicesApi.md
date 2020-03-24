# SigningTodayAPIClient::Bit4idPathgroupServicesApi

All URIs are relative to *https://web.sandbox.signingtoday.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth_change_password_post**](Bit4idPathgroupServicesApi.md#auth_change_password_post) | **POST** /auth/changePassword | Consume a token to change the password
[**auth_password_lost_get**](Bit4idPathgroupServicesApi.md#auth_password_lost_get) | **GET** /auth/passwordLost | Request to recover own password
[**auth_password_reset_get**](Bit4idPathgroupServicesApi.md#auth_password_reset_get) | **GET** /auth/passwordReset | Reset a user password with superuser
[**auth_password_reset_post**](Bit4idPathgroupServicesApi.md#auth_password_reset_post) | **POST** /auth/passwordReset | Reset your own password
[**auth_password_token_get**](Bit4idPathgroupServicesApi.md#auth_password_token_get) | **GET** /auth/passwordToken | Get token to change password
[**auth_saml_post**](Bit4idPathgroupServicesApi.md#auth_saml_post) | **POST** /auth/saml | Register or Update a SAML user
[**auth_user**](Bit4idPathgroupServicesApi.md#auth_user) | **GET** /auth/user | Return the current logged in user
[**configuration_get**](Bit4idPathgroupServicesApi.md#configuration_get) | **GET** /service/configuration | Retrieve the App configuration
[**logout_user**](Bit4idPathgroupServicesApi.md#logout_user) | **GET** /auth/logout | Log out current user terminating the session
[**oauth_token_post**](Bit4idPathgroupServicesApi.md#oauth_token_post) | **POST** /oauth/token | Get the bearer token
[**pdf_resource_id_thumbs_get**](Bit4idPathgroupServicesApi.md#pdf_resource_id_thumbs_get) | **GET** /pdfResource/{id}/thumbs | Retrieve a Resource (of service)
[**service_change_password_post**](Bit4idPathgroupServicesApi.md#service_change_password_post) | **POST** /service/changePassword | Change the password of a service user
[**service_users_sync_post**](Bit4idPathgroupServicesApi.md#service_users_sync_post) | **POST** /service/users/sync | Sync user accounts



## auth_change_password_post

> auth_change_password_post(password_token, body)

Consume a token to change the password

This API allows to change the password by consuming a token.

### Example

```ruby
# load the gem
require 'signing_today_client'

api_instance = SigningTodayAPIClient::Bit4idPathgroupServicesApi.new
password_token = '05ea656f-df69-49b1-a12b-9bf640c427c2' # String | The password token issued to change password
body = 'body_example' # String | New password associated to the account (BCrypt)

begin
  #Consume a token to change the password
  api_instance.auth_change_password_post(password_token, body)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupServicesApi->auth_change_password_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password_token** | **String**| The password token issued to change password | 
 **body** | **String**| New password associated to the account (BCrypt) | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: */*


## auth_password_lost_get

> auth_password_lost_get(username, domain)

Request to recover own password

This API requests to recover the own password.

### Example

```ruby
# load the gem
require 'signing_today_client'

api_instance = SigningTodayAPIClient::Bit4idPathgroupServicesApi.new
username = 'jdo' # String | Username associated to the account
domain = 'demo' # String | Domain associated to the account

begin
  #Request to recover own password
  api_instance.auth_password_lost_get(username, domain)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupServicesApi->auth_password_lost_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Username associated to the account | 
 **domain** | **String**| Domain associated to the account | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## auth_password_reset_get

> auth_password_reset_get(username, domain)

Reset a user password with superuser

This API allows to reset the password of a user. This is possible when the request is performed with a superuser.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupServicesApi.new
username = 'jdo' # String | Username associated to the account
domain = 'demo' # String | Domain associated to the account

begin
  #Reset a user password with superuser
  api_instance.auth_password_reset_get(username, domain)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupServicesApi->auth_password_reset_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Username associated to the account | 
 **domain** | **String**| Domain associated to the account | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## auth_password_reset_post

> auth_password_reset_post(inline_object4)

Reset your own password

This API allows to reset your own password knowing the previous one with a logged user.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupServicesApi.new
inline_object4 = SigningTodayAPIClient::InlineObject4.new # InlineObject4 | 

begin
  #Reset your own password
  api_instance.auth_password_reset_post(inline_object4)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupServicesApi->auth_password_reset_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object4** | [**InlineObject4**](InlineObject4.md)|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## auth_password_token_get

> Array&lt;Object&gt; auth_password_token_get

Get token to change password

This API allows to get a password token to use in order to change a password.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupServicesApi.new

begin
  #Get token to change password
  result = api_instance.auth_password_token_get
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupServicesApi->auth_password_token_get: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;Object&gt;**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## auth_saml_post

> auth_saml_post(domain, id_token1, id_token2)

Register or Update a SAML user

This API allows to register or Update a SAML user.

### Example

```ruby
# load the gem
require 'signing_today_client'

api_instance = SigningTodayAPIClient::Bit4idPathgroupServicesApi.new
domain = 'domain_example' # String | SAML domain
id_token1 = 'id_token1_example' # String | The BASE64-encoded SAML Reply in JSON
id_token2 = 'id_token2_example' # String | The Hex-encoded HMAC-SHA256 of the decoded IDToken1

begin
  #Register or Update a SAML user
  api_instance.auth_saml_post(domain, id_token1, id_token2)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupServicesApi->auth_saml_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| SAML domain | 
 **id_token1** | **String**| The BASE64-encoded SAML Reply in JSON | 
 **id_token2** | **String**| The Hex-encoded HMAC-SHA256 of the decoded IDToken1 | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: */*


## auth_user

> User auth_user

Return the current logged in user

This API allows to retrieve the current logged in user.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupServicesApi.new

begin
  #Return the current logged in user
  result = api_instance.auth_user
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupServicesApi->auth_user: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## configuration_get

> Hash&lt;String, Object&gt; configuration_get

Retrieve the App configuration

This API allows to get the public configuration associated to the application. 

### Example

```ruby
# load the gem
require 'signing_today_client'

api_instance = SigningTodayAPIClient::Bit4idPathgroupServicesApi.new

begin
  #Retrieve the App configuration
  result = api_instance.configuration_get
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupServicesApi->configuration_get: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## logout_user

> logout_user

Log out current user terminating the session

This API allows to Log out current user.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupServicesApi.new

begin
  #Log out current user terminating the session
  api_instance.logout_user
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupServicesApi->logout_user: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## oauth_token_post

> InlineResponse200 oauth_token_post(opts)

Get the bearer token

This API allows to get the token needed to access other APIs through the OAuth2 authentication.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupServicesApi.new
opts = {
  username: 'username_example', # String | The username in the form _username_@_domain_ where *domain* is the organization the user belongs to
  password: 'password_example', # String | This is the actual password of the user
  grant_type: 'grant_type_example' # String | A parameter that indicates the type of the grant in order to perform the basic authentication
}

begin
  #Get the bearer token
  result = api_instance.oauth_token_post(opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupServicesApi->oauth_token_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username in the form _username_@_domain_ where *domain* is the organization the user belongs to | [optional] 
 **password** | **String**| This is the actual password of the user | [optional] 
 **grant_type** | **String**| A parameter that indicates the type of the grant in order to perform the basic authentication | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## pdf_resource_id_thumbs_get

> File pdf_resource_id_thumbs_get(id, page, opts)

Retrieve a Resource (of service)

This API allows to extract thumbnails from a PDF Resource.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupServicesApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
page = 1 # Integer | The page to retrieve
opts = {
  width: 20 # Integer | The output image width
}

begin
  #Retrieve a Resource (of service)
  result = api_instance.pdf_resource_id_thumbs_get(id, page, opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupServicesApi->pdf_resource_id_thumbs_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **page** | **Integer**| The page to retrieve | 
 **width** | **Integer**| The output image width | [optional] 

### Return type

**File**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/jpeg, */*


## service_change_password_post

> service_change_password_post(username, domain, body)

Change the password of a service user

This API allows to change the password of a **service user**. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupServicesApi.new
username = 'jdo' # String | Username associated to the account
domain = 'demo' # String | Domain associated to the account
body = 'body_example' # String | New password associated to the account (BCrypt)

begin
  #Change the password of a service user
  api_instance.service_change_password_post(username, domain, body)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupServicesApi->service_change_password_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| Username associated to the account | 
 **domain** | **String**| Domain associated to the account | 
 **body** | **String**| New password associated to the account (BCrypt) | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: */*


## service_users_sync_post

> UserSyncReport service_users_sync_post(inline_object)

Sync user accounts

This API allows to sync user accounts.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupServicesApi.new
inline_object = [SigningTodayAPIClient::InlineObject.new] # Array<InlineObject> | User Accounts

begin
  #Sync user accounts
  result = api_instance.service_users_sync_post(inline_object)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupServicesApi->service_users_sync_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object** | [**Array&lt;InlineObject&gt;**](InlineObject.md)| User Accounts | 

### Return type

[**UserSyncReport**](UserSyncReport.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*

