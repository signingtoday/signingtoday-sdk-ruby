# SigningTodayAPIClient::Bit4idPathgroupUsersApi

All URIs are relative to *https://web.sandbox.signingtoday.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**user_id_delete**](Bit4idPathgroupUsersApi.md#user_id_delete) | **DELETE** /user/{id} | Enable or disable a User
[**user_id_get**](Bit4idPathgroupUsersApi.md#user_id_get) | **GET** /user/{id} | Retrieve a User
[**user_id_identities_get**](Bit4idPathgroupUsersApi.md#user_id_identities_get) | **GET** /user/{id}/identities | Retrieve User identities
[**user_id_put**](Bit4idPathgroupUsersApi.md#user_id_put) | **PUT** /user/{id} | Update a User
[**user_id_role_put**](Bit4idPathgroupUsersApi.md#user_id_role_put) | **PUT** /user/{id}/role | Change the User role
[**users_get**](Bit4idPathgroupUsersApi.md#users_get) | **GET** /users | Retrieve Users
[**users_groups_get**](Bit4idPathgroupUsersApi.md#users_groups_get) | **GET** /users/groups | Retrieve UserGroups
[**users_groups_post**](Bit4idPathgroupUsersApi.md#users_groups_post) | **POST** /users/groups | Create a new UserGroups
[**users_post**](Bit4idPathgroupUsersApi.md#users_post) | **POST** /users | Create a new User



## user_id_delete

> user_id_delete(id, opts)

Enable or disable a User

This API allows to **enable** or **disable** a User account. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupUsersApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
opts = {
  enabled: false # Boolean | This is a _boolean_ parameter. If true the User is **enabled** 
}

begin
  #Enable or disable a User
  api_instance.user_id_delete(id, opts)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupUsersApi->user_id_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **enabled** | **Boolean**| This is a _boolean_ parameter. If true the User is **enabled**  | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## user_id_get

> User user_id_get(id)

Retrieve a User

This API allows to retrieve a User.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupUsersApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Retrieve a User
  result = api_instance.user_id_get(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupUsersApi->user_id_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 

### Return type

[**User**](User.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## user_id_identities_get

> Array&lt;Identity&gt; user_id_identities_get(id)

Retrieve User identities

This API allows to retrieve user identities.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupUsersApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Retrieve User identities
  result = api_instance.user_id_identities_get(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupUsersApi->user_id_identities_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 

### Return type

[**Array&lt;Identity&gt;**](Identity.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## user_id_put

> user_id_put(id, user)

Update a User

This API allows to update a User.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupUsersApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
user = SigningTodayAPIClient::User.new # User | User replacing current object.

begin
  #Update a User
  api_instance.user_id_put(id, user)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupUsersApi->user_id_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **user** | [**User**](User.md)| User replacing current object. | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## user_id_role_put

> user_id_role_put(id, new_role)

Change the User role

This API allows to change the permissions associated to the users, (**capabilities**) according to predefined user roles. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupUsersApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
new_role = 'instructor' # String | The new **role** of the User. Allowed values are **admin**, **instructor**, **signer** 

begin
  #Change the User role
  api_instance.user_id_role_put(id, new_role)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupUsersApi->user_id_role_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **new_role** | **String**| The new **role** of the User. Allowed values are **admin**, **instructor**, **signer**  | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## users_get

> UsersGetResponse users_get(opts)

Retrieve Users

This allows to get the list of the Users of an Organization.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupUsersApi.new
opts = {
  top: 32, # Integer | A number of results to return. Applied after **$skip** 
  skip: 64, # Integer | An offset into the collection of results
  count: true, # Boolean | If true, the server includes the count of all the items in the response 
  order_by: '$orderBy=updatedAt', # String | An ordering definition (eg. $orderBy=updatedAt,desc)
  filter: '$filter=name==\"Milk\"' # String | A filter definition (eg. $filter=name == \"Milk\" or surname == \"Bread\")
}

begin
  #Retrieve Users
  result = api_instance.users_get(opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupUsersApi->users_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **top** | **Integer**| A number of results to return. Applied after **$skip**  | [optional] 
 **skip** | **Integer**| An offset into the collection of results | [optional] 
 **count** | **Boolean**| If true, the server includes the count of all the items in the response  | [optional] 
 **order_by** | **String**| An ordering definition (eg. $orderBy&#x3D;updatedAt,desc) | [optional] 
 **filter** | **String**| A filter definition (eg. $filter&#x3D;name &#x3D;&#x3D; \&quot;Milk\&quot; or surname &#x3D;&#x3D; \&quot;Bread\&quot;) | [optional] 

### Return type

[**UsersGetResponse**](UsersGetResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## users_groups_get

> UserGroupGetResponse users_groups_get(opts)

Retrieve UserGroups

This API allows to get the list of the UserGroups.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupUsersApi.new
opts = {
  top: 32, # Integer | A number of results to return. Applied after **$skip** 
  skip: 64, # Integer | An offset into the collection of results
  count: true, # Boolean | If true, the server includes the count of all the items in the response 
  order_by: '$orderBy=updatedAt', # String | An ordering definition (eg. $orderBy=updatedAt,desc)
  filter: '$filter=name==\"Milk\"' # String | A filter definition (eg. $filter=name == \"Milk\" or surname == \"Bread\")
}

begin
  #Retrieve UserGroups
  result = api_instance.users_groups_get(opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupUsersApi->users_groups_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **top** | **Integer**| A number of results to return. Applied after **$skip**  | [optional] 
 **skip** | **Integer**| An offset into the collection of results | [optional] 
 **count** | **Boolean**| If true, the server includes the count of all the items in the response  | [optional] 
 **order_by** | **String**| An ordering definition (eg. $orderBy&#x3D;updatedAt,desc) | [optional] 
 **filter** | **String**| A filter definition (eg. $filter&#x3D;name &#x3D;&#x3D; \&quot;Milk\&quot; or surname &#x3D;&#x3D; \&quot;Bread\&quot;) | [optional] 

### Return type

[**UserGroupGetResponse**](UserGroupGetResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## users_groups_post

> users_groups_post(user_group)

Create a new UserGroups

This API allows to create a new UserGroups.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupUsersApi.new
user_group = [SigningTodayAPIClient::UserGroup.new] # Array<UserGroup> | UserGroup list to be added.

begin
  #Create a new UserGroups
  api_instance.users_groups_post(user_group)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupUsersApi->users_groups_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_group** | [**Array&lt;UserGroup&gt;**](UserGroup.md)| UserGroup list to be added. | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## users_post

> String users_post(create_user_request)

Create a new User

This API allows to create a new User.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupUsersApi.new
create_user_request = SigningTodayAPIClient::CreateUserRequest.new # CreateUserRequest | 

begin
  #Create a new User
  result = api_instance.users_post(create_user_request)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupUsersApi->users_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_user_request** | [**CreateUserRequest**](CreateUserRequest.md)|  | 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

