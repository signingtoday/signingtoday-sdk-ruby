# SigningTodayAPIClient::BackofficeApi

All URIs are relative to *https://web.sandbox.signingtoday.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**organization_id_alfresco_sync_get**](BackofficeApi.md#organization_id_alfresco_sync_get) | **GET** /organization/{id}/alfrescoSync | Sync all completed DSTs on Alfresco
[**organization_id_alfresco_sync_post**](BackofficeApi.md#organization_id_alfresco_sync_post) | **POST** /organization/{id}/alfrescoSync | Sync all completed DSTs on Alfresco
[**organization_id_delete**](BackofficeApi.md#organization_id_delete) | **DELETE** /organization/{id} | Enable or disable an Organization account.
[**organization_id_get**](BackofficeApi.md#organization_id_get) | **GET** /organization/{id} | Retrieve info on one organization
[**organization_id_public_get**](BackofficeApi.md#organization_id_public_get) | **GET** /organization/public | Retrieve public resources
[**organization_id_put**](BackofficeApi.md#organization_id_put) | **PUT** /organization/{id} | Update info on one organization
[**organization_id_resource_get**](BackofficeApi.md#organization_id_resource_get) | **GET** /organization/{id}/resource | Get an organization resource
[**organization_id_resource_put**](BackofficeApi.md#organization_id_resource_put) | **PUT** /organization/{id}/resource | Create or overwrite an organization resource
[**organization_resource_id_delete**](BackofficeApi.md#organization_resource_id_delete) | **DELETE** /organization/{id}/resource | Delete an organization resource
[**organization_resources_get**](BackofficeApi.md#organization_resources_get) | **GET** /organization/{id}/resources | List all the organization resources
[**organization_tags_get**](BackofficeApi.md#organization_tags_get) | **GET** /organization/tags | Retrieve organization tags
[**organizations_get**](BackofficeApi.md#organizations_get) | **GET** /organizations | Get the list of organizations
[**organizations_post**](BackofficeApi.md#organizations_post) | **POST** /organizations | Create a new organization



## organization_id_alfresco_sync_get

> AlfrescoSync organization_id_alfresco_sync_get(id)

Sync all completed DSTs on Alfresco

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::BackofficeApi.new
id = 'test_id' # String | The value of the unique id

begin
  #Sync all completed DSTs on Alfresco
  result = api_instance.organization_id_alfresco_sync_get(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling BackofficeApi->organization_id_alfresco_sync_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The value of the unique id | 

### Return type

[**AlfrescoSync**](AlfrescoSync.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## organization_id_alfresco_sync_post

> organization_id_alfresco_sync_post(id, alfresco_sync)

Sync all completed DSTs on Alfresco

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::BackofficeApi.new
id = 'test_id' # String | The value of the unique id
alfresco_sync = SigningTodayAPIClient::AlfrescoSync.new # AlfrescoSync | Domain associated to the account.

begin
  #Sync all completed DSTs on Alfresco
  api_instance.organization_id_alfresco_sync_post(id, alfresco_sync)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling BackofficeApi->organization_id_alfresco_sync_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The value of the unique id | 
 **alfresco_sync** | [**AlfrescoSync**](AlfrescoSync.md)| Domain associated to the account. | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## organization_id_delete

> organization_id_delete(id, opts)

Enable or disable an Organization account.

Enable or disable an Organization.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::BackofficeApi.new
id = 'test_id' # String | The value of the unique id
opts = {
  enabled: false # Boolean | New status to set
}

begin
  #Enable or disable an Organization account.
  api_instance.organization_id_delete(id, opts)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling BackofficeApi->organization_id_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The value of the unique id | 
 **enabled** | **Boolean**| New status to set | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## organization_id_get

> Organization organization_id_get(id)

Retrieve info on one organization

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::BackofficeApi.new
id = 'test_id' # String | The value of the unique id

begin
  #Retrieve info on one organization
  result = api_instance.organization_id_get(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling BackofficeApi->organization_id_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The value of the unique id | 

### Return type

[**Organization**](Organization.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## organization_id_public_get

> File organization_id_public_get(res, opts)

Retrieve public resources

### Example

```ruby
# load the gem
require 'signing_today_client'

api_instance = SigningTodayAPIClient::BackofficeApi.new
res = 'logo' # String | resource id
opts = {
  id: '05ea656f-df69-49b1-a12b-9bf640c427c2' # String | organization id
}

begin
  #Retrieve public resources
  result = api_instance.organization_id_public_get(res, opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling BackofficeApi->organization_id_public_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **res** | **String**| resource id | 
 **id** | **String**| organization id | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, */*


## organization_id_put

> organization_id_put(id, opts)

Update info on one organization

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::BackofficeApi.new
id = 'test_id' # String | The value of the unique id
opts = {
  organization: SigningTodayAPIClient::Organization.new # Organization | 
}

begin
  #Update info on one organization
  api_instance.organization_id_put(id, opts)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling BackofficeApi->organization_id_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The value of the unique id | 
 **organization** | [**Organization**](Organization.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## organization_id_resource_get

> File organization_id_resource_get(id, res_path)

Get an organization resource

Get an organization resource

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::BackofficeApi.new
id = 'test_id' # String | The value of the unique id
res_path = '05ea656f-df69-49b1-a12b-9bf640c427c2' # String | 

begin
  #Get an organization resource
  result = api_instance.organization_id_resource_get(id, res_path)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling BackofficeApi->organization_id_resource_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The value of the unique id | 
 **res_path** | **String**|  | 

### Return type

**File**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, */*


## organization_id_resource_put

> organization_id_resource_put(id, res_path, file)

Create or overwrite an organization resource

Create or overwrite an organization resource

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::BackofficeApi.new
id = 'test_id' # String | The value of the unique id
res_path = '05ea656f-df69-49b1-a12b-9bf640c427c2' # String | 
file = File.new('/path/to/file') # File | The file to upload.

begin
  #Create or overwrite an organization resource
  api_instance.organization_id_resource_put(id, res_path, file)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling BackofficeApi->organization_id_resource_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The value of the unique id | 
 **res_path** | **String**|  | 
 **file** | **File**| The file to upload. | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: */*


## organization_resource_id_delete

> organization_resource_id_delete(id, res_path)

Delete an organization resource

Deletes a Resource.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::BackofficeApi.new
id = 'test_id' # String | The value of the unique id
res_path = '05ea656f-df69-49b1-a12b-9bf640c427c2' # String | 

begin
  #Delete an organization resource
  api_instance.organization_resource_id_delete(id, res_path)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling BackofficeApi->organization_resource_id_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The value of the unique id | 
 **res_path** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## organization_resources_get

> Array&lt;String&gt; organization_resources_get(id)

List all the organization resources

List all the organization resources.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::BackofficeApi.new
id = 'test_id' # String | The value of the unique id

begin
  #List all the organization resources
  result = api_instance.organization_resources_get(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling BackofficeApi->organization_resources_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The value of the unique id | 

### Return type

**Array&lt;String&gt;**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## organization_tags_get

> Array&lt;String&gt; organization_tags_get

Retrieve organization tags

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::BackofficeApi.new

begin
  #Retrieve organization tags
  result = api_instance.organization_tags_get
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling BackofficeApi->organization_tags_get: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## organizations_get

> OrganizationsGetResponse organizations_get(opts)

Get the list of organizations

Get the list of organizations

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::BackofficeApi.new
opts = {
  top: 32, # Integer | A number of results to return. Applied after **$skip** 
  skip: 64, # Integer | An offset into the collection of results
  count: true, # Boolean | If true, the server includes the count of all the items in the response 
  filter: '$filter=name==\"Milk\"' # String | A filter definition (eg. $filter=name == \"Milk\" or surname == \"Bread\")
}

begin
  #Get the list of organizations
  result = api_instance.organizations_get(opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling BackofficeApi->organizations_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **top** | **Integer**| A number of results to return. Applied after **$skip**  | [optional] 
 **skip** | **Integer**| An offset into the collection of results | [optional] 
 **count** | **Boolean**| If true, the server includes the count of all the items in the response  | [optional] 
 **filter** | **String**| A filter definition (eg. $filter&#x3D;name &#x3D;&#x3D; \&quot;Milk\&quot; or surname &#x3D;&#x3D; \&quot;Bread\&quot;) | [optional] 

### Return type

[**OrganizationsGetResponse**](OrganizationsGetResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## organizations_post

> organizations_post(opts)

Create a new organization

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::BackofficeApi.new
opts = {
  organization: SigningTodayAPIClient::Organization.new # Organization | 
}

begin
  #Create a new organization
  api_instance.organizations_post(opts)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling BackofficeApi->organizations_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**Organization**](Organization.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

