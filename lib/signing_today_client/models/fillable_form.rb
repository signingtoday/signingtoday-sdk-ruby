=begin
#Signing Today Web

#*Signing Today* is the perfect Digital Signature Gateway. Whenever in Your workflow You need to add one or more Digital Signatures to Your document, *Signing Today* is the right choice. You prepare Your documents, *Signing Today* takes care of all the rest: send invitations (`signature tickets`) to signers, collects their signatures, send You back the signed document. Integrating *Signing Today* in Your existing applications is very easy. Just follow these API specifications and get inspired by the many examples presented hereafter. 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'date'

module SigningTodayAPIClient
  # Two type of fillable exists; `SignatureForm` and `TextForm`. The former represents the association with the SignatureRequest, the latter represents any editable text form field to be filled before the signature process begins.
  class FillableForm
    # It is a reference for internal use
    attr_accessor :_instance_id

    # Id of the _form_
    attr_accessor :id

    # Id of the document
    attr_accessor :document_id

    # Type of the fill form
    attr_accessor :type

    # Position onto the X axis of the form, expressed in percentage
    attr_accessor :position_x

    # Position onto the Y axis of the form, expressed in percentage
    attr_accessor :position_y

    # Width of the form expressed in percentage
    attr_accessor :width

    # Height of the form expressed in percentage
    attr_accessor :height

    # Page of the document where the form is
    attr_accessor :page

    # Id of the signer in the sign plan
    attr_accessor :signer_id

    # **True** if the field need to be filled by the user. In case of a Signature it is **false** 
    attr_accessor :to_fill

    # True ones the form has been filled
    attr_accessor :filled

    # True if the appearance has to be hidden
    attr_accessor :invisible

    # Extra information about the form
    attr_accessor :extra_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_instance_id' => :'_instance_id',
        :'id' => :'id',
        :'document_id' => :'documentId',
        :'type' => :'type',
        :'position_x' => :'positionX',
        :'position_y' => :'positionY',
        :'width' => :'width',
        :'height' => :'height',
        :'page' => :'page',
        :'signer_id' => :'signerId',
        :'to_fill' => :'toFill',
        :'filled' => :'filled',
        :'invisible' => :'invisible',
        :'extra_data' => :'extraData'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'_instance_id' => :'Integer',
        :'id' => :'Integer',
        :'document_id' => :'Integer',
        :'type' => :'String',
        :'position_x' => :'Float',
        :'position_y' => :'Float',
        :'width' => :'Float',
        :'height' => :'Float',
        :'page' => :'Integer',
        :'signer_id' => :'Integer',
        :'to_fill' => :'Boolean',
        :'filled' => :'Boolean',
        :'invisible' => :'Boolean',
        :'extra_data' => :'Hash<String, Object>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SigningTodayAPIClient::FillableForm` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SigningTodayAPIClient::FillableForm`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'_instance_id')
        self._instance_id = attributes[:'_instance_id']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'document_id')
        self.document_id = attributes[:'document_id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'position_x')
        self.position_x = attributes[:'position_x']
      end

      if attributes.key?(:'position_y')
        self.position_y = attributes[:'position_y']
      end

      if attributes.key?(:'width')
        self.width = attributes[:'width']
      end

      if attributes.key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end

      if attributes.key?(:'signer_id')
        self.signer_id = attributes[:'signer_id']
      end

      if attributes.key?(:'to_fill')
        self.to_fill = attributes[:'to_fill']
      end

      if attributes.key?(:'filled')
        self.filled = attributes[:'filled']
      end

      if attributes.key?(:'invisible')
        self.invisible = attributes[:'invisible']
      end

      if attributes.key?(:'extra_data')
        if (value = attributes[:'extra_data']).is_a?(Hash)
          self.extra_data = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _instance_id == o._instance_id &&
          id == o.id &&
          document_id == o.document_id &&
          type == o.type &&
          position_x == o.position_x &&
          position_y == o.position_y &&
          width == o.width &&
          height == o.height &&
          page == o.page &&
          signer_id == o.signer_id &&
          to_fill == o.to_fill &&
          filled == o.filled &&
          invisible == o.invisible &&
          extra_data == o.extra_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [_instance_id, id, document_id, type, position_x, position_y, width, height, page, signer_id, to_fill, filled, invisible, extra_data].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        SigningTodayAPIClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
