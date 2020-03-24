=begin
#Signing Today Web

#*Signing Today* is the perfect Digital Signature Gateway. Whenever in Your workflow You need to add one or more Digital Signatures to Your document, *Signing Today* is the right choice. You prepare Your documents, *Signing Today* takes care of all the rest: send invitations (`signature tickets`) to signers, collects their signatures, send You back the signed document. Integrating *Signing Today* in Your existing applications is very easy. Just follow these API specifications and get inspired by the many examples presented hereafter. 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module SigningTodayAPIClient
  class RobotApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Edit the Robot configuration
    # This API allows to edit the Robot configuration. 
    # @param robot_configuration [RobotConfiguration] RobotConfiguration.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username The _username_ associated to the account
    # @option opts [String] :domain The _domain_ associated to the account
    # @return [nil]
    def robot_configuration_put(robot_configuration, opts = {})
      robot_configuration_put_with_http_info(robot_configuration, opts)
      nil
    end

    # Edit the Robot configuration
    # This API allows to edit the Robot configuration. 
    # @param robot_configuration [RobotConfiguration] RobotConfiguration.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username The _username_ associated to the account
    # @option opts [String] :domain The _domain_ associated to the account
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def robot_configuration_put_with_http_info(robot_configuration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RobotApi.robot_configuration_put ...'
      end
      # verify the required parameter 'robot_configuration' is set
      if @api_client.config.client_side_validation && robot_configuration.nil?
        fail ArgumentError, "Missing the required parameter 'robot_configuration' when calling RobotApi.robot_configuration_put"
      end
      # resource path
      local_var_path = '/robot/configuration'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'username'] = opts[:'username'] if !opts[:'username'].nil?
      query_params[:'domain'] = opts[:'domain'] if !opts[:'domain'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(robot_configuration) 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RobotApi#robot_configuration_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end