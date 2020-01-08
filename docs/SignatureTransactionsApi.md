# SigningTodayAPIClient::SignatureTransactionsApi

All URIs are relative to *https://sandbox.signingtoday.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_dst**](SignatureTransactionsApi.md#cancel_dst) | **POST** /{organization-id}/signature-transactions/{dst-id}/cancel | Mark a DST as canceled
[**create_dst**](SignatureTransactionsApi.md#create_dst) | **POST** /{organization-id}/signature-transactions | Create a Digital Signature Transaction
[**delete_dst**](SignatureTransactionsApi.md#delete_dst) | **DELETE** /{organization-id}/signature-transactions/{dst-id} | Delete a Digital Signature Transaction
[**get_document**](SignatureTransactionsApi.md#get_document) | **GET** /{organization-id}/documents/{document-id}/download | Download a document from a DST
[**get_dst**](SignatureTransactionsApi.md#get_dst) | **GET** /{organization-id}/signature-transactions/{dst-id} | Get information about a DST
[**list_ds_ts**](SignatureTransactionsApi.md#list_ds_ts) | **GET** /{organization-id}/signature-transactions | List the DSTs of an organization



## cancel_dst

> InlineResponse2013 cancel_dst(organization_id, dst_id, inline_object1)

Mark a DST as canceled

This API allows to mark a Digital Signature Transaction as canceled providing a reason. 

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

api_instance = SigningTodayAPIClient::SignatureTransactionsApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
dst_id = SigningTodayAPIClient::Id.new # Id | The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
inline_object1 = SigningTodayAPIClient::InlineObject1.new # InlineObject1 | 

begin
  #Mark a DST as canceled
  result = api_instance.cancel_dst(organization_id, dst_id, inline_object1)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling SignatureTransactionsApi->cancel_dst: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **dst_id** | [**Id**](.md)| The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst**  | 
 **inline_object1** | [**InlineObject1**](InlineObject1.md)|  | 

### Return type

[**InlineResponse2013**](InlineResponse2013.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_dst

> InlineResponse2013 create_dst(organization_id, create_signature_transaction)

Create a Digital Signature Transaction

This API allows to create a Digital Signature Transaction. 

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

api_instance = SigningTodayAPIClient::SignatureTransactionsApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
create_signature_transaction = SigningTodayAPIClient::CreateSignatureTransaction.new # CreateSignatureTransaction | The new DST to create

begin
  #Create a Digital Signature Transaction
  result = api_instance.create_dst(organization_id, create_signature_transaction)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling SignatureTransactionsApi->create_dst: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **create_signature_transaction** | [**CreateSignatureTransaction**](CreateSignatureTransaction.md)| The new DST to create | 

### Return type

[**InlineResponse2013**](InlineResponse2013.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_dst

> InlineResponse2007 delete_dst(organization_id, dst_id)

Delete a Digital Signature Transaction

This API allows to delete a Digital Signature Transaction. 

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

api_instance = SigningTodayAPIClient::SignatureTransactionsApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
dst_id = SigningTodayAPIClient::Id.new # Id | The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 

begin
  #Delete a Digital Signature Transaction
  result = api_instance.delete_dst(organization_id, dst_id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling SignatureTransactionsApi->delete_dst: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **dst_id** | [**Id**](.md)| The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst**  | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_document

> File get_document(organization_id, document_id)

Download a document from a DST

This API allows to download a document from a digital signature transaction. The document can be downloaded before or after one or every signature have been performed. 

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

api_instance = SigningTodayAPIClient::SignatureTransactionsApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
document_id = SigningTodayAPIClient::Id.new # Id | The **document-id** is the uuid code that identifies a document of a digital signature transaction. This parameter is usually used in order to download a document from a digital signature transaction 

begin
  #Download a document from a DST
  result = api_instance.get_document(organization_id, document_id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling SignatureTransactionsApi->get_document: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **document_id** | [**Id**](.md)| The **document-id** is the uuid code that identifies a document of a digital signature transaction. This parameter is usually used in order to download a document from a digital signature transaction  | 

### Return type

**File**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## get_dst

> InlineResponse2013 get_dst(organization_id, dst_id)

Get information about a DST

This API allows to get information about a Digital Signature Transaction. 

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

api_instance = SigningTodayAPIClient::SignatureTransactionsApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
dst_id = SigningTodayAPIClient::Id.new # Id | The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 

begin
  #Get information about a DST
  result = api_instance.get_dst(organization_id, dst_id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling SignatureTransactionsApi->get_dst: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **dst_id** | [**Id**](.md)| The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst**  | 

### Return type

[**InlineResponse2013**](InlineResponse2013.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ds_ts

> InlineResponse2006 list_ds_ts(organization_id, opts)

List the DSTs of an organization

This API allows to list the Digital Signature Transactions of an organization. 

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

api_instance = SigningTodayAPIClient::SignatureTransactionsApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
opts = {
  where_signer: 'jdo', # String | Returns the Digital Signature Transactions where the specified user is a signer, searched by its id
  where_status: 'performed', # String | Returns the Digital Signature Transactions with the specified status
  where_title: 'Signature of a document', # String | Returns the Digital Signature Transactions that have the specified title
  where_created_by: 'jdo@example', # String | Returns the Digital Signature Transactions created by the specified user
  where_created: '2019-11-24 12:24:17.430000', # String | Returns the Digital Signature Transactions created before, after or in the declared range
  where_signature_status: 'pending', # String | Returns the Digital Signature Transactions where at least one of the signers has the queried status
  where_document_name: 'Document of example', # String | Returns the Digital Signature Transactions that have into its documents the queried one
  where_reason: 'where_reason_example', # String | Returns the Digital Signature Transactions with the specified reason
  where_signature_name: 'John Doe', # String | Returns the Digital Signature Transactions where the specified user is a signer, searched by its name
  where_signer_group: '@administrators', # String | Returns the Digital Signature Transactions that have the specified group of signers
  page: 1, # Integer | Restricts the search to the chosen page
  count: 100 # Integer | Sets the number of users per page to display
}

begin
  #List the DSTs of an organization
  result = api_instance.list_ds_ts(organization_id, opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling SignatureTransactionsApi->list_ds_ts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **where_signer** | **String**| Returns the Digital Signature Transactions where the specified user is a signer, searched by its id | [optional] 
 **where_status** | **String**| Returns the Digital Signature Transactions with the specified status | [optional] 
 **where_title** | **String**| Returns the Digital Signature Transactions that have the specified title | [optional] 
 **where_created_by** | **String**| Returns the Digital Signature Transactions created by the specified user | [optional] 
 **where_created** | **String**| Returns the Digital Signature Transactions created before, after or in the declared range | [optional] 
 **where_signature_status** | **String**| Returns the Digital Signature Transactions where at least one of the signers has the queried status | [optional] 
 **where_document_name** | **String**| Returns the Digital Signature Transactions that have into its documents the queried one | [optional] 
 **where_reason** | **String**| Returns the Digital Signature Transactions with the specified reason | [optional] 
 **where_signature_name** | **String**| Returns the Digital Signature Transactions where the specified user is a signer, searched by its name | [optional] 
 **where_signer_group** | **String**| Returns the Digital Signature Transactions that have the specified group of signers | [optional] 
 **page** | **Integer**| Restricts the search to the chosen page | [optional] 
 **count** | **Integer**| Sets the number of users per page to display | [optional] [default to 100]

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

