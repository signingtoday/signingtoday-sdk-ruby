=begin
#Signing Today Web

#*Signing Today* is the perfect Digital Signature Gateway. Whenever in Your workflow You need to add one or more Digital Signatures to Your document, *Signing Today* is the right choice. You prepare Your documents, *Signing Today* takes care of all the rest: send invitations (`signature tickets`) to signers, collects their signatures, send You back the signed document. Integrating *Signing Today* in Your existing applications is very easy. Just follow these API specifications and get inspired by the many examples presented hereafter. 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module SigningTodayAPIClient
  class Bit4idPathgroupServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Consume a token to change the password
    # This API allows to change the password by consuming a token.
    # @param password_token [String] The password token issued to change password
    # @param body [String] New password associated to the account (BCrypt)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def auth_change_password_post(password_token, body, opts = {})
      auth_change_password_post_with_http_info(password_token, body, opts)
      nil
    end

    # Consume a token to change the password
    # This API allows to change the password by consuming a token.
    # @param password_token [String] The password token issued to change password
    # @param body [String] New password associated to the account (BCrypt)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def auth_change_password_post_with_http_info(password_token, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupServicesApi.auth_change_password_post ...'
      end
      # verify the required parameter 'password_token' is set
      if @api_client.config.client_side_validation && password_token.nil?
        fail ArgumentError, "Missing the required parameter 'password_token' when calling Bit4idPathgroupServicesApi.auth_change_password_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling Bit4idPathgroupServicesApi.auth_change_password_post"
      end
      # resource path
      local_var_path = '/auth/changePassword'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'passwordToken'] = password_token

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['text/plain'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupServicesApi#auth_change_password_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Request to recover own password
    # This API requests to recover the own password.
    # @param username [String] Username associated to the account
    # @param domain [String] Domain associated to the account
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def auth_password_lost_get(username, domain, opts = {})
      auth_password_lost_get_with_http_info(username, domain, opts)
      nil
    end

    # Request to recover own password
    # This API requests to recover the own password.
    # @param username [String] Username associated to the account
    # @param domain [String] Domain associated to the account
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def auth_password_lost_get_with_http_info(username, domain, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupServicesApi.auth_password_lost_get ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling Bit4idPathgroupServicesApi.auth_password_lost_get"
      end
      # verify the required parameter 'domain' is set
      if @api_client.config.client_side_validation && domain.nil?
        fail ArgumentError, "Missing the required parameter 'domain' when calling Bit4idPathgroupServicesApi.auth_password_lost_get"
      end
      # resource path
      local_var_path = '/auth/passwordLost'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'username'] = username
      query_params[:'domain'] = domain

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupServicesApi#auth_password_lost_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset a user password with superuser
    # This API allows to reset the password of a user. This is possible when the request is performed with a superuser.
    # @param username [String] Username associated to the account
    # @param domain [String] Domain associated to the account
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def auth_password_reset_get(username, domain, opts = {})
      auth_password_reset_get_with_http_info(username, domain, opts)
      nil
    end

    # Reset a user password with superuser
    # This API allows to reset the password of a user. This is possible when the request is performed with a superuser.
    # @param username [String] Username associated to the account
    # @param domain [String] Domain associated to the account
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def auth_password_reset_get_with_http_info(username, domain, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupServicesApi.auth_password_reset_get ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling Bit4idPathgroupServicesApi.auth_password_reset_get"
      end
      # verify the required parameter 'domain' is set
      if @api_client.config.client_side_validation && domain.nil?
        fail ArgumentError, "Missing the required parameter 'domain' when calling Bit4idPathgroupServicesApi.auth_password_reset_get"
      end
      # resource path
      local_var_path = '/auth/passwordReset'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'username'] = username
      query_params[:'domain'] = domain

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupServicesApi#auth_password_reset_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset your own password
    # This API allows to reset your own password knowing the previous one with a logged user.
    # @param inline_object4 [InlineObject4] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def auth_password_reset_post(inline_object4, opts = {})
      auth_password_reset_post_with_http_info(inline_object4, opts)
      nil
    end

    # Reset your own password
    # This API allows to reset your own password knowing the previous one with a logged user.
    # @param inline_object4 [InlineObject4] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def auth_password_reset_post_with_http_info(inline_object4, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupServicesApi.auth_password_reset_post ...'
      end
      # verify the required parameter 'inline_object4' is set
      if @api_client.config.client_side_validation && inline_object4.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object4' when calling Bit4idPathgroupServicesApi.auth_password_reset_post"
      end
      # resource path
      local_var_path = '/auth/passwordReset'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object4) 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupServicesApi#auth_password_reset_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get token to change password
    # This API allows to get a password token to use in order to change a password.
    # @param [Hash] opts the optional parameters
    # @return [Array<Object>]
    def auth_password_token_get(opts = {})
      data, _status_code, _headers = auth_password_token_get_with_http_info(opts)
      data
    end

    # Get token to change password
    # This API allows to get a password token to use in order to change a password.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Object>, Integer, Hash)>] Array<Object> data, response status code and response headers
    def auth_password_token_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupServicesApi.auth_password_token_get ...'
      end
      # resource path
      local_var_path = '/auth/passwordToken'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<Object>' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupServicesApi#auth_password_token_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Register or Update a SAML user
    # This API allows to register or Update a SAML user.
    # @param domain [String] SAML domain
    # @param id_token1 [String] The BASE64-encoded SAML Reply in JSON
    # @param id_token2 [String] The Hex-encoded HMAC-SHA256 of the decoded IDToken1
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def auth_saml_post(domain, id_token1, id_token2, opts = {})
      auth_saml_post_with_http_info(domain, id_token1, id_token2, opts)
      nil
    end

    # Register or Update a SAML user
    # This API allows to register or Update a SAML user.
    # @param domain [String] SAML domain
    # @param id_token1 [String] The BASE64-encoded SAML Reply in JSON
    # @param id_token2 [String] The Hex-encoded HMAC-SHA256 of the decoded IDToken1
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def auth_saml_post_with_http_info(domain, id_token1, id_token2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupServicesApi.auth_saml_post ...'
      end
      # verify the required parameter 'domain' is set
      if @api_client.config.client_side_validation && domain.nil?
        fail ArgumentError, "Missing the required parameter 'domain' when calling Bit4idPathgroupServicesApi.auth_saml_post"
      end
      # verify the required parameter 'id_token1' is set
      if @api_client.config.client_side_validation && id_token1.nil?
        fail ArgumentError, "Missing the required parameter 'id_token1' when calling Bit4idPathgroupServicesApi.auth_saml_post"
      end
      # verify the required parameter 'id_token2' is set
      if @api_client.config.client_side_validation && id_token2.nil?
        fail ArgumentError, "Missing the required parameter 'id_token2' when calling Bit4idPathgroupServicesApi.auth_saml_post"
      end
      # resource path
      local_var_path = '/auth/saml'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['domain'] = domain
      form_params['IDToken1'] = id_token1
      form_params['IDToken2'] = id_token2

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupServicesApi#auth_saml_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return the current logged in user
    # This API allows to retrieve the current logged in user.
    # @param [Hash] opts the optional parameters
    # @return [User]
    def auth_user(opts = {})
      data, _status_code, _headers = auth_user_with_http_info(opts)
      data
    end

    # Return the current logged in user
    # This API allows to retrieve the current logged in user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def auth_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupServicesApi.auth_user ...'
      end
      # resource path
      local_var_path = '/auth/user'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'User' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupServicesApi#auth_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve the App configuration
    # This API allows to get the public configuration associated to the application. 
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, Object>]
    def configuration_get(opts = {})
      data, _status_code, _headers = configuration_get_with_http_info(opts)
      data
    end

    # Retrieve the App configuration
    # This API allows to get the public configuration associated to the application. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hash<String, Object>, Integer, Hash)>] Hash<String, Object> data, response status code and response headers
    def configuration_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupServicesApi.configuration_get ...'
      end
      # resource path
      local_var_path = '/service/configuration'

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
      return_type = opts[:return_type] || 'Hash<String, Object>' 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupServicesApi#configuration_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Log out current user terminating the session
    # This API allows to Log out current user.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def logout_user(opts = {})
      logout_user_with_http_info(opts)
      nil
    end

    # Log out current user terminating the session
    # This API allows to Log out current user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def logout_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupServicesApi.logout_user ...'
      end
      # resource path
      local_var_path = '/auth/logout'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupServicesApi#logout_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the bearer token
    # This API allows to get the token needed to access other APIs through the OAuth2 authentication.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username The username in the form _username_@_domain_ where *domain* is the organization the user belongs to
    # @option opts [String] :password This is the actual password of the user
    # @option opts [String] :grant_type A parameter that indicates the type of the grant in order to perform the basic authentication
    # @return [InlineResponse200]
    def oauth_token_post(opts = {})
      data, _status_code, _headers = oauth_token_post_with_http_info(opts)
      data
    end

    # Get the bearer token
    # This API allows to get the token needed to access other APIs through the OAuth2 authentication.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username The username in the form _username_@_domain_ where *domain* is the organization the user belongs to
    # @option opts [String] :password This is the actual password of the user
    # @option opts [String] :grant_type A parameter that indicates the type of the grant in order to perform the basic authentication
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def oauth_token_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupServicesApi.oauth_token_post ...'
      end
      allowable_values = ["password"]
      if @api_client.config.client_side_validation && opts[:'grant_type'] && !allowable_values.include?(opts[:'grant_type'])
        fail ArgumentError, "invalid value for \"grant_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/oauth/token'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['username'] = opts[:'username'] if !opts[:'username'].nil?
      form_params['password'] = opts[:'password'] if !opts[:'password'].nil?
      form_params['grant_type'] = opts[:'grant_type'] if !opts[:'grant_type'].nil?

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'InlineResponse200' 

      # auth_names
      auth_names = opts[:auth_names] || ['Basic']

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupServicesApi#oauth_token_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a Resource (of service)
    # This API allows to extract thumbnails from a PDF Resource.
    # @param id [String] The value of _the unique id_
    # @param page [Integer] The page to retrieve
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The output image width
    # @return [File]
    def pdf_resource_id_thumbs_get(id, page, opts = {})
      data, _status_code, _headers = pdf_resource_id_thumbs_get_with_http_info(id, page, opts)
      data
    end

    # Retrieve a Resource (of service)
    # This API allows to extract thumbnails from a PDF Resource.
    # @param id [String] The value of _the unique id_
    # @param page [Integer] The page to retrieve
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :width The output image width
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def pdf_resource_id_thumbs_get_with_http_info(id, page, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupServicesApi.pdf_resource_id_thumbs_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling Bit4idPathgroupServicesApi.pdf_resource_id_thumbs_get"
      end
      # verify the required parameter 'page' is set
      if @api_client.config.client_side_validation && page.nil?
        fail ArgumentError, "Missing the required parameter 'page' when calling Bit4idPathgroupServicesApi.pdf_resource_id_thumbs_get"
      end
      # resource path
      local_var_path = '/pdfResource/{id}/thumbs'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = page
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/jpeg', '*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'File' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupServicesApi#pdf_resource_id_thumbs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change the password of a service user
    # This API allows to change the password of a **service user**. 
    # @param username [String] Username associated to the account
    # @param domain [String] Domain associated to the account
    # @param body [String] New password associated to the account (BCrypt)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def service_change_password_post(username, domain, body, opts = {})
      service_change_password_post_with_http_info(username, domain, body, opts)
      nil
    end

    # Change the password of a service user
    # This API allows to change the password of a **service user**. 
    # @param username [String] Username associated to the account
    # @param domain [String] Domain associated to the account
    # @param body [String] New password associated to the account (BCrypt)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def service_change_password_post_with_http_info(username, domain, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupServicesApi.service_change_password_post ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling Bit4idPathgroupServicesApi.service_change_password_post"
      end
      # verify the required parameter 'domain' is set
      if @api_client.config.client_side_validation && domain.nil?
        fail ArgumentError, "Missing the required parameter 'domain' when calling Bit4idPathgroupServicesApi.service_change_password_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling Bit4idPathgroupServicesApi.service_change_password_post"
      end
      # resource path
      local_var_path = '/service/changePassword'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'username'] = username
      query_params[:'domain'] = domain

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['text/plain'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupServicesApi#service_change_password_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sync user accounts
    # This API allows to sync user accounts.
    # @param inline_object [Array<InlineObject>] User Accounts
    # @param [Hash] opts the optional parameters
    # @return [UserSyncReport]
    def service_users_sync_post(inline_object, opts = {})
      data, _status_code, _headers = service_users_sync_post_with_http_info(inline_object, opts)
      data
    end

    # Sync user accounts
    # This API allows to sync user accounts.
    # @param inline_object [Array<InlineObject>] User Accounts
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserSyncReport, Integer, Hash)>] UserSyncReport data, response status code and response headers
    def service_users_sync_post_with_http_info(inline_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Bit4idPathgroupServicesApi.service_users_sync_post ...'
      end
      # verify the required parameter 'inline_object' is set
      if @api_client.config.client_side_validation && inline_object.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object' when calling Bit4idPathgroupServicesApi.service_users_sync_post"
      end
      # resource path
      local_var_path = '/service/users/sync'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object) 

      # return_type
      return_type = opts[:return_type] || 'UserSyncReport' 

      # auth_names
      auth_names = opts[:auth_names] || ['OAuth2']

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
        @api_client.config.logger.debug "API called: Bit4idPathgroupServicesApi#service_users_sync_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end