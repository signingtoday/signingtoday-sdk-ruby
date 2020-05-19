=begin
#Signing Today API

#*Signing Today* enables seamless integration of digital signatures into any website by the use of easy requests to our API. This is the smart way of adding digital signature support with a great user experience.   *Signing Today APIs* use HTTP methods and are RESTful based, moreover they are protected by a *server to server authentication* standard by the use of tokens.   *Signing Today APIs* can be used in these environments:   | Environment | Description | Endpoint | | ----------- | ----------- | -------- | | Sandbox     | Test environment | `https://sandbox.signingtoday.com` | | Live        | Production environment | `https://api.signingtoday.com` |   For every single request to Signing Today has to be defined the following *HTTP* header: - `Authorization`, which contains the authentication token.  If the request has a body than another *HTTP* header is requested: - `Content-Type`, with `application/json` value.   Follows an example of usage to enumerate all the user of *my-org* organization.  **Example**  ```json $ curl https://sandbox.signingtoday.com/api/v1/my-org/users \\     -H 'Authorization: Token <access-token>' ```  ## HTTP methods used  APIs use the right HTTP verb in every situation.  | Method   | Description                    | | -------- | ------------------------------ | | `GET`    | Request data from a resource   | | `POST`   | Send data to create a resource | | `PUT`    | Update a resource              | | `PATCH`  | Partially update a resource    | | `DELETE` | Delete a resourse              |   ## Response definition  All the response are in JSON format. As response to a request of all users of an organization you will have a result like this:  ```json {     \"pagination\": {       \"count\": 75,       \"previous\": \"https://sandbox.signingtoday.com/api/v1/my-org/users?page=1\",       \"next\": \"https://sandbox.signingtoday.com/api/v1/my-org/users?page=3\",       \"pages\": 8,       \"page\": 2     },     \"meta\": {       \"code\": 200     },     \"data\": [       {         \"id\": \"jdo\",         \"status\": \"enabled\",         \"type\": \"Basic user account\",         \"email\": johndoe@dummyemail.com,         \"first_name\": \"John\",         \"last_name\": \"Doe\",         \"wallet\": [],         \"created_by\": \"system\",         \"owner\": false,         \"automatic\": false,         \"rao\": false       },       ...     ]   } ```  The JSON of the response is made of three parts: - Pagination - Meta - Data  ### Pagination  *Pagination* object allows to split the response into parts and then to rebuild it sequentially by the use of `next` and `previous` parameters, by which you get previous and following blocks. The *Pagination* is present only if the response is a list of objects.  The general structure of *Pagination* object is the following:  ```json {     \"pagination\": {       \"count\": 75,       \"previous\": \"https://sandbox.signingtoday.com/api/v1/my-org/users?page=1\",       \"next\": \"https://sandbox.signingtoday.com/api/v1/my-org/users?page=3\",       \"pages\": 8,       \"page\": 2     },     ...   } ```  ### Meta  *Meta* object is used to enrich the information about the response. In the previous example, a successful case of response, *Meta* will have value `status: 2XX`. In case of unsuccessful response, *Meta* will have further information, as follows:  ```json {     \"meta\": {       \"code\": <HTTP STATUS CODE>,       \"error_type\": <STATUS CODE DESCRIPTION>,       \"error_message\": <ERROR DESCRIPTION>     }   } ```  ### Data  *Data* object outputs as object or list of them. Contains the expected data as requested to the API.  ## Search filters  Search filters of the API have the following structure:  `where_ATTRIBUTENAME`=`VALUE`  In this way you make a case-sensitive search of *VALUE*. You can extend it through the Django lookup, obtaining more specific filters. For example:  `where_ATTRIBUTENAME__LOOKUP`=`VALUE`  where *LOOKUP* can be replaced with `icontains` to have a partial insensitive research, where  `where_first_name__icontains`=`CHa`  matches with every user that have the *cha* string in their name, with no differences between capital and lower cases.  [Here](https://docs.djangoproject.com/en/1.11/ref/models/querysets/#field-lookups) the list of the lookups.  ## Webhooks  Signing Today supports webhooks for the update of DSTs and identities status. You can choose if to use or not webhooks and if you want to receive updates about DSTs and/or identities. You can configurate it on application token level, in the *webhook* field, as follows:  ```json \"webhooks\": {   \"dst\": \"URL\",   \"identity\": \"URL\"   } ```  ### DSTs status update  DSTs send the following status updates: - **DST_STATUS_CHANGED**: whenever the DST changes its status - **SIGNATURE_STATUS_CHANGED**: whenever one of the signatures changes its status  #### DST_STATUS_CHANGED  Sends the following information:  ```json {     \"message\": \"DST_STATUS_CHANGED\",     \"data\": {       \"status\": \"<DST_STATUS>\",       \"dst\": \"<DST_ID>\",       \"reason\": \"<DST_REASON>\"     }   } ```  #### SIGNATURE_STATUS_CHANGED  Sends the following information:  ```json {     \"message\": \"SIGNATURE_STATUS_CHANGED\",     \"data\": {       \"status\": \"<SIGNATURE_STATUS>\",       \"group\": <MEMBERSHIP_GROUP_INDEX>,       \"dst\": {         \"id\": \"<DST_ID>\",         \"title\": \"<DST_TITLE>\"       },       \"signature\": \"<SIGNATURE_ID>\",       \"signer\": \"<SIGNER_USERNAME>\",       \"position\": \"<SIGNATURE_POSITION>\",       \"document\": {         \"display_name\": \"<DOCUMENT_TITLE>\",         \"id\": \"<DOCUMENT_ID>\",         \"order\": <DOCUMENT_INDEX>       },       \"automatic\": <DECLARES_IF_THE_SIGNER_IS_AUTOMATIC>,       \"page\": \"<SIGNATURE_PAGE>\"     }   } ```  ### Identities status update  Identities send the following status updates: - **IDENTITY_REQUEST_ENROLLED**: whenever an identity request is activated  #### IDENTITY_REQUEST_ENROLLED  Sends the following information:  ```json {     \"message\": \"IDENTITY_REQUEST_ENROLLED\",     \"data\": {       \"status\": \"<REQUEST_STATUS>\",       \"request\": \"<REQUEST_ID>\",       \"user\": \"<APPLICANT_USERNAME>\"     }   } ```  ### Urlback  Sometimes may be necessary to make a redirect after an user, from the signature tray, has completed his operations or activated a certificate.  If set, redirects could happen in 3 cases: - after a signature or decline - after a DST has been signed by all the signers or canceled - after the activation of a certificate  In the first two cases the urlback returns the following information through a data form: - **dst-id**: id of the DST - **dst-url**: signature_ticket of the signature - **dst-status**: current status of the DST - **dst-signature-id**: id of the signature - **dst-signature-status**: current status of the signature - **user**: username of the signer - **decline-reason**: in case of a refused DST contains the reason of the decline  In the last case the urlback returns the following information through a data form: - **user**: username of the user activated the certificate - **identity-provider**: the provider has been used to issue the certificate - **identity-request-id**: id of the enrollment request - **identity-id**: id of the new identity - **identity-label**: the label assigned to the identity - **identity-certificate**: public key of the certificate  ## SUPPORTED Provider  The supported providers are:   - *_aruba_*   - *infocert*   - *namirial*   - *uanataca*  

The version of the OpenAPI document: 1.5.0
Contact: smartcloud@bit4id.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module SigningTodayAPIClient
  class Bit4idPathgroupSignatureTransactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Mark a DST as canceled
    # This API allows to mark a Digital Signature Transaction as canceled providing a reason. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param inline_object2 [InlineObject2] 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2013]
    def cancel_dst(organization_id, dst_id, inline_object2, opts = {})
      data, _status_code, _headers = cancel_dst_with_http_info(organization_id, dst_id, inline_object2, opts)
      data
    end

    # Mark a DST as canceled
    # This API allows to mark a Digital Signature Transaction as canceled providing a reason. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param inline_object2 [InlineObject2] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2013, Integer, Hash)>] InlineResponse2013 data, response status code and response headers
    def cancel_dst_with_http_info(organization_id, dst_id, inline_object2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignatureTransactionsApi.cancel_dst ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignatureTransactionsApi.cancel_dst"
      end
      # verify the required parameter 'dst_id' is set
      if @api_client.config.client_side_validation && dst_id.nil?
        fail ArgumentError, "Missing the required parameter 'dst_id' when calling Bit4idPathgroupSignatureTransactionsApi.cancel_dst"
      end
      # verify the required parameter 'inline_object2' is set
      if @api_client.config.client_side_validation && inline_object2.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object2' when calling Bit4idPathgroupSignatureTransactionsApi.cancel_dst"
      end
      # resource path
      local_var_path = '/{organization-id}/signature-transactions/{dst-id}/cancel'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'dst-id' + '}', CGI.escape(dst_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object2) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2013' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignatureTransactionsApi#cancel_dst\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Digital Signature Transaction
    # This API allows to create a Digital Signature Transaction. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param create_signature_transaction [CreateSignatureTransaction] The new DST to create
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2013]
    def create_dst(organization_id, create_signature_transaction, opts = {})
      data, _status_code, _headers = create_dst_with_http_info(organization_id, create_signature_transaction, opts)
      data
    end

    # Create a Digital Signature Transaction
    # This API allows to create a Digital Signature Transaction. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param create_signature_transaction [CreateSignatureTransaction] The new DST to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2013, Integer, Hash)>] InlineResponse2013 data, response status code and response headers
    def create_dst_with_http_info(organization_id, create_signature_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignatureTransactionsApi.create_dst ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignatureTransactionsApi.create_dst"
      end
      # verify the required parameter 'create_signature_transaction' is set
      if @api_client.config.client_side_validation && create_signature_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'create_signature_transaction' when calling Bit4idPathgroupSignatureTransactionsApi.create_dst"
      end
      # resource path
      local_var_path = '/{organization-id}/signature-transactions'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(create_signature_transaction) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2013' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignatureTransactionsApi#create_dst\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Digital Signature Transaction
    # This API allows to delete a Digital Signature Transaction. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2009]
    def delete_dst(organization_id, dst_id, opts = {})
      data, _status_code, _headers = delete_dst_with_http_info(organization_id, dst_id, opts)
      data
    end

    # Delete a Digital Signature Transaction
    # This API allows to delete a Digital Signature Transaction. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2009, Integer, Hash)>] InlineResponse2009 data, response status code and response headers
    def delete_dst_with_http_info(organization_id, dst_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignatureTransactionsApi.delete_dst ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignatureTransactionsApi.delete_dst"
      end
      # verify the required parameter 'dst_id' is set
      if @api_client.config.client_side_validation && dst_id.nil?
        fail ArgumentError, "Missing the required parameter 'dst_id' when calling Bit4idPathgroupSignatureTransactionsApi.delete_dst"
      end
      # resource path
      local_var_path = '/{organization-id}/signature-transactions/{dst-id}'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'dst-id' + '}', CGI.escape(dst_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2009' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignatureTransactionsApi#delete_dst\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the resources of a DST
    # This API allows to delete the resources of a Digital Signature Transaction. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20010]
    def delete_dst_resources(organization_id, dst_id, opts = {})
      data, _status_code, _headers = delete_dst_resources_with_http_info(organization_id, dst_id, opts)
      data
    end

    # Delete the resources of a DST
    # This API allows to delete the resources of a Digital Signature Transaction. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20010, Integer, Hash)>] InlineResponse20010 data, response status code and response headers
    def delete_dst_resources_with_http_info(organization_id, dst_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignatureTransactionsApi.delete_dst_resources ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignatureTransactionsApi.delete_dst_resources"
      end
      # verify the required parameter 'dst_id' is set
      if @api_client.config.client_side_validation && dst_id.nil?
        fail ArgumentError, "Missing the required parameter 'dst_id' when calling Bit4idPathgroupSignatureTransactionsApi.delete_dst_resources"
      end
      # resource path
      local_var_path = '/{organization-id}/signature-transactions/{dst-id}/resources'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'dst-id' + '}', CGI.escape(dst_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse20010' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignatureTransactionsApi#delete_dst_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download a document from a DST
    # This API allows to download a document from a digital signature transaction. The document can be downloaded before or after one or every signature have been performed. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param document_id [Id] The **document-id** is the uuid code that identifies a document of a digital signature transaction. This parameter is usually used in order to download a document from a digital signature transaction 
    # @param [Hash] opts the optional parameters
    # @return [File]
    def get_document(organization_id, document_id, opts = {})
      data, _status_code, _headers = get_document_with_http_info(organization_id, document_id, opts)
      data
    end

    # Download a document from a DST
    # This API allows to download a document from a digital signature transaction. The document can be downloaded before or after one or every signature have been performed. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param document_id [Id] The **document-id** is the uuid code that identifies a document of a digital signature transaction. This parameter is usually used in order to download a document from a digital signature transaction 
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def get_document_with_http_info(organization_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignatureTransactionsApi.get_document ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignatureTransactionsApi.get_document"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling Bit4idPathgroupSignatureTransactionsApi.get_document"
      end
      # resource path
      local_var_path = '/{organization-id}/documents/{document-id}/download'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'document-id' + '}', CGI.escape(document_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'File' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignatureTransactionsApi#get_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information about a DST
    # This API allows to get information about a Digital Signature Transaction. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2013]
    def get_dst(organization_id, dst_id, opts = {})
      data, _status_code, _headers = get_dst_with_http_info(organization_id, dst_id, opts)
      data
    end

    # Get information about a DST
    # This API allows to get information about a Digital Signature Transaction. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2013, Integer, Hash)>] InlineResponse2013 data, response status code and response headers
    def get_dst_with_http_info(organization_id, dst_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignatureTransactionsApi.get_dst ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignatureTransactionsApi.get_dst"
      end
      # verify the required parameter 'dst_id' is set
      if @api_client.config.client_side_validation && dst_id.nil?
        fail ArgumentError, "Missing the required parameter 'dst_id' when calling Bit4idPathgroupSignatureTransactionsApi.get_dst"
      end
      # resource path
      local_var_path = '/{organization-id}/signature-transactions/{dst-id}'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'dst-id' + '}', CGI.escape(dst_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2013' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignatureTransactionsApi#get_dst\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the DSTs of an organization
    # This API allows to list the Digital Signature Transactions of an organization. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :where_signer Returns the Digital Signature Transactions where the specified user is a signer, searched by its id
    # @option opts [String] :where_status Returns the Digital Signature Transactions with the specified status
    # @option opts [String] :where_title Returns the Digital Signature Transactions that have the specified title
    # @option opts [String] :where_created_by Returns the Digital Signature Transactions created by the specified user
    # @option opts [String] :where_created Returns the Digital Signature Transactions created before, after or in the declared range
    # @option opts [String] :where_signature_status Returns the Digital Signature Transactions where at least one of the signers has the queried status
    # @option opts [String] :where_document_name Returns the Digital Signature Transactions that have into its documents the queried one
    # @option opts [String] :where_reason Returns the Digital Signature Transactions with the specified reason
    # @option opts [String] :where_signature_name Returns the Digital Signature Transactions where the specified user is a signer, searched by its name
    # @option opts [String] :where_signer_group Returns the Digital Signature Transactions that have the specified group of signers
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display (default to 100)
    # @option opts [String] :where_order The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on
    # @return [InlineResponse2008]
    def list_ds_ts(organization_id, opts = {})
      data, _status_code, _headers = list_ds_ts_with_http_info(organization_id, opts)
      data
    end

    # List the DSTs of an organization
    # This API allows to list the Digital Signature Transactions of an organization. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :where_signer Returns the Digital Signature Transactions where the specified user is a signer, searched by its id
    # @option opts [String] :where_status Returns the Digital Signature Transactions with the specified status
    # @option opts [String] :where_title Returns the Digital Signature Transactions that have the specified title
    # @option opts [String] :where_created_by Returns the Digital Signature Transactions created by the specified user
    # @option opts [String] :where_created Returns the Digital Signature Transactions created before, after or in the declared range
    # @option opts [String] :where_signature_status Returns the Digital Signature Transactions where at least one of the signers has the queried status
    # @option opts [String] :where_document_name Returns the Digital Signature Transactions that have into its documents the queried one
    # @option opts [String] :where_reason Returns the Digital Signature Transactions with the specified reason
    # @option opts [String] :where_signature_name Returns the Digital Signature Transactions where the specified user is a signer, searched by its name
    # @option opts [String] :where_signer_group Returns the Digital Signature Transactions that have the specified group of signers
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display
    # @option opts [String] :where_order The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on
    # @return [Array<(InlineResponse2008, Integer, Hash)>] InlineResponse2008 data, response status code and response headers
    def list_ds_ts_with_http_info(organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignatureTransactionsApi.list_ds_ts ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignatureTransactionsApi.list_ds_ts"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Bit4idPathgroupSignatureTransactionsApi.list_ds_ts, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Bit4idPathgroupSignatureTransactionsApi.list_ds_ts, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/{organization-id}/signature-transactions'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'where_signer'] = opts[:'where_signer'] if !opts[:'where_signer'].nil?
      query_params[:'where_status'] = opts[:'where_status'] if !opts[:'where_status'].nil?
      query_params[:'where_title'] = opts[:'where_title'] if !opts[:'where_title'].nil?
      query_params[:'where_created_by'] = opts[:'where_created_by'] if !opts[:'where_created_by'].nil?
      query_params[:'where_created'] = opts[:'where_created'] if !opts[:'where_created'].nil?
      query_params[:'where_signature_status'] = opts[:'where_signature_status'] if !opts[:'where_signature_status'].nil?
      query_params[:'where_document_name'] = opts[:'where_document_name'] if !opts[:'where_document_name'].nil?
      query_params[:'where_reason'] = opts[:'where_reason'] if !opts[:'where_reason'].nil?
      query_params[:'where_signature_name'] = opts[:'where_signature_name'] if !opts[:'where_signature_name'].nil?
      query_params[:'where_signer_group'] = opts[:'where_signer_group'] if !opts[:'where_signer_group'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'where_order'] = opts[:'where_order'] if !opts[:'where_order'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2008' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignatureTransactionsApi#list_ds_ts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
