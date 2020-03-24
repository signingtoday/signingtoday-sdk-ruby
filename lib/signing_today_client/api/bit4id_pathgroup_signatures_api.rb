=begin
#Signing Today API

#*Signing Today* enables seamless integration of digital signatures into any website by the use of easy requests to our API. This is the smart way of adding digital signature support with a great user experience.   *Signing Today APIs* use HTTP methods and are RESTful based, moreover they are protected by a *server to server authentication* standard by the use of tokens.   *Signing Today APIs* can be used in these environments:   | Environment | Description | Endpoint | | ----------- | ----------- | -------- | | Sandbox     | Test environment | `https://sandbox.signingtoday.com` | | Live        | Production environment | `https://api.signingtoday.com` |   For every single request to Signing Today has to be defined the following *HTTP* header: - `Authorization`, which contains the authentication token.  If the request has a body than another *HTTP* header is requested: - `Content-Type`, with `application/json` value.   Follows an example of usage to enumerate all the user of *my-org* organization.  **Example**  ```json $ curl https://sandbox.signingtoday.com/api/v1/my-org/users \\     -H 'Authorization: Token <access-token>' ```  ## HTTP methods used  APIs use the right HTTP verb in every situation.  | Method   | Description                    | | -------- | ------------------------------ | | `GET`    | Request data from a resource   | | `POST`   | Send data to create a resource | | `PUT`    | Update a resource              | | `PATCH`  | Partially update a resource    | | `DELETE` | Delete a resourse              |   ## Response definition  All the response are in JSON format. As response to a request of all users of an organization you will have a result like this:  ```json {     \"pagination\": {       \"count\": 75,       \"previous\": \"https://sandbox.signingtoday.com/api/v1/my-org/users?page=1\",       \"next\": \"https://sandbox.signingtoday.com/api/v1/my-org/users?page=3\",       \"pages\": 8,       \"page\": 2     },     \"meta\": {       \"code\": 200     },     \"data\": [       {         \"id\": \"jdo\",         \"status\": \"enabled\",         \"type\": \"Basic user account\",         \"email\": johndoe@dummyemail.com,         \"first_name\": \"John\",         \"last_name\": \"Doe\",         \"wallet\": [],         \"created_by\": \"system\",         \"owner\": false,         \"automatic\": false,         \"rao\": false       },       ...     ]   } ```  The JSON of the response is made of three parts: - Pagination - Meta - Data  ### Pagination  *Pagination* object allows to split the response into parts and then to rebuild it sequentially by the use of `next` and `previous` parameters, by which you get previous and following blocks. The *Pagination* is present only if the response is a list of objects.  The general structure of *Pagination* object is the following:  ```json {     \"pagination\": {       \"count\": 75,       \"previous\": \"https://sandbox.signingtoday.com/api/v1/my-org/users?page=1\",       \"next\": \"https://sandbox.signingtoday.com/api/v1/my-org/users?page=3\",       \"pages\": 8,       \"page\": 2     },     ...   } ```  ### Meta  *Meta* object is used to enrich the information about the response. In the previous example, a successful case of response, *Meta* will have value `status: 2XX`. In case of unsuccessful response, *Meta* will have further information, as follows:  ```json {     \"meta\": {       \"code\": <HTTP STATUS CODE>,       \"error_type\": <STATUS CODE DESCRIPTION>,       \"error_message\": <ERROR DESCRIPTION>     }   } ```  ### Data  *Data* object outputs as object or list of them. Contains the expected data as requested to the API.  ## Search filters  Search filters of the API have the following structure:  `where_ATTRIBUTENAME`=`VALUE`  In this way you make a case-sensitive search of *VALUE*. You can extend it through the Django lookup, obtaining more specific filters. For example:  `where_ATTRIBUTENAME__LOOKUP`=`VALUE`  where *LOOKUP* can be replaced with `icontains` to have a partial insensitive research, where  `where_first_name__icontains`=`CHa`  matches with every user that have the *cha* string in their name, with no differences between capital and lower cases.  [Here](https://docs.djangoproject.com/en/1.11/ref/models/querysets/#field-lookups) the list of the lookups.  ## Webhooks  Signing Today supports webhooks for the update of DSTs and identities status. You can choose if to use or not webhooks and if you want to receive updates about DSTs and/or identities. You can configurate it on application token level, in the *webhook* field, as follows:  ```json \"webhooks\": {   \"dst\": \"URL\",   \"identity\": \"URL\"   } ```  ### DSTs status update  DSTs send the following status updates: - **DST_STATUS_CHANGED**: whenever the DST changes its status - **SIGNATURE_STATUS_CHANGED**: whenever one of the signatures changes its status  #### DST_STATUS_CHANGED  Sends the following information:  ```json {     \"message\": \"DST_STATUS_CHANGED\",     \"data\": {       \"status\": \"<DST_STATUS>\",       \"dst\": \"<DST_ID>\",       \"reason\": \"<DST_REASON>\"     }   } ```  #### SIGNATURE_STATUS_CHANGED  Sends the following information:  ```json {     \"message\": \"SIGNATURE_STATUS_CHANGED\",     \"data\": {       \"status\": \"<SIGNATURE_STATUS>\",       \"group\": <MEMBERSHIP_GROUP_INDEX>,       \"dst\": {         \"id\": \"<DST_ID>\",         \"title\": \"<DST_TITLE>\"       },       \"signature\": \"<SIGNATURE_ID>\",       \"signer\": \"<SIGNER_USERNAME>\",       \"position\": \"<SIGNATURE_POSITION>\",       \"document\": {         \"display_name\": \"<DOCUMENT_TITLE>\",         \"id\": \"<DOCUMENT_ID>\",         \"order\": <DOCUMENT_INDEX>       },       \"automatic\": <DECLARES_IF_THE_SIGNER_IS_AUTOMATIC>,       \"page\": \"<SIGNATURE_PAGE>\"     }   } ```  ### Identities status update  Identities send the following status updates: - **IDENTITY_REQUEST_ENROLLED**: whenever an identity request is activated  #### IDENTITY_REQUEST_ENROLLED  Sends the following information:  ```json {     \"message\": \"IDENTITY_REQUEST_ENROLLED\",     \"data\": {       \"status\": \"<REQUEST_STATUS>\",       \"request\": \"<REQUEST_ID>\",       \"user\": \"<APPLICANT_USERNAME>\"     }   } ```  ### Urlback  Sometimes may be necessary to make a redirect after an user, from the signature tray, has completed his operations or activated a certificate.  If set, redirects could happen in 3 cases: - after a signature or decline - after a DST has been signed by all the signers or canceled - after the activation of a certificate  In the first two cases the urlback returns the following information through a data form: - **dst-id**: id of the DST - **dst-url**: signature_ticket of the signature - **dst-status**: current status of the DST - **dst-signature-id**: id of the signature - **dst-signature-status**: current status of the signature - **user**: username of the signer - **decline-reason**: in case of a refused DST contains the reason of the decline  In the last case the urlback returns the following information through a data form: - **user**: username of the user activated the certificate - **identity-provider**: the provider has been used to issue the certificate - **identity-request-id**: id of the enrollment request - **identity-id**: id of the new identity - **identity-label**: the label assigned to the identity - **identity-certificate**: public key of the certificate   

