=begin
#Signing Today Web

#*Signing Today* is the perfect Digital Signature Gateway. Whenever in Your workflow You need to add one or more Digital Signatures to Your document, *Signing Today* is the right choice. You prepare Your documents, *Signing Today* takes care of all the rest: send invitations (`signature tickets`) to signers, collects their signatures, send You back the signed document. Integrating *Signing Today* in Your existing applications is very easy. Just follow these API specifications and get inspired by the many examples presented hereafter. 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module SigningTodayAPIClient
  class DSTNoteApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve the DSTNotes associated to the DST
    # This API allows to retrieve the DST Notes associated to the DST.
    # @param id [String] The value of _the unique id_
    # @param [Hash] opts the optional parameters
    # @return [Array<DSTNote>]
    def d_st_id_note_get(id, opts = {})
      data, _status_code, _headers = d_st_id_note_get_with_http_info(id, opts)
      data
    end

    # Retrieve the DSTNotes associated to the DST
    # This API allows to retrieve the DST Notes associated to the DST.
    # @param id [String] The value of _the unique id_
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<DSTNote>, Integer, Hash)>] Array<DSTNote> data, response status code and response headers
    def d_st_id_note_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DSTNoteApi.d_st_id_note_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DSTNoteApi.d_st_id_note_get"
      end
      # resource path
      local_var_path = '/DST/{id}/note'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Array<DSTNote>' 

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
        @api_client.config.logger.debug "API called: DSTNoteApi#d_st_id_note_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a DSTNote
    # This API allows to delete a DSTNote.
    # @param id [String] The value of _the unique id_
    # @param note_id [Integer] The reference of a DSTNote
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def d_st_id_note_note_id_delete(id, note_id, opts = {})
      d_st_id_note_note_id_delete_with_http_info(id, note_id, opts)
      nil
    end

    # Delete a DSTNote
    # This API allows to delete a DSTNote.
    # @param id [String] The value of _the unique id_
    # @param note_id [Integer] The reference of a DSTNote
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def d_st_id_note_note_id_delete_with_http_info(id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DSTNoteApi.d_st_id_note_note_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DSTNoteApi.d_st_id_note_note_id_delete"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling DSTNoteApi.d_st_id_note_note_id_delete"
      end
      # resource path
      local_var_path = '/DST/{id}/note/{noteId}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        @api_client.config.logger.debug "API called: DSTNoteApi#d_st_id_note_note_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a DSTNote
    # This API allows to edit a DSTNote.
    # @param id [String] The value of _the unique id_
    # @param note_id [Integer] The reference of a DSTNote
    # @param dst_note [DSTNote] DSTNote replacing current object.
    # @param [Hash] opts the optional parameters
    # @return [DSTNote]
    def d_st_id_note_note_id_put(id, note_id, dst_note, opts = {})
      data, _status_code, _headers = d_st_id_note_note_id_put_with_http_info(id, note_id, dst_note, opts)
      data
    end

    # Edit a DSTNote
    # This API allows to edit a DSTNote.
    # @param id [String] The value of _the unique id_
    # @param note_id [Integer] The reference of a DSTNote
    # @param dst_note [DSTNote] DSTNote replacing current object.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DSTNote, Integer, Hash)>] DSTNote data, response status code and response headers
    def d_st_id_note_note_id_put_with_http_info(id, note_id, dst_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DSTNoteApi.d_st_id_note_note_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DSTNoteApi.d_st_id_note_note_id_put"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling DSTNoteApi.d_st_id_note_note_id_put"
      end
      # verify the required parameter 'dst_note' is set
      if @api_client.config.client_side_validation && dst_note.nil?
        fail ArgumentError, "Missing the required parameter 'dst_note' when calling DSTNoteApi.d_st_id_note_note_id_put"
      end
      # resource path
      local_var_path = '/DST/{id}/note/{noteId}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(dst_note) 

      # return_type
      return_type = opts[:return_type] || 'DSTNote' 

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
        @api_client.config.logger.debug "API called: DSTNoteApi#d_st_id_note_note_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Append a new DSTNote
    # This API allows to append a new DSTNote to the DST.
    # @param id [String] The value of _the unique id_
    # @param [Hash] opts the optional parameters
    # @option opts [InlineObject1] :inline_object1 
    # @return [DSTNote]
    def d_st_id_note_post(id, opts = {})
      data, _status_code, _headers = d_st_id_note_post_with_http_info(id, opts)
      data
    end

    # Append a new DSTNote
    # This API allows to append a new DSTNote to the DST.
    # @param id [String] The value of _the unique id_
    # @param [Hash] opts the optional parameters
    # @option opts [InlineObject1] :inline_object1 
    # @return [Array<(DSTNote, Integer, Hash)>] DSTNote data, response status code and response headers
    def d_st_id_note_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DSTNoteApi.d_st_id_note_post ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DSTNoteApi.d_st_id_note_post"
      end
      # resource path
      local_var_path = '/DST/{id}/note'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'inline_object1']) 

      # return_type
      return_type = opts[:return_type] || 'DSTNote' 

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
        @api_client.config.logger.debug "API called: DSTNoteApi#d_st_id_note_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
