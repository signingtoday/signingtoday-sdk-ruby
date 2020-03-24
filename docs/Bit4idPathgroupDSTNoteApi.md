# SigningTodayAPIClient::Bit4idPathgroupDSTNoteApi

All URIs are relative to *https://web.sandbox.signingtoday.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_st_id_note_get**](Bit4idPathgroupDSTNoteApi.md#d_st_id_note_get) | **GET** /DST/{id}/note | Retrieve the DSTNotes associated to the DST
[**d_st_id_note_note_id_delete**](Bit4idPathgroupDSTNoteApi.md#d_st_id_note_note_id_delete) | **DELETE** /DST/{id}/note/{noteId} | Delete a DSTNote
[**d_st_id_note_note_id_put**](Bit4idPathgroupDSTNoteApi.md#d_st_id_note_note_id_put) | **PUT** /DST/{id}/note/{noteId} | Edit a DSTNote
[**d_st_id_note_post**](Bit4idPathgroupDSTNoteApi.md#d_st_id_note_post) | **POST** /DST/{id}/note | Append a new DSTNote



## d_st_id_note_get

> Array&lt;DSTNote&gt; d_st_id_note_get(id)

Retrieve the DSTNotes associated to the DST

This API allows to retrieve the DST Notes associated to the DST.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupDSTNoteApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_

begin
  #Retrieve the DSTNotes associated to the DST
  result = api_instance.d_st_id_note_get(id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupDSTNoteApi->d_st_id_note_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 

### Return type

[**Array&lt;DSTNote&gt;**](DSTNote.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## d_st_id_note_note_id_delete

> d_st_id_note_note_id_delete(id, note_id)

Delete a DSTNote

This API allows to delete a DSTNote.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupDSTNoteApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
note_id = 14 # Integer | The reference of a DSTNote

begin
  #Delete a DSTNote
  api_instance.d_st_id_note_note_id_delete(id, note_id)
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupDSTNoteApi->d_st_id_note_note_id_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **note_id** | **Integer**| The reference of a DSTNote | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## d_st_id_note_note_id_put

> DSTNote d_st_id_note_note_id_put(id, note_id, dst_note)

Edit a DSTNote

This API allows to edit a DSTNote.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupDSTNoteApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
note_id = 14 # Integer | The reference of a DSTNote
dst_note = SigningTodayAPIClient::DSTNote.new # DSTNote | DSTNote replacing current object.

begin
  #Edit a DSTNote
  result = api_instance.d_st_id_note_note_id_put(id, note_id, dst_note)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupDSTNoteApi->d_st_id_note_note_id_put: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **note_id** | **Integer**| The reference of a DSTNote | 
 **dst_note** | [**DSTNote**](DSTNote.md)| DSTNote replacing current object. | 

### Return type

[**DSTNote**](DSTNote.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## d_st_id_note_post

> DSTNote d_st_id_note_post(id, opts)

Append a new DSTNote

This API allows to append a new DSTNote to the DST.

### Example

```ruby
# load the gem
require 'signing_today_client'
# setup authorization
SigningTodayAPIClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SigningTodayAPIClient::Bit4idPathgroupDSTNoteApi.new
id = '737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4' # String | The value of _the unique id_
opts = {
  inline_object1: SigningTodayAPIClient::InlineObject1.new # InlineObject1 | 
}

begin
  #Append a new DSTNote
  result = api_instance.d_st_id_note_post(id, opts)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling Bit4idPathgroupDSTNoteApi->d_st_id_note_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| The value of _the unique id_ | 
 **inline_object1** | [**InlineObject1**](InlineObject1.md)|  | [optional] 

### Return type

[**DSTNote**](DSTNote.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*

