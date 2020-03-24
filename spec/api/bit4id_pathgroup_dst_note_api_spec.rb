=begin
#Signing Today Web

#*Signing Today* is the perfect Digital Signature Gateway. Whenever in Your workflow You need to add one or more Digital Signatures to Your document, *Signing Today* is the right choice. You prepare Your documents, *Signing Today* takes care of all the rest: send invitations (`signature tickets`) to signers, collects their signatures, send You back the signed document. Integrating *Signing Today* in Your existing applications is very easy. Just follow these API specifications and get inspired by the many examples presented hereafter. 

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for SigningTodayAPIClient::Bit4idPathgroupDSTNoteApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Bit4idPathgroupDSTNoteApi' do
  before do
    # run before each test
    @api_instance = SigningTodayAPIClient::Bit4idPathgroupDSTNoteApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Bit4idPathgroupDSTNoteApi' do
    it 'should create an instance of Bit4idPathgroupDSTNoteApi' do
      expect(@api_instance).to be_instance_of(SigningTodayAPIClient::Bit4idPathgroupDSTNoteApi)
    end
  end

  # unit tests for d_st_id_note_get
  # Retrieve the DSTNotes associated to the DST
  # This API allows to retrieve the DST Notes associated to the DST.
  # @param id The value of _the unique id_
  # @param [Hash] opts the optional parameters
  # @return [Array<DSTNote>]
  describe 'd_st_id_note_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for d_st_id_note_note_id_delete
  # Delete a DSTNote
  # This API allows to delete a DSTNote.
  # @param id The value of _the unique id_
  # @param note_id The reference of a DSTNote
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'd_st_id_note_note_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for d_st_id_note_note_id_put
  # Edit a DSTNote
  # This API allows to edit a DSTNote.
  # @param id The value of _the unique id_
  # @param note_id The reference of a DSTNote
  # @param dst_note DSTNote replacing current object.
  # @param [Hash] opts the optional parameters
  # @return [DSTNote]
  describe 'd_st_id_note_note_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for d_st_id_note_post
  # Append a new DSTNote
  # This API allows to append a new DSTNote to the DST.
  # @param id The value of _the unique id_
  # @param [Hash] opts the optional parameters
  # @option opts [InlineObject1] :inline_object1 
  # @return [DSTNote]
  describe 'd_st_id_note_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end