# SigningTodayAPIClient::OrganizationsApi

All URIs are relative to *https://sandbox.signingtoday.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_organization**](OrganizationsApi.md#get_organization) | **GET** /organizations/{organization-id} | Get the settings of an oraganization
[**patch_organization**](OrganizationsApi.md#patch_organization) | **PATCH** /organizations/{organization-id} | Edit the settings of an organization



## get_organization

> InlineResponse200 get_organization(organization_id)

Get the settings of an oraganization

This API allows to obtain the settings of an organization, such as:   - _default_rao_ : the default rao user of the organization   - _dst_default_days_ : default deadline of a dst before its expiration   - _logo_ : the logo of the organization 

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

api_instance = SigningTodayAPIClient::OrganizationsApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 

begin
  #Get the settings of an oraganization
  result = api_instance.get_organization(organization_id)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling OrganizationsApi->get_organization: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_organization

> InlineResponse200 patch_organization(organization_id, update_organization)

Edit the settings of an organization

This API allows to edit every single setting of an organization except the **slug** field. 

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

api_instance = SigningTodayAPIClient::OrganizationsApi.new
organization_id = 'api-demo' # String | The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
update_organization = SigningTodayAPIClient::UpdateOrganization.new # UpdateOrganization | The settings of the organization to edit

begin
  #Edit the settings of an organization
  result = api_instance.patch_organization(organization_id, update_organization)
  p result
rescue SigningTodayAPIClient::ApiError => e
  puts "Exception when calling OrganizationsApi->patch_organization: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization  | [default to &#39;api-demo&#39;]
 **update_organization** | [**UpdateOrganization**](UpdateOrganization.md)| The settings of the organization to edit | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

