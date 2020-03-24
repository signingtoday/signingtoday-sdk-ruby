# SigningTodayAPIClient::Bit4idPathgroupResourcesApi

All URIs are relative to *https://web.sandbox.signingtoday.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_st_id_resources_get**](Bit4idPathgroupResourcesApi.md#d_st_id_resources_get) | **GET** /DST/{id}/resources | Retrieve all resources associated to a DST
[**d_st_id_resources_patch**](Bit4idPathgroupResourcesApi.md#d_st_id_resources_patch) | **PATCH** /DST/{id}/resources | Append a new resource to a DST
[**d_st_resource_id_delete**](Bit4idPathgroupResourcesApi.md#d_st_resource_id_delete) | **DELETE** /DST/resource/{id} | Delete a Resource
[**resource_id_get**](Bit4idPathgroupResourcesApi.md#resource_id_get) | **GET** /resource/{id} | Retrieve a Resource
[**resource_id_put**](Bit4idPathgroupResourcesApi.md#resource_id_put) | **PUT** /resource/{id} | Update a Resource
[**user_id_identity_identity_id_appearance_delete**](Bit4idPathgroupResourcesApi.md#user_id_identity_identity_id_appearance_delete) | **DELETE** /user/{id}/identity/{identity-id}/appearance | Delete a user appearance resource.
[**user_id_identity_identity_id_appearance_get**](Bit4idPathgroupResourcesApi.md#user_id_identity_identity_id_appearance_get) | **GET** /user/{id}/identity/{identity-id}/appearance | Download an identity appearance resource
[**user_id_identity_identity_id_appearance_post**](Bit4idPathgroupResourcesApi.md#user_id_identity_identity_id_appearance_post) | **POST** /user/{id}/identity/{identity-id}/appearance | Add a graphical appearance to a user&#39;s identity



## d_st_id_resources_get

> File d_st_id_resources_get(id)

Retrieve all resources associated to a DST

This API allows to retrieve all resources associated to a DST.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupResourcesApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Retrieve all resources associated to a DST
  result = api_instance.d_st_id_resources_get(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupResourcesApi->d_st_id_resources_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 

### Return type

**File**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, */*


## d_st_id_resources_patch

> DigitalSignatureTransaction d_st_id_resources_patch(id, file, filename, resource_type, opts)

Append a new resource to a DST

This API allows to append a new Resource to a DST.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupResourcesApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
file = File.new('/path/to/file') # File | The file to upload
filename = 'filename_example' # String | The name of the file
resource_type = 'resource_type_example' # String | 
opts = {
  title: 'title_example' # String | User-defined title of the resource.
}

begin
  #Append a new resource to a DST
  result = api_instance.d_st_id_resources_patch(id, file, filename, resource_type, opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupResourcesApi->d_st_id_resources_patch: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **file** | **File**| The file to upload | 
 **filename** | **String**| The name of the file | 
 **resource_type** | **String**|  | 
 **title** | **String**| User-defined title of the resource. | [optional] 

### Return type

[**DigitalSignatureTransaction**](DigitalSignatureTransaction.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, */*


## d_st_resource_id_delete

> DigitalSignatureTransaction d_st_resource_id_delete(id)

Delete a Resource

This API allows to delete a Resource.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupResourcesApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Delete a Resource
  result = api_instance.d_st_resource_id_delete(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupResourcesApi->d_st_resource_id_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 

### Return type

[**DigitalSignatureTransaction**](DigitalSignatureTransaction.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## resource_id_get

> File resource_id_get(id)

Retrieve a Resource

This API allows to retrieve a Resource.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupResourcesApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Retrieve a Resource
  result = api_instance.resource_id_get(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupResourcesApi->resource_id_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 

### Return type

**File**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, */*


## resource_id_put

> resource_id_put(id, lf_resource)

Update a Resource

This API allows to update a Resource.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupResourcesApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
lf_resource = SigningTodayAPIClient::LFResource.new # LFResource | Resource replacing current object.

begin
  #Update a Resource
  api_instance.resource_id_put(id, lf_resource)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupResourcesApi->resource_id_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **lf_resource** | [**LFResource**](LFResource.md)| Resource replacing current object. | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## user_id_identity_identity_id_appearance_delete

> user_id_identity_identity_id_appearance_delete(id, identity_id)

Delete a user appearance resource.

This API allows to delete an identity appearance resource.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupResourcesApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
identity_id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The unique id of the _Identity_

begin
  #Delete a user appearance resource.
  api_instance.user_id_identity_identity_id_appearance_delete(id, identity_id)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupResourcesApi->user_id_identity_identity_id_appearance_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **identity_id** | [**String**](.md)| The unique id of the _Identity_ | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## user_id_identity_identity_id_appearance_get

> File user_id_identity_identity_id_appearance_get(id, identity_id)

Download an identity appearance resource

This API allows to get the identity appearance resource.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupResourcesApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
identity_id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The unique id of the _Identity_

begin
  #Download an identity appearance resource
  result = api_instance.user_id_identity_identity_id_appearance_get(id, identity_id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupResourcesApi->user_id_identity_identity_id_appearance_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **identity_id** | [**String**](.md)| The unique id of the _Identity_ | 

### Return type

**File**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, */*


## user_id_identity_identity_id_appearance_post

> LFResource user_id_identity_identity_id_appearance_post(id, identity_id, file, filename, resource_type, opts)

Add a graphical appearance to a user's identity

This API allows to add a graphical appearance to the identity of a user.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupResourcesApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
identity_id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The unique id of the _Identity_
file = File.new('/path/to/file') # File | The path of the file to upload
filename = 'filename_example' # String | The name of the file
resource_type = 'resource_type_example' # String | The type of the resource
opts = {
  title: 'title_example' # String | User-defined title of the resource
}

begin
  #Add a graphical appearance to a user's identity
  result = api_instance.user_id_identity_identity_id_appearance_post(id, identity_id, file, filename, resource_type, opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupResourcesApi->user_id_identity_identity_id_appearance_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **identity_id** | [**String**](.md)| The unique id of the _Identity_ | 
 **file** | **File**| The path of the file to upload | 
 **filename** | **String**| The name of the file | 
 **resource_type** | **String**| The type of the resource | 
 **title** | **String**| User-defined title of the resource | [optional] 

### Return type

[**LFResource**](LFResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, */*

