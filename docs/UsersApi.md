# SigningTodayAPIClient::UsersApi

All URIs are relative to *https://sandbox.signingtoday.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UsersApi.md#create_user) | **POST** /{organization-id}/users | Create a user of the organization
[**get_user**](UsersApi.md#get_user) | **GET** /{organization-id}/users/{user-id} | Get information about an user
[**list_users**](UsersApi.md#list_users) | **GET** /{organization-id}/users | Enumerate the users of an organization
[**update_user**](UsersApi.md#update_user) | **PUT** /{organization-id}/users/{user-id} | Edit one or more user properties



## create_user

> InlineResponse201 create_user(organization_id, create_user)

Create a user of the organization

This API allows to create a new user of the organization. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SigningTodayAPIClient::UsersApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
create_user = SigningTodayAPIClient::CreateUser.new # CreateUser | The new user object to create

begin
  #Create a user of the organization
  result = api_instance.create_user(organization_id, create_user)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling UsersApi->create_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **create_user** | [**CreateUser**](CreateUser.md)| The new user object to create | 

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_user

> InlineResponse201 get_user(organization_id, user_id)

Get information about an user

This API allows to get information about an user. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SigningTodayAPIClient::UsersApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
user_id = SigningTodayAPIClient::Id.new # Id | The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 

begin
  #Get information about an user
  result = api_instance.get_user(organization_id, user_id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling UsersApi->get_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **user_id** | [**Id**](.md)| The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user  | 

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> InlineResponse2001 list_users(organization_id, opts)

Enumerate the users of an organization

This API allows to enumerate the users of an organization. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SigningTodayAPIClient::UsersApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
opts = {
  where_membership_id: 'jdo', # String | Returns the users that have the specified id
  where_email: 'test@mail.com', # String | Returns the users that have the specified email
  where_last_name: 'Doe', # String | Returns the users that have the specified last name
  where_first_name: 'John', # String | Returns the users that have the specified first name
  where_automatic: false, # Boolean | If set up to **true** returns automatic users only, otherwise returns non automatic users only
  where_rao: false, # Boolean | If set up to **true** returns rao users only, otherwise returns non rao users only
  page: 1, # Integer | Restricts the search to the chosen page
  count: 100, # Integer | Sets the number of users per page to display
  where_order: 'where_first_name' # String | The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \"**-**\" in front of the value indicates descending order), then the second value and so on
}

begin
  #Enumerate the users of an organization
  result = api_instance.list_users(organization_id, opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling UsersApi->list_users: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **where_membership_id** | **String**| Returns the users that have the specified id | [optional] 
 **where_email** | **String**| Returns the users that have the specified email | [optional] 
 **where_last_name** | **String**| Returns the users that have the specified last name | [optional] 
 **where_first_name** | **String**| Returns the users that have the specified first name | [optional] 
 **where_automatic** | **Boolean**| If set up to **true** returns automatic users only, otherwise returns non automatic users only | [optional] 
 **where_rao** | **Boolean**| If set up to **true** returns rao users only, otherwise returns non rao users only | [optional] 
 **page** | **Integer**| Restricts the search to the chosen page | [optional] 
 **count** | **Integer**| Sets the number of users per page to display | [optional] [default to 100]
 **where_order** | **String**| The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> InlineResponse201 update_user(organization_id, user_id, update_user)

Edit one or more user properties

This API allows to edit one or more user properties. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SigningTodayAPIClient::UsersApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
user_id = SigningTodayAPIClient::Id.new # Id | The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
update_user = SigningTodayAPIClient::UpdateUser.new # UpdateUser | User properties to be edited

begin
  #Edit one or more user properties
  result = api_instance.update_user(organization_id, user_id, update_user)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling UsersApi->update_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **user_id** | [**Id**](.md)| The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user  | 
 **update_user** | [**UpdateUser**](UpdateUser.md)| User properties to be edited | 

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

