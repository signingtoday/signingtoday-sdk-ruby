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
  class Bit4idPathgroupIdentitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Associate an appearance to an identity
    # Associate a signature appearance to an already existing identity through an url to an image. This appearance will be displayed on the document after the signature. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param inline_object [InlineObject] 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2011]
    def associate_appearance(organization_id, identity_id, inline_object, opts = {})
      data, _status_code, _headers = associate_appearance_with_http_info(organization_id, identity_id, inline_object, opts)
      data
    end

    # Associate an appearance to an identity
    # Associate a signature appearance to an already existing identity through an url to an image. This appearance will be displayed on the document after the signature. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param inline_object [InlineObject] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2011, Integer, Hash)>] InlineResponse2011 data, response status code and response headers
    def associate_appearance_with_http_info(organization_id, identity_id, inline_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupIdentitiesApi.associate_appearance ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupIdentitiesApi.associate_appearance"
      end
      # verify the required parameter 'identity_id' is set
      if @api_client.config.client_side_validation && identity_id.nil?
        fail ArgumentError, "Missing the required parameter 'identity_id' when calling Bit4idPathgroupIdentitiesApi.associate_appearance"
      end
      # verify the required parameter 'inline_object' is set
      if @api_client.config.client_side_validation && inline_object.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object' when calling Bit4idPathgroupIdentitiesApi.associate_appearance"
      end
      # resource path
      local_var_path = '/{organization-id}/identities/{identity-id}/appearance'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'identity-id' + '}', CGI.escape(identity_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2011' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupIdentitiesApi#associate_appearance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Associate to an user an already existing identity
    # Associate to an user of the organization an already existing identity of a provider. The _provider_data_ field is an object and is different for each provider. The minimum set of information to provide as provider_data is the following:   - **aruba**     - _auth_domain_ : string     - _username_ : string     - _password_ : string   - **aruba-auto**     - _auth_domain_ : string     - _username_ : string     - _password_ : string   - **infocert**     - _username_ : string     - _password_ : string   - **namirial**     - _id_titolare_ : string     - _id_otp_ : string     - _username_ : string     - _password_ : string 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param user_id [Id] The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
    # @param identity_association [IdentityAssociation] Provider data to associate
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2011]
    def associate_identity(organization_id, user_id, identity_association, opts = {})
      data, _status_code, _headers = associate_identity_with_http_info(organization_id, user_id, identity_association, opts)
      data
    end

    # Associate to an user an already existing identity
    # Associate to an user of the organization an already existing identity of a provider. The _provider_data_ field is an object and is different for each provider. The minimum set of information to provide as provider_data is the following:   - **aruba**     - _auth_domain_ : string     - _username_ : string     - _password_ : string   - **aruba-auto**     - _auth_domain_ : string     - _username_ : string     - _password_ : string   - **infocert**     - _username_ : string     - _password_ : string   - **namirial**     - _id_titolare_ : string     - _id_otp_ : string     - _username_ : string     - _password_ : string 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param user_id [Id] The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
    # @param identity_association [IdentityAssociation] Provider data to associate
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2011, Integer, Hash)>] InlineResponse2011 data, response status code and response headers
    def associate_identity_with_http_info(organization_id, user_id, identity_association, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupIdentitiesApi.associate_identity ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupIdentitiesApi.associate_identity"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling Bit4idPathgroupIdentitiesApi.associate_identity"
      end
      # verify the required parameter 'identity_association' is set
      if @api_client.config.client_side_validation && identity_association.nil?
        fail ArgumentError, "Missing the required parameter 'identity_association' when calling Bit4idPathgroupIdentitiesApi.associate_identity"
      end
      # resource path
      local_var_path = '/{organization-id}/users/{user-id}/wallet'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(identity_association) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2011' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupIdentitiesApi#associate_identity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an identity from token
    # This API allows to create an identity from a token. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param create_identityby_token [CreateIdentitybyToken] Body of the request to create an identity from a token
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2012]
    def create_token_from_identity(organization_id, create_identityby_token, opts = {})
      data, _status_code, _headers = create_token_from_identity_with_http_info(organization_id, create_identityby_token, opts)
      data
    end

    # Create an identity from token
    # This API allows to create an identity from a token. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param create_identityby_token [CreateIdentitybyToken] Body of the request to create an identity from a token
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2012, Integer, Hash)>] InlineResponse2012 data, response status code and response headers
    def create_token_from_identity_with_http_info(organization_id, create_identityby_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupIdentitiesApi.create_token_from_identity ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupIdentitiesApi.create_token_from_identity"
      end
      # verify the required parameter 'create_identityby_token' is set
      if @api_client.config.client_side_validation && create_identityby_token.nil?
        fail ArgumentError, "Missing the required parameter 'create_identityby_token' when calling Bit4idPathgroupIdentitiesApi.create_token_from_identity"
      end
      # resource path
      local_var_path = '/{organization-id}/identities/create/token'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(create_identityby_token) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2012' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupIdentitiesApi#create_token_from_identity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the appearance of an identity
    # This API allows to delete the appearance associated to an identity. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2011]
    def delete_appearance(organization_id, identity_id, opts = {})
      data, _status_code, _headers = delete_appearance_with_http_info(organization_id, identity_id, opts)
      data
    end

    # Delete the appearance of an identity
    # This API allows to delete the appearance associated to an identity. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2011, Integer, Hash)>] InlineResponse2011 data, response status code and response headers
    def delete_appearance_with_http_info(organization_id, identity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupIdentitiesApi.delete_appearance ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupIdentitiesApi.delete_appearance"
      end
      # verify the required parameter 'identity_id' is set
      if @api_client.config.client_side_validation && identity_id.nil?
        fail ArgumentError, "Missing the required parameter 'identity_id' when calling Bit4idPathgroupIdentitiesApi.delete_appearance"
      end
      # resource path
      local_var_path = '/{organization-id}/identities/{identity-id}/appearance'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'identity-id' + '}', CGI.escape(identity_id.to_s))

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
      return_type = opts[:return_type] || 'InlineResponse2011' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupIdentitiesApi#delete_appearance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an enrollment request
    # This API allows to delete an enrollment request. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param enrollment_id [Id] The **enrollment-id** is the uuid code that identifies a specific enrollment request 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2012]
    def delete_enrollment_request(organization_id, enrollment_id, opts = {})
      data, _status_code, _headers = delete_enrollment_request_with_http_info(organization_id, enrollment_id, opts)
      data
    end

    # Delete an enrollment request
    # This API allows to delete an enrollment request. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param enrollment_id [Id] The **enrollment-id** is the uuid code that identifies a specific enrollment request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2012, Integer, Hash)>] InlineResponse2012 data, response status code and response headers
    def delete_enrollment_request_with_http_info(organization_id, enrollment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupIdentitiesApi.delete_enrollment_request ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupIdentitiesApi.delete_enrollment_request"
      end
      # verify the required parameter 'enrollment_id' is set
      if @api_client.config.client_side_validation && enrollment_id.nil?
        fail ArgumentError, "Missing the required parameter 'enrollment_id' when calling Bit4idPathgroupIdentitiesApi.delete_enrollment_request"
      end
      # resource path
      local_var_path = '/{organization-id}/identity-requests/{enrollment-id}'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'enrollment-id' + '}', CGI.escape(enrollment_id.to_s))

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
      return_type = opts[:return_type] || 'InlineResponse2012' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupIdentitiesApi#delete_enrollment_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an identity
    # This API allows to delete an identity of an user. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2006]
    def delete_identity(organization_id, identity_id, opts = {})
      data, _status_code, _headers = delete_identity_with_http_info(organization_id, identity_id, opts)
      data
    end

    # Delete an identity
    # This API allows to delete an identity of an user. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2006, Integer, Hash)>] InlineResponse2006 data, response status code and response headers
    def delete_identity_with_http_info(organization_id, identity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupIdentitiesApi.delete_identity ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupIdentitiesApi.delete_identity"
      end
      # verify the required parameter 'identity_id' is set
      if @api_client.config.client_side_validation && identity_id.nil?
        fail ArgumentError, "Missing the required parameter 'identity_id' when calling Bit4idPathgroupIdentitiesApi.delete_identity"
      end
      # resource path
      local_var_path = '/{organization-id}/identities/{identity-id}'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'identity-id' + '}', CGI.escape(identity_id.to_s))

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
      return_type = opts[:return_type] || 'InlineResponse2006' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupIdentitiesApi#delete_identity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information about an enrollment request
    # This API allows to get information about an enrollment request. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param enrollment_id [Id] The **enrollment-id** is the uuid code that identifies a specific enrollment request 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2007]
    def get_enrollment_request(organization_id, enrollment_id, opts = {})
      data, _status_code, _headers = get_enrollment_request_with_http_info(organization_id, enrollment_id, opts)
      data
    end

    # Get information about an enrollment request
    # This API allows to get information about an enrollment request. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param enrollment_id [Id] The **enrollment-id** is the uuid code that identifies a specific enrollment request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2007, Integer, Hash)>] InlineResponse2007 data, response status code and response headers
    def get_enrollment_request_with_http_info(organization_id, enrollment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupIdentitiesApi.get_enrollment_request ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupIdentitiesApi.get_enrollment_request"
      end
      # verify the required parameter 'enrollment_id' is set
      if @api_client.config.client_side_validation && enrollment_id.nil?
        fail ArgumentError, "Missing the required parameter 'enrollment_id' when calling Bit4idPathgroupIdentitiesApi.get_enrollment_request"
      end
      # resource path
      local_var_path = '/{organization-id}/identity-requests/{enrollment-id}'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'enrollment-id' + '}', CGI.escape(enrollment_id.to_s))

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
      return_type = opts[:return_type] || 'InlineResponse2007' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupIdentitiesApi#get_enrollment_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information about an identity
    # This API allows to get all the information of an identity. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :where_order The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on
    # @return [InlineResponse2005]
    def get_identity(organization_id, identity_id, opts = {})
      data, _status_code, _headers = get_identity_with_http_info(organization_id, identity_id, opts)
      data
    end

    # Get information about an identity
    # This API allows to get all the information of an identity. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_id [Id] The **identity-id** is the uuid code that identifies an identity in the wallet of an user. It is, as well, used to restrict the requested operation to the scope of that identity 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :where_order The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on
    # @return [Array<(InlineResponse2005, Integer, Hash)>] InlineResponse2005 data, response status code and response headers
    def get_identity_with_http_info(organization_id, identity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupIdentitiesApi.get_identity ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupIdentitiesApi.get_identity"
      end
      # verify the required parameter 'identity_id' is set
      if @api_client.config.client_side_validation && identity_id.nil?
        fail ArgumentError, "Missing the required parameter 'identity_id' when calling Bit4idPathgroupIdentitiesApi.get_identity"
      end
      # resource path
      local_var_path = '/{organization-id}/identities/{identity-id}'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'identity-id' + '}', CGI.escape(identity_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:return_type] || 'InlineResponse2005' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupIdentitiesApi#get_identity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enumerate the enrollment requests of an organization
    # This API allows to enumerate the enrollment requests of an organization. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :where_provider Returns the identity requests that have been issued by the specified provider
    # @option opts [String] :where_user Returns the identity requests of the specified user, searched by its id
    # @option opts [String] :where_first_name Returns the identity requests of the users that have the specified first name
    # @option opts [String] :where_last_name Returns the identity requests of the users that have the specified last name
    # @option opts [String] :where_registered_by Returns the identity requests registered by this user
    # @option opts [String] :where_fiscal_code Returns the identity requests have the specified fiscal code
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display (default to 100)
    # @option opts [String] :where_order The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on
    # @return [InlineResponse2003]
    def list_enrollment_requests(organization_id, opts = {})
      data, _status_code, _headers = list_enrollment_requests_with_http_info(organization_id, opts)
      data
    end

    # Enumerate the enrollment requests of an organization
    # This API allows to enumerate the enrollment requests of an organization. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :where_provider Returns the identity requests that have been issued by the specified provider
    # @option opts [String] :where_user Returns the identity requests of the specified user, searched by its id
    # @option opts [String] :where_first_name Returns the identity requests of the users that have the specified first name
    # @option opts [String] :where_last_name Returns the identity requests of the users that have the specified last name
    # @option opts [String] :where_registered_by Returns the identity requests registered by this user
    # @option opts [String] :where_fiscal_code Returns the identity requests have the specified fiscal code
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display
    # @option opts [String] :where_order The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on
    # @return [Array<(InlineResponse2003, Integer, Hash)>] InlineResponse2003 data, response status code and response headers
    def list_enrollment_requests_with_http_info(organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupIdentitiesApi.list_enrollment_requests ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupIdentitiesApi.list_enrollment_requests"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Bit4idPathgroupIdentitiesApi.list_enrollment_requests, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Bit4idPathgroupIdentitiesApi.list_enrollment_requests, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/{organization-id}/identity-requests'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'where_provider'] = opts[:'where_provider'] if !opts[:'where_provider'].nil?
      query_params[:'where_user'] = opts[:'where_user'] if !opts[:'where_user'].nil?
      query_params[:'where_first_name'] = opts[:'where_first_name'] if !opts[:'where_first_name'].nil?
      query_params[:'where_last_name'] = opts[:'where_last_name'] if !opts[:'where_last_name'].nil?
      query_params[:'where_registered_by'] = opts[:'where_registered_by'] if !opts[:'where_registered_by'].nil?
      query_params[:'where_fiscal_code'] = opts[:'where_fiscal_code'] if !opts[:'where_fiscal_code'].nil?
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
      return_type = opts[:return_type] || 'InlineResponse2003' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupIdentitiesApi#list_enrollment_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enumerate the identities of an organization
    # This API allows to enumerate all the users of an organization. It is possible to filter the data using the supported _django lookups_. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :where_provider Returns the identities that have been issued by the specified provider
    # @option opts [String] :where_user Returns the identities of the specified user, searched by its id
    # @option opts [String] :where_first_name Returns the identities of the users that have the specified first name
    # @option opts [String] :where_last_name Returns the identities of the users that have the specified last name
    # @option opts [String] :where_registered_by Returns the identities registered by this user
    # @option opts [String] :where_fiscal_code Returns the identities that have the specified fiscal code
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display (default to 100)
    # @option opts [String] :where_order The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on
    # @return [InlineResponse2002]
    def list_identities(organization_id, opts = {})
      data, _status_code, _headers = list_identities_with_http_info(organization_id, opts)
      data
    end

    # Enumerate the identities of an organization
    # This API allows to enumerate all the users of an organization. It is possible to filter the data using the supported _django lookups_. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :where_provider Returns the identities that have been issued by the specified provider
    # @option opts [String] :where_user Returns the identities of the specified user, searched by its id
    # @option opts [String] :where_first_name Returns the identities of the users that have the specified first name
    # @option opts [String] :where_last_name Returns the identities of the users that have the specified last name
    # @option opts [String] :where_registered_by Returns the identities registered by this user
    # @option opts [String] :where_fiscal_code Returns the identities that have the specified fiscal code
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display
    # @option opts [String] :where_order The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on
    # @return [Array<(InlineResponse2002, Integer, Hash)>] InlineResponse2002 data, response status code and response headers
    def list_identities_with_http_info(organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupIdentitiesApi.list_identities ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupIdentitiesApi.list_identities"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Bit4idPathgroupIdentitiesApi.list_identities, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Bit4idPathgroupIdentitiesApi.list_identities, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/{organization-id}/identities'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'where_provider'] = opts[:'where_provider'] if !opts[:'where_provider'].nil?
      query_params[:'where_user'] = opts[:'where_user'] if !opts[:'where_user'].nil?
      query_params[:'where_first_name'] = opts[:'where_first_name'] if !opts[:'where_first_name'].nil?
      query_params[:'where_last_name'] = opts[:'where_last_name'] if !opts[:'where_last_name'].nil?
      query_params[:'where_registered_by'] = opts[:'where_registered_by'] if !opts[:'where_registered_by'].nil?
      query_params[:'where_fiscal_code'] = opts[:'where_fiscal_code'] if !opts[:'where_fiscal_code'].nil?
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
      return_type = opts[:return_type] || 'InlineResponse2002' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupIdentitiesApi#list_identities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the enrollments of an user
    # This API allows to list all the enrollments of an user. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param user_id [Id] The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display (default to 100)
    # @option opts [String] :where_order The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on
    # @return [InlineResponse2003]
    def list_user_enrollments(organization_id, user_id, opts = {})
      data, _status_code, _headers = list_user_enrollments_with_http_info(organization_id, user_id, opts)
      data
    end

    # List the enrollments of an user
    # This API allows to list all the enrollments of an user. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param user_id [Id] The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display
    # @option opts [String] :where_order The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on
    # @return [Array<(InlineResponse2003, Integer, Hash)>] InlineResponse2003 data, response status code and response headers
    def list_user_enrollments_with_http_info(organization_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupIdentitiesApi.list_user_enrollments ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupIdentitiesApi.list_user_enrollments"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling Bit4idPathgroupIdentitiesApi.list_user_enrollments"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Bit4idPathgroupIdentitiesApi.list_user_enrollments, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Bit4idPathgroupIdentitiesApi.list_user_enrollments, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/{organization-id}/users/{user-id}/identity-requests'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:return_type] || 'InlineResponse2003' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupIdentitiesApi#list_user_enrollments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enumerate the identities of an user
    # This API allows to enumerate all the identities of an user, which are located in its wallet. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param user_id [Id] The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display (default to 100)
    # @option opts [String] :where_order The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on
    # @return [InlineResponse2002]
    def list_user_identities(organization_id, user_id, opts = {})
      data, _status_code, _headers = list_user_identities_with_http_info(organization_id, user_id, opts)
      data
    end

    # Enumerate the identities of an user
    # This API allows to enumerate all the identities of an user, which are located in its wallet. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param user_id [Id] The **user-id** is the uuid code that identifies a user of an organization. It is used as a path parameter to restrict the requested operation to the scope of that user 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Restricts the search to the chosen page
    # @option opts [Integer] :count Sets the number of users per page to display
    # @option opts [String] :where_order The **where_order** query parameter takes one or more values separated by a comma and a space. The result will be ordered by the first value (ascending order is implied; a \&quot;**-**\&quot; in front of the value indicates descending order), then the second value and so on
    # @return [Array<(InlineResponse2002, Integer, Hash)>] InlineResponse2002 data, response status code and response headers
    def list_user_identities_with_http_info(organization_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupIdentitiesApi.list_user_identities ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupIdentitiesApi.list_user_identities"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling Bit4idPathgroupIdentitiesApi.list_user_identities"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 100
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Bit4idPathgroupIdentitiesApi.list_user_identities, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling Bit4idPathgroupIdentitiesApi.list_user_identities, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/{organization-id}/users/{user-id}/wallet'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'user-id' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:return_type] || 'InlineResponse2002' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupIdentitiesApi#list_user_identities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Renew an Identity
    # This API allows to renew an Identity of a user. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param enrollment_id [Id] The **enrollment-id** is the uuid code that identifies a specific enrollment request 
    # @param inline_object1 [InlineObject1] 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2007]
    def renew_identity(organization_id, enrollment_id, inline_object1, opts = {})
      data, _status_code, _headers = renew_identity_with_http_info(organization_id, enrollment_id, inline_object1, opts)
      data
    end

    # Renew an Identity
    # This API allows to renew an Identity of a user. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param enrollment_id [Id] The **enrollment-id** is the uuid code that identifies a specific enrollment request 
    # @param inline_object1 [InlineObject1] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2007, Integer, Hash)>] InlineResponse2007 data, response status code and response headers
    def renew_identity_with_http_info(organization_id, enrollment_id, inline_object1, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupIdentitiesApi.renew_identity ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupIdentitiesApi.renew_identity"
      end
      # verify the required parameter 'enrollment_id' is set
      if @api_client.config.client_side_validation && enrollment_id.nil?
        fail ArgumentError, "Missing the required parameter 'enrollment_id' when calling Bit4idPathgroupIdentitiesApi.renew_identity"
      end
      # verify the required parameter 'inline_object1' is set
      if @api_client.config.client_side_validation && inline_object1.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object1' when calling Bit4idPathgroupIdentitiesApi.renew_identity"
      end
      # resource path
      local_var_path = '/{organization-id}/identity-requests/{enrollment-id}/renew'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s)).sub('{' + 'enrollment-id' + '}', CGI.escape(enrollment_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object1) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2007' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupIdentitiesApi#renew_identity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Submit an enrollment request
    # This API allows to submit an enrollment request. The user of the request will be created if it does not exists already. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_request [IdentityRequest] The enrollment request to submit
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2007]
    def request_enrollment(organization_id, identity_request, opts = {})
      data, _status_code, _headers = request_enrollment_with_http_info(organization_id, identity_request, opts)
      data
    end

    # Submit an enrollment request
    # This API allows to submit an enrollment request. The user of the request will be created if it does not exists already. 
    # @param organization_id [String] The **organization-id** represents an organization that is included in the SigninToday application, also know as **slug** and it is used as a path parameter to restrict the asked functionality to the specified organization 
    # @param identity_request [IdentityRequest] The enrollment request to submit
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2007, Integer, Hash)>] InlineResponse2007 data, response status code and response headers
    def request_enrollment_with_http_info(organization_id, identity_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupIdentitiesApi.request_enrollment ...'
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling Bit4idPathgroupIdentitiesApi.request_enrollment"
      end
      # verify the required parameter 'identity_request' is set
      if @api_client.config.client_side_validation && identity_request.nil?
        fail ArgumentError, "Missing the required parameter 'identity_request' when calling Bit4idPathgroupIdentitiesApi.request_enrollment"
      end
      # resource path
      local_var_path = '/{organization-id}/enroll'.sub('{' + 'organization-id' + '}', CGI.escape(organization_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(identity_request) 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse2007' 

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupIdentitiesApi#request_enrollment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
