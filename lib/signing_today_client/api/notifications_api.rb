=begin
#Signing Today Web

#*Signing Today* is the perfect Digital Signature Gateway. Whenever in Your workflow You need to add one or more Digital Signatures to Your document, *Signing Today* is the right choice. You prepare Your documents, *Signing Today* takes care of all the rest: send invitations (`signature tickets`) to signers, collects their signatures, send You back the signed document. Integrating *Signing Today* in Your existing applications is very easy. Just follow these API specifications and get inspired by the many examples presented hereafter. 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module SigningTodayAPIClient
  class NotificationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Clear Notifications for a DST
    # This API notifies that a user consumed all active notifications for a DST.
    # @param id [String] The value of _the unique id_
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def notifications_dst_id_delete(id, opts = {})
      notifications_dst_id_delete_with_http_info(id, opts)
      nil
    end

    # Clear Notifications for a DST
    # This API notifies that a user consumed all active notifications for a DST.
    # @param id [String] The value of _the unique id_
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def notifications_dst_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationsApi.notifications_dst_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling NotificationsApi.notifications_dst_id_delete"
      end
      # resource path
      local_var_path = '/notifications/dst/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#notifications_dst_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get latest DST Notifications
    # This APIs allows to get latest user Notifications for DSTs sorted desc by time.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :top A number of results to return. Applied after **$skip** 
    # @option opts [Integer] :skip An offset into the collection of results
    # @option opts [Boolean] :count If true, the server includes the count of all the items in the response 
    # @return [NotificationsResponse]
    def notifications_dsts_get(opts = {})
      data, _status_code, _headers = notifications_dsts_get_with_http_info(opts)
      data
    end

    # Get latest DST Notifications
    # This APIs allows to get latest user Notifications for DSTs sorted desc by time.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :top A number of results to return. Applied after **$skip** 
    # @option opts [Integer] :skip An offset into the collection of results
    # @option opts [Boolean] :count If true, the server includes the count of all the items in the response 
    # @return [Array<(NotificationsResponse, Integer, Hash)>] NotificationsResponse data, response status code and response headers
    def notifications_dsts_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationsApi.notifications_dsts_get ...'
      end
      # resource path
      local_var_path = '/notifications/dsts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'$top'] = opts[:'top'] if !opts[:'top'].nil?
      query_params[:'$skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'$count'] = opts[:'count'] if !opts[:'count'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'NotificationsResponse' 

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
        @api_client.config.logger.debug "API called: NotificationsApi#notifications_dsts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Clear a registered push notification token
    # This API deregister a deviceId from the push notifications.
    # @param device_id [String] The _deviceId_ to deregister
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def notifications_push_token_delete(device_id, opts = {})
      notifications_push_token_delete_with_http_info(device_id, opts)
      nil
    end

    # Clear a registered push notification token
    # This API deregister a deviceId from the push notifications.
    # @param device_id [String] The _deviceId_ to deregister
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def notifications_push_token_delete_with_http_info(device_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationsApi.notifications_push_token_delete ...'
      end
      # verify the required parameter 'device_id' is set
      if @api_client.config.client_side_validation && device_id.nil?
        fail ArgumentError, "Missing the required parameter 'device_id' when calling NotificationsApi.notifications_push_token_delete"
      end
      # resource path
      local_var_path = '/notifications/push-token'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'deviceId'] = device_id

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotificationsApi#notifications_push_token_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Register a token for push notifications
    # This API allows to register a token for push notifications. Only trusted deviceId can be registered. 
    # @param inline_object6 [InlineObject6] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def notifications_push_token_post(inline_object6, opts = {})
      notifications_push_token_post_with_http_info(inline_object6, opts)
      nil
    end

    # Register a token for push notifications
    # This API allows to register a token for push notifications. Only trusted deviceId can be registered. 
    # @param inline_object6 [InlineObject6] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def notifications_push_token_post_with_http_info(inline_object6, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotificationsApi.notifications_push_token_post ...'
      end
      # verify the required parameter 'inline_object6' is set
      if @api_client.config.client_side_validation && inline_object6.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object6' when calling NotificationsApi.notifications_push_token_post"
      end
      # resource path
      local_var_path = '/notifications/push-token'

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
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object6) 

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
        @api_client.config.logger.debug "API called: NotificationsApi#notifications_push_token_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end