The version of the OpenAPI document: 1.5.0
Contact: smartcloud@bit4id.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module SigningTodayAPIClient
  class Bit4idPathgroupSignaturesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a channel
    # This API allows to create a channel in order to dispose, by another API, the scheduling of a signature. These two APIs are used to integrate SigningToday into another application. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2014]
    def create_channel(organization_id, dst_id, opts = {})
      data, _status_code, _headers = create_channel_with_http_info(organization_id, dst_id, opts)
      data
    end

    # Create a channel
    # This API allows to create a channel in order to dispose, by another API, the scheduling of a signature. These two APIs are used to integrate SigningToday into another application. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param dst_id [Id] The **dst-id** is the uuid code that identifies a digital signature transaction. It is used as a path parameter to filter the requested operation to the specified **dst** 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2014, Integer, Hash)>] InlineResponse2014 data, response status code and response headers
    def create_channel_with_http_info(organization_id, dst_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignaturesApi.create_channel ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignaturesApi.create_channel"
      end
      # verify the required parameter 'dst_id' is set
      if @api_client.config.client_side_validation && dst_id.nil?
        fail ArgumentError, "Missing the required parameter 'dst_id' when calling Bit4idPathgroupSignaturesApi.create_channel"
      end
      # resource path
      local_var_path = '/{organization-id}/channels/{dst-id}'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'dst-id' + '}', CGI.escape(dst_id.to_s))

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
      return_type = opts[:return_type] || 'InlineResponse2014' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignaturesApi#create_channel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Decline a Digital Signature Transaction
    # This API allows to decline the Signature of a digital signature transaction providing a reason. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param signature_id [Id] The **signature-id** is the uuid code that identifies a signature that has to be performed into a digital signature transaction. It is usually used in the API endpoints to perform, decline or cancel a digital signature transaction 
    # @param inline_object5 [InlineObject5] 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2013]
    def decline_dst(organization_id, signature_id, inline_object5, opts = {})
      data, _status_code, _headers = decline_dst_with_http_info(organization_id, signature_id, inline_object5, opts)
      data
    end

    # Decline a Digital Signature Transaction
    # This API allows to decline the Signature of a digital signature transaction providing a reason. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param signature_id [Id] The **signature-id** is the uuid code that identifies a signature that has to be performed into a digital signature transaction. It is usually used in the API endpoints to perform, decline or cancel a digital signature transaction 
    # @param inline_object5 [InlineObject5] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2013, Integer, Hash)>] InlineResponse2013 data, response status code and response headers
    def decline_dst_with_http_info(organization_id, signature_id, inline_object5, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignaturesApi.decline_dst ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignaturesApi.decline_dst"
      end
      # verify the required parameter 'signature_id' is set
      if @api_client.config.client_side_validation && signature_id.nil?
        fail ArgumentError, "Missing the required parameter 'signature_id' when calling Bit4idPathgroupSignaturesApi.decline_dst"
      end
      # verify the required parameter 'inline_object5' is set
      if @api_client.config.client_side_validation && inline_object5.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object5' when calling Bit4idPathgroupSignaturesApi.decline_dst"
      end
      # resource path
      local_var_path = '/{organization-id}/signatures/{signature-id}/decline'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'signature-id' + '}', CGI.escape(signature_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object5) 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignaturesApi#decline_dst\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sign a DST with an automatic signer
    # This API allows to sign a Digital Signature Transaction with an automatic signer certificate. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param signature_id [Id] The **signature-id** is the uuid code that identifies a signature that has to be performed into a digital signature transaction. It is usually used in the API endpoints to perform, decline or cancel a digital signature transaction 
    # @param automatic_signature [AutomaticSignature] Automatic Signature description
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20011]
    def perform_dst(organization_id, signature_id, automatic_signature, opts = {})
      data, _status_code, _headers = perform_dst_with_http_info(organization_id, signature_id, automatic_signature, opts)
      data
    end

    # Sign a DST with an automatic signer
    # This API allows to sign a Digital Signature Transaction with an automatic signer certificate. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param signature_id [Id] The **signature-id** is the uuid code that identifies a signature that has to be performed into a digital signature transaction. It is usually used in the API endpoints to perform, decline or cancel a digital signature transaction 
    # @param automatic_signature [AutomaticSignature] Automatic Signature description
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20011, Integer, Hash)>] InlineResponse20011 data, response status code and response headers
    def perform_dst_with_http_info(organization_id, signature_id, automatic_signature, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignaturesApi.perform_dst ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignaturesApi.perform_dst"
      end
      # verify the required parameter 'signature_id' is set
      if @api_client.config.client_side_validation && signature_id.nil?
        fail ArgumentError, "Missing the required parameter 'signature_id' when calling Bit4idPathgroupSignaturesApi.perform_dst"
      end
      # verify the required parameter 'automatic_signature' is set
      if @api_client.config.client_side_validation && automatic_signature.nil?
        fail ArgumentError, "Missing the required parameter 'automatic_signature' when calling Bit4idPathgroupSignaturesApi.perform_dst"
      end
      # resource path
      local_var_path = '/{organization-id}/signatures/{signature-id}/perform'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'signature-id' + '}', CGI.escape(signature_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(automatic_signature) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse20011' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignaturesApi#perform_dst\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Perform a Signature
    # This API allows to integrate SigningToday into another application. Through this endpoint it is possible to schedule a signature into engine. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param signature_id [Id] The **signature-id** is the uuid code that identifies a signature that has to be performed into a digital signature transaction. It is usually used in the API endpoints to perform, decline or cancel a digital signature transaction 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param inline_object3 [InlineObject3] 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20012]
    def perform_signature(organization_id, signature_id, identity_id, inline_object3, opts = {})
      data, _status_code, _headers = perform_signature_with_http_info(organization_id, signature_id, identity_id, inline_object3, opts)
      data
    end

    # Perform a Signature
    # This API allows to integrate SigningToday into another application. Through this endpoint it is possible to schedule a signature into engine. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param signature_id [Id] The **signature-id** is the uuid code that identifies a signature that has to be performed into a digital signature transaction. It is usually used in the API endpoints to perform, decline or cancel a digital signature transaction 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param inline_object3 [InlineObject3] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20012, Integer, Hash)>] InlineResponse20012 data, response status code and response headers
    def perform_signature_with_http_info(organization_id, signature_id, identity_id, inline_object3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignaturesApi.perform_signature ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignaturesApi.perform_signature"
      end
      # verify the required parameter 'signature_id' is set
      if @api_client.config.client_side_validation && signature_id.nil?
        fail ArgumentError, "Missing the required parameter 'signature_id' when calling Bit4idPathgroupSignaturesApi.perform_signature"
      end
      # verify the required parameter 'identity_id' is set
      if @api_client.config.client_side_validation && identity_id.nil?
        fail ArgumentError, "Missing the required parameter 'identity_id' when calling Bit4idPathgroupSignaturesApi.perform_signature"
      end
      # verify the required parameter 'inline_object3' is set
      if @api_client.config.client_side_validation && inline_object3.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object3' when calling Bit4idPathgroupSignaturesApi.perform_signature"
      end
      # resource path
      local_var_path = '/{organization-id}/signatures/{signature-id}/perform/{identity-id}'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'signature-id' + '}', CGI.escape(signature_id.to_s)).sub('{' + 'identity-id' + '}', CGI.escape(identity_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object3) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse20012' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignaturesApi#perform_signature\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Perform a Signature with session
    # This API allows to perform one or more signatures within the same session. This way is possible, in the scenario of a simple signature for example, to perform multiple signatures using the same _one time password_. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param signature_id [Id] The **signature-id** is the uuid code that identifies a signature that has to be performed into a digital signature transaction. It is usually used in the API endpoints to perform, decline or cancel a digital signature transaction 
    # @param inline_object4 [InlineObject4] 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20013]
    def perform_signature_with_session(organization_id, signature_id, inline_object4, opts = {})
      data, _status_code, _headers = perform_signature_with_session_with_http_info(organization_id, signature_id, inline_object4, opts)
      data
    end

    # Perform a Signature with session
    # This API allows to perform one or more signatures within the same session. This way is possible, in the scenario of a simple signature for example, to perform multiple signatures using the same _one time password_. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param signature_id [Id] The **signature-id** is the uuid code that identifies a signature that has to be performed into a digital signature transaction. It is usually used in the API endpoints to perform, decline or cancel a digital signature transaction 
    # @param inline_object4 [InlineObject4] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20013, Integer, Hash)>] InlineResponse20013 data, response status code and response headers
    def perform_signature_with_session_with_http_info(organization_id, signature_id, inline_object4, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupSignaturesApi.perform_signature_with_session ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupSignaturesApi.perform_signature_with_session"
      end
      # verify the required parameter 'signature_id' is set
      if @api_client.config.client_side_validation && signature_id.nil?
        fail ArgumentError, "Missing the required parameter 'signature_id' when calling Bit4idPathgroupSignaturesApi.perform_signature_with_session"
      end
      # verify the required parameter 'inline_object4' is set
      if @api_client.config.client_side_validation && inline_object4.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object4' when calling Bit4idPathgroupSignaturesApi.perform_signature_with_session"
      end
      # resource path
      local_var_path = '/{organization-id}/signatures/{signature-id}/session-perform'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'signature-id' + '}', CGI.escape(signature_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object4) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse20013' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupSignaturesApi#perform_signature_with_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
