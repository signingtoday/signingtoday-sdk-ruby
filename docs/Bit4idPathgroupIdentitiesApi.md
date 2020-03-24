# SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi

All URIs are relative to *https://sandbox.signingtoday.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**associate_appearance**](Bit4idPathgroupIdentitiesApi.md#associate_appearance) | **POST** /{organization-id}/identities/{identity-id}/appearance | Associate an appearance to an identity
[**associate_identity**](Bit4idPathgroupIdentitiesApi.md#associate_identity) | **POST** /{organization-id}/users/{user-id}/wallet | Associate to an user an already existing identity
[**create_token_from_identity**](Bit4idPathgroupIdentitiesApi.md#create_token_from_identity) | **POST** /{organization-id}/identities/create/token | Create an identity from token
[**delete_appearance**](Bit4idPathgroupIdentitiesApi.md#delete_appearance) | **DELETE** /{organization-id}/identities/{identity-id}/appearance | Delete the appearance of an identity
[**delete_enrollment_request**](Bit4idPathgroupIdentitiesApi.md#delete_enrollment_request) | **DELETE** /{organization-id}/identity-requests/{enrollment-id} | Delete an enrollment request
[**delete_identity**](Bit4idPathgroupIdentitiesApi.md#delete_identity) | **DELETE** /{organization-id}/identities/{identity-id} | Delete an identity
[**get_enrollment_request**](Bit4idPathgroupIdentitiesApi.md#get_enrollment_request) | **GET** /{organization-id}/identity-requests/{enrollment-id} | Get information about an enrollment request
[**get_identity**](Bit4idPathgroupIdentitiesApi.md#get_identity) | **GET** /{organization-id}/identities/{identity-id} | Get information about an identity
[**list_enrollment_requests**](Bit4idPathgroupIdentitiesApi.md#list_enrollment_requests) | **GET** /{organization-id}/identity-requests | Enumerate the enrollment requests of an organization
[**list_identities**](Bit4idPathgroupIdentitiesApi.md#list_identities) | **GET** /{organization-id}/identities | Enumerate the identities of an organization
[**list_user_enrollments**](Bit4idPathgroupIdentitiesApi.md#list_user_enrollments) | **GET** /{organization-id}/users/{user-id}/identity-requests | List the enrollments of an user
[**list_user_identities**](Bit4idPathgroupIdentitiesApi.md#list_user_identities) | **GET** /{organization-id}/users/{user-id}/wallet | Enumerate the identities of an user
[**renew_identity**](Bit4idPathgroupIdentitiesApi.md#renew_identity) | **POST** /{organization-id}/identity-requests/{enrollment-id}/renew | Renew an Identity
[**request_enrollment**](Bit4idPathgroupIdentitiesApi.md#request_enrollment) | **POST** /{organization-id}/enroll | Submit an enrollment request



## associate_appearance

> InlineResponse2011 associate_appearance(organization_id, identity_id, inline_object)

Associate an appearance to an identity

Associate a signature appearance to an already existing identity through an url to an image. This appearance will be displayed on the document after the signature. 

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

api_instance = SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
identity_id = SigningTodayAPIClient::Id.new # Id | The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
inline_object = SigningTodayAPIClient::InlineObject.new # InlineObject | 

begin
  #Associate an appearance to an identity
  result = api_instance.associate_appearance(organization_id, identity_id, inline_object)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupIdentitiesApi->associate_appearance: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **identity_id** | [**Id**](.md)| The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity  | 
 **inline_object** | [**InlineObject**](InlineObject.md)|  | 

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## associate_identity

> InlineResponse2011 associate_identity(organization_id, user_id, identity_association)

Associate to an user an already existing identity

Associate to an user of the organization an already existing identity of a provider. The _provider_data_ field is an object and is different for each provider. The minimum set of information to provide as provider_data is the following:   - **aruba**     - _auth_domain_ : string     - _username_ : string     - _password_ : string   - **aruba-auto**     - _auth_domain_ : string     - _username_ : string     - _password_ : string   - **infocert**     - _username_ : string     - _password_ : string   - **namirial**     - _id_titolare_ : string     - _id_otp_ : string     - _username_ : string     - _password_ : string 

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

api_instance = SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
user_id = SigningTodayAPIClient::Id.new # Id | The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
identity_association = SigningTodayAPIClient::IdentityAssociation.new # IdentityAssociation | Provider data to associate

begin
  #Associate to an user an already existing identity
  result = api_instance.associate_identity(organization_id, user_id, identity_association)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupIdentitiesApi->associate_identity: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **user_id** | [**Id**](.md)| The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user  | 
 **identity_association** | [**IdentityAssociation**](IdentityAssociation.md)| Provider data to associate | 

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_token_from_identity

> InlineResponse2012 create_token_from_identity(organization_id, create_identityby_token)

Create an identity from token

This API allows to create an identity from a token. 

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

api_instance = SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
create_identityby_token = SigningTodayAPIClient::CreateIdentitybyToken.new # CreateIdentitybyToken | Body of the request to create an identity from a token

begin
  #Create an identity from token
  result = api_instance.create_token_from_identity(organization_id, create_identityby_token)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupIdentitiesApi->create_token_from_identity: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **create_identityby_token** | [**CreateIdentitybyToken**](CreateIdentitybyToken.md)| Body of the request to create an identity from a token | 

### Return type

[**InlineResponse2012**](InlineResponse2012.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_appearance

> InlineResponse2011 delete_appearance(organization_id, identity_id)

Delete the appearance of an identity

This API allows to delete the appearance associated to an identity. 

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

api_instance = SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
identity_id = SigningTodayAPIClient::Id.new # Id | The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 

begin
  #Delete the appearance of an identity
  result = api_instance.delete_appearance(organization_id, identity_id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupIdentitiesApi->delete_appearance: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **identity_id** | [**Id**](.md)| The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity  | 

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_enrollment_request

> InlineResponse2012 delete_enrollment_request(organization_id, enrollment_id)

Delete an enrollment request

This API allows to delete an enrollment request. 

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

api_instance = SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
enrollment_id = SigningTodayAPIClient::Id.new # Id | The **enrollment-id** is the uuid code that identifies a specific enrollment request 

begin
  #Delete an enrollment request
  result = api_instance.delete_enrollment_request(organization_id, enrollment_id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupIdentitiesApi->delete_enrollment_request: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **enrollment_id** | [**Id**](.md)| The **enrollment-id** is the uuid code that identifies a specific enrollment request  | 

### Return type

[**InlineResponse2012**](InlineResponse2012.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_identity

> InlineResponse2006 delete_identity(organization_id, identity_id)

Delete an identity

This API allows to delete an identity of an user. 

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

api_instance = SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
identity_id = SigningTodayAPIClient::Id.new # Id | The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 

begin
  #Delete an identity
  result = api_instance.delete_identity(organization_id, identity_id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupIdentitiesApi->delete_identity: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **identity_id** | [**Id**](.md)| The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity  | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_enrollment_request

> InlineResponse2007 get_enrollment_request(organization_id, enrollment_id)

Get information about an enrollment request

This API allows to get information about an enrollment request. 

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

api_instance = SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
enrollment_id = SigningTodayAPIClient::Id.new # Id | The **enrollment-id** is the uuid code that identifies a specific enrollment request 

begin
  #Get information about an enrollment request
  result = api_instance.get_enrollment_request(organization_id, enrollment_id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupIdentitiesApi->get_enrollment_request: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **enrollment_id** | [**Id**](.md)| The **enrollment-id** is the uuid code that identifies a specific enrollment request  | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_identity

> InlineResponse2005 get_identity(organization_id, identity_id, opts)

Get information about an identity

This API allows to get all the information of an identity. 

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

api_instance = SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
identity_id = SigningTodayAPIClient::Id.new # Id | The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
opts = {
  where_order: 'where_first_name' # String | The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \"**-**\" in front of the value indicates descending order), then the second value and so on
}

begin
  #Get information about an identity
  result = api_instance.get_identity(organization_id, identity_id, opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupIdentitiesApi->get_identity: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **identity_id** | [**Id**](.md)| The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity  | 
 **where_order** | **String**| The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_enrollment_requests

> InlineResponse2003 list_enrollment_requests(organization_id, opts)

Enumerate the enrollment requests of an organization

This API allows to enumerate the enrollment requests of an organization. 

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

api_instance = SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
opts = {
  where_provider: 'sms', # String | Returns the identity requests that have been issued by the specified provider
  where_user: 'msa', # String | Returns the identity requests of the specified user, searched by its id
  where_first_name: 'John', # String | Returns the identity requests of the users that have the specified first name
  where_last_name: 'Doe', # String | Returns the identity requests of the users that have the specified last name
  where_registered_by: 'fba', # String | Returns the identity requests registered by this user
  where_fiscal_code: 'MLLSNT82P65Z404U', # String | Returns the identity requests have the specified fiscal code
  page: 1, # Integer | Restricts the search to the chosen page
  count: 100, # Integer | Sets the number of users per page to display
  where_order: 'where_first_name' # String | The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \"**-**\" in front of the value indicates descending order), then the second value and so on
}

begin
  #Enumerate the enrollment requests of an organization
  result = api_instance.list_enrollment_requests(organization_id, opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupIdentitiesApi->list_enrollment_requests: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **where_provider** | **String**| Returns the identity requests that have been issued by the specified provider | [optional] 
 **where_user** | **String**| Returns the identity requests of the specified user, searched by its id | [optional] 
 **where_first_name** | **String**| Returns the identity requests of the users that have the specified first name | [optional] 
 **where_last_name** | **String**| Returns the identity requests of the users that have the specified last name | [optional] 
 **where_registered_by** | **String**| Returns the identity requests registered by this user | [optional] 
 **where_fiscal_code** | **String**| Returns the identity requests have the specified fiscal code | [optional] 
 **page** | **Integer**| Restricts the search to the chosen page | [optional] 
 **count** | **Integer**| Sets the number of users per page to display | [optional] [default to 100]
 **where_order** | **String**| The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_identities

> InlineResponse2002 list_identities(organization_id, opts)

Enumerate the identities of an organization

This API allows to enumerate all the users of an organization. It is possible to filter the data using the supported _django lookups_. 

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

api_instance = SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
opts = {
  where_provider: 'sms', # String | Returns the identities that have been issued by the specified provider
  where_user: 'msa', # String | Returns the identities of the specified user, searched by its id
  where_first_name: 'John', # String | Returns the identities of the users that have the specified first name
  where_last_name: 'Doe', # String | Returns the identities of the users that have the specified last name
  where_registered_by: 'fba', # String | Returns the identities registered by this user
  where_fiscal_code: 'MLLSNT82P65Z404U', # String | Returns the identities that have the specified fiscal code
  page: 1, # Integer | Restricts the search to the chosen page
  count: 100, # Integer | Sets the number of users per page to display
  where_order: 'where_first_name' # String | The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \"**-**\" in front of the value indicates descending order), then the second value and so on
}

begin
  #Enumerate the identities of an organization
  result = api_instance.list_identities(organization_id, opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupIdentitiesApi->list_identities: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **where_provider** | **String**| Returns the identities that have been issued by the specified provider | [optional] 
 **where_user** | **String**| Returns the identities of the specified user, searched by its id | [optional] 
 **where_first_name** | **String**| Returns the identities of the users that have the specified first name | [optional] 
 **where_last_name** | **String**| Returns the identities of the users that have the specified last name | [optional] 
 **where_registered_by** | **String**| Returns the identities registered by this user | [optional] 
 **where_fiscal_code** | **String**| Returns the identities that have the specified fiscal code | [optional] 
 **page** | **Integer**| Restricts the search to the chosen page | [optional] 
 **count** | **Integer**| Sets the number of users per page to display | [optional] [default to 100]
 **where_order** | **String**| The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_enrollments

> InlineResponse2003 list_user_enrollments(organization_id, user_id, opts)

List the enrollments of an user

This API allows to list all the enrollments of an user. 

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

api_instance = SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
user_id = SigningTodayAPIClient::Id.new # Id | The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
opts = {
  page: 1, # Integer | Restricts the search to the chosen page
  count: 100, # Integer | Sets the number of users per page to display
  where_order: 'where_first_name' # String | The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \"**-**\" in front of the value indicates descending order), then the second value and so on
}

begin
  #List the enrollments of an user
  result = api_instance.list_user_enrollments(organization_id, user_id, opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupIdentitiesApi->list_user_enrollments: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **user_id** | [**Id**](.md)| The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user  | 
 **page** | **Integer**| Restricts the search to the chosen page | [optional] 
 **count** | **Integer**| Sets the number of users per page to display | [optional] [default to 100]
 **where_order** | **String**| The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_identities

> InlineResponse2002 list_user_identities(organization_id, user_id, opts)

Enumerate the identities of an user

This API allows to enumerate all the identities of an user, which are located in its wallet. 

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

api_instance = SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
user_id = SigningTodayAPIClient::Id.new # Id | The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
opts = {
  page: 1, # Integer | Restricts the search to the chosen page
  count: 100, # Integer | Sets the number of users per page to display
  where_order: 'where_first_name' # String | The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \"**-**\" in front of the value indicates descending order), then the second value and so on
}

begin
  #Enumerate the identities of an user
  result = api_instance.list_user_identities(organization_id, user_id, opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupIdentitiesApi->list_user_identities: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **user_id** | [**Id**](.md)| The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user  | 
 **page** | **Integer**| Restricts the search to the chosen page | [optional] 
 **count** | **Integer**| Sets the number of users per page to display | [optional] [default to 100]
 **where_order** | **String**| The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## renew_identity

> InlineResponse2007 renew_identity(organization_id, enrollment_id, inline_object1)

Renew an Identity

This API allows to renew an Identity of a user. 

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

api_instance = SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
enrollment_id = SigningTodayAPIClient::Id.new # Id | The **enrollment-id** is the uuid code that identifies a specific enrollment request 
inline_object1 = SigningTodayAPIClient::InlineObject1.new # InlineObject1 | 

begin
  #Renew an Identity
  result = api_instance.renew_identity(organization_id, enrollment_id, inline_object1)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupIdentitiesApi->renew_identity: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **enrollment_id** | [**Id**](.md)| The **enrollment-id** is the uuid code that identifies a specific enrollment request  | 
 **inline_object1** | [**InlineObject1**](InlineObject1.md)|  | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## request_enrollment

> InlineResponse2007 request_enrollment(organization_id, identity_request)

Submit an enrollment request

This API allows to submit an enrollment request. The user of the request will be created if it does not exists already. 

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

api_instance = SigningTodayAPIClient::Bit4idPathgroupIdentitiesApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
identity_request = SigningTodayAPIClient::IdentityRequest.new # IdentityRequest | The enrollment request to submit

begin
  #Submit an enrollment request
  result = api_instance.request_enrollment(organization_id, identity_request)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupIdentitiesApi->request_enrollment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **identity_request** | [**IdentityRequest**](IdentityRequest.md)| The enrollment request to submit | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

