# SigningTodayAPIClient::DigitalSignatureTransactionsApi

All URIs are relative to *https://web.sandbox.signingtoday.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_s_ts_get**](DigitalSignatureTransactionsApi.md#d_s_ts_get) | **GET** /DSTs | Retrieve DSTs
[**d_s_ts_post**](DigitalSignatureTransactionsApi.md#d_s_ts_post) | **POST** /DSTs | Create a new DST
[**d_st_id_audit_get**](DigitalSignatureTransactionsApi.md#d_st_id_audit_get) | **GET** /DST/{id}/audit | Retrieve the audit records associated to the DST
[**d_st_id_delete**](DigitalSignatureTransactionsApi.md#d_st_id_delete) | **DELETE** /DST/{id} | Delete a DST
[**d_st_id_fill_patch**](DigitalSignatureTransactionsApi.md#d_st_id_fill_patch) | **PATCH** /DST/{id}/fill | Fill a form of a DST
[**d_st_id_get**](DigitalSignatureTransactionsApi.md#d_st_id_get) | **GET** /DST/{id} | Retrieve a DST
[**d_st_id_instantiate_post**](DigitalSignatureTransactionsApi.md#d_st_id_instantiate_post) | **POST** /DST/{id}/instantiate | Instantiate a DST from a template
[**d_st_id_modify_post**](DigitalSignatureTransactionsApi.md#d_st_id_modify_post) | **POST** /DST/{id}/modify | Modify a published DST template
[**d_st_id_notify_post**](DigitalSignatureTransactionsApi.md#d_st_id_notify_post) | **POST** /DST/{id}/notify | Send notifications for a DST
[**d_st_id_publish_post**](DigitalSignatureTransactionsApi.md#d_st_id_publish_post) | **POST** /DST/{id}/publish | Publish a DST
[**d_st_id_put**](DigitalSignatureTransactionsApi.md#d_st_id_put) | **PUT** /DST/{id} | Update a DST
[**d_st_id_replace_post**](DigitalSignatureTransactionsApi.md#d_st_id_replace_post) | **POST** /DST/{id}/replace | Replace a rejected DST
[**d_st_id_sign_doc_id_sign_id_get**](DigitalSignatureTransactionsApi.md#d_st_id_sign_doc_id_sign_id_get) | **GET** /DST/{id}/sign/{docId}/{signId} | Return the address for signing
[**d_st_id_templatize_post**](DigitalSignatureTransactionsApi.md#d_st_id_templatize_post) | **POST** /DST/{id}/templatize | Create a template from a DST



## d_s_ts_get

> DSTsGetResponse d_s_ts_get(opts)

Retrieve DSTs

This API allows to list the DSTs of an organization.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DigitalSignatureTransactionsApi.new
opts = {
  template: false, # Boolean | Select templates or instances
  user_id: '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4', # String | Select the objects relative to the user specified by the parameter. If not specified will be used the id of the current authenticated user
  top: 32, # Integer | A number of results to return. Applied after **$skip** 
  skip: 64, # Integer | An offset into the collection of results
  count: true, # Boolean | If true, the server includes the count of all the items in the response 
  order_by: '$orderBy=updatedAt', # String | An ordering definition (eg. $orderBy=updatedAt,desc)
  filter: '$filter=name==\"Milk\"' # String | A filter definition (eg. $filter=name == \"Milk\" or surname == \"Bread\")
}

begin
  #Retrieve DSTs
  result = api_instance.d_s_ts_get(opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DigitalSignatureTransactionsApi->d_s_ts_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | **Boolean**| Select templates or instances | [optional] [default to false]
 **user_id** | [**String**](.md)| Select the objects relative to the user specified by the parameter. If not specified will be used the id of the current authenticated user | [optional] 
 **top** | **Integer**| A number of results to return. Applied after **$skip**  | [optional] 
 **skip** | **Integer**| An offset into the collection of results | [optional] 
 **count** | **Boolean**| If true, the server includes the count of all the items in the response  | [optional] 
 **order_by** | **String**| An ordering definition (eg. $orderBy&#x3D;updatedAt,desc) | [optional] 
 **filter** | **String**| A filter definition (eg. $filter&#x3D;name &#x3D;&#x3D; \&quot;Milk\&quot; or surname &#x3D;&#x3D; \&quot;Bread\&quot;) | [optional] 

### Return type

[**DSTsGetResponse**](DSTsGetResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## d_s_ts_post

> DigitalSignatureTransaction d_s_ts_post(digital_signature_transaction)

Create a new DST

This API allows to creates a new DST. A DST is created in the Draft state and then updated using PUT. Example of creation request:  ``` {   status: \"draft\",   publishedAt: null,   tags: [],   urgent: false,   template: false } ```  To add documents use the Resources Patch endpoint `/DST/{id}/resources`.  If the *template* flag is set true the DST is a Template. If the *publicTemplate* flag is set true the Template is visible to all users with rights to create a DST.  A DST is made made available to users using *publish* end point. A template generates a DST with the *instantiate* endpoint. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DigitalSignatureTransactionsApi.new
digital_signature_transaction = SigningTodayAPIClient::DigitalSignatureTransaction.new # DigitalSignatureTransaction | DST to append to the current resources.

begin
  #Create a new DST
  result = api_instance.d_s_ts_post(digital_signature_transaction)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DigitalSignatureTransactionsApi->d_s_ts_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **digital_signature_transaction** | [**DigitalSignatureTransaction**](DigitalSignatureTransaction.md)| DST to append to the current resources. | 

### Return type

[**DigitalSignatureTransaction**](DigitalSignatureTransaction.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## d_st_id_audit_get

> Array&lt;AuditRecord&gt; d_st_id_audit_get(id)

Retrieve the audit records associated to the DST

This API allows to retrieves the audit records associated to the DST.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DigitalSignatureTransactionsApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Retrieve the audit records associated to the DST
  result = api_instance.d_st_id_audit_get(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DigitalSignatureTransactionsApi->d_st_id_audit_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 

### Return type

[**Array&lt;AuditRecord&gt;**](AuditRecord.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## d_st_id_delete

> d_st_id_delete(id)

Delete a DST

This API allows to delete a DST. Actually the DST is marked as deleted thus not displayed anymore into the organization, but it will still be present in the database.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DigitalSignatureTransactionsApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Delete a DST
  api_instance.d_st_id_delete(id)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DigitalSignatureTransactionsApi->d_st_id_delete: #{e}"
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


## d_st_id_fill_patch

> DigitalSignatureTransaction d_st_id_fill_patch(id, fillable_form)

Fill a form of a DST

This API allows to fill a form of a DST.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DigitalSignatureTransactionsApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
fillable_form = SigningTodayAPIClient::FillableForm.new # FillableForm | The form filled by the user.

begin
  #Fill a form of a DST
  result = api_instance.d_st_id_fill_patch(id, fillable_form)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DigitalSignatureTransactionsApi->d_st_id_fill_patch: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **fillable_form** | [**FillableForm**](FillableForm.md)| The form filled by the user. | 

### Return type

[**DigitalSignatureTransaction**](DigitalSignatureTransaction.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## d_st_id_get

> DigitalSignatureTransaction d_st_id_get(id)

Retrieve a DST

This API allows to retrieve a DST.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DigitalSignatureTransactionsApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Retrieve a DST
  result = api_instance.d_st_id_get(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DigitalSignatureTransactionsApi->d_st_id_get: #{e}"
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


## d_st_id_instantiate_post

> DigitalSignatureTransaction d_st_id_instantiate_post(id)

Instantiate a DST from a template

This API allows to instantiate a DST from a template by specifying the template Id.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DigitalSignatureTransactionsApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Instantiate a DST from a template
  result = api_instance.d_st_id_instantiate_post(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DigitalSignatureTransactionsApi->d_st_id_instantiate_post: #{e}"
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


## d_st_id_modify_post

> DigitalSignatureTransaction d_st_id_modify_post(id)

Modify a published DST template

This API allows to move a published DST to DRAFT, allowing the modification. This way is possible to modify a _DST Template_. 

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DigitalSignatureTransactionsApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Modify a published DST template
  result = api_instance.d_st_id_modify_post(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DigitalSignatureTransactionsApi->d_st_id_modify_post: #{e}"
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


## d_st_id_notify_post

> d_st_id_notify_post(id)

Send notifications for a DST

This API allows to send notifications to pending users for an active _DST_.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DigitalSignatureTransactionsApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Send notifications for a DST
  api_instance.d_st_id_notify_post(id)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DigitalSignatureTransactionsApi->d_st_id_notify_post: #{e}"
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


## d_st_id_publish_post

> DigitalSignatureTransaction d_st_id_publish_post(id)

Publish a DST

This API allows to publish a DST, the new state becomes published. It will automatically evolve to a new state where it will be filled or signed.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DigitalSignatureTransactionsApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Publish a DST
  result = api_instance.d_st_id_publish_post(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DigitalSignatureTransactionsApi->d_st_id_publish_post: #{e}"
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


## d_st_id_put

> DigitalSignatureTransaction d_st_id_put(id, digital_signature_transaction)

Update a DST

This API allows to update a DST.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DigitalSignatureTransactionsApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
digital_signature_transaction = SigningTodayAPIClient::DigitalSignatureTransaction.new # DigitalSignatureTransaction | DST replacing current object.

begin
  #Update a DST
  result = api_instance.d_st_id_put(id, digital_signature_transaction)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DigitalSignatureTransactionsApi->d_st_id_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **digital_signature_transaction** | [**DigitalSignatureTransaction**](DigitalSignatureTransaction.md)| DST replacing current object. | 

### Return type

[**DigitalSignatureTransaction**](DigitalSignatureTransaction.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## d_st_id_replace_post

> DigitalSignatureTransaction d_st_id_replace_post(id)

Replace a rejected DST

This API allows to replace a rejected DST instantiating a new one. The replacing DST is created in DRAFT state.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DigitalSignatureTransactionsApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Replace a rejected DST
  result = api_instance.d_st_id_replace_post(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DigitalSignatureTransactionsApi->d_st_id_replace_post: #{e}"
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


## d_st_id_sign_doc_id_sign_id_get

> DSTSigningAddressResponse d_st_id_sign_doc_id_sign_id_get(id, doc_id, sign_id)

Return the address for signing

This API returns the address to perform the signature.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DigitalSignatureTransactionsApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
doc_id = 3 # Integer | Reference to _docId_ has to be signed
sign_id = 2 # Integer | Reference to the signature request id

begin
  #Return the address for signing
  result = api_instance.d_st_id_sign_doc_id_sign_id_get(id, doc_id, sign_id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DigitalSignatureTransactionsApi->d_st_id_sign_doc_id_sign_id_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **doc_id** | **Integer**| Reference to _docId_ has to be signed | 
 **sign_id** | **Integer**| Reference to the signature request id | 

### Return type

[**DSTSigningAddressResponse**](DSTSigningAddressResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## d_st_id_templatize_post

> DigitalSignatureTransaction d_st_id_templatize_post(id)

Create a template from a DST

This API allows to creates a new template starting from a DST. Currently implemented only for published DST templates.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::DigitalSignatureTransactionsApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Create a template from a DST
  result = api_instance.d_st_id_templatize_post(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling DigitalSignatureTransactionsApi->d_st_id_templatize_post: #{e}"
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

