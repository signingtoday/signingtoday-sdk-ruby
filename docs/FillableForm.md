# SigningTodayAPIClient::FillableForm

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_instance_id** | **Integer** | It is a reference for internal use | [optional] [readonly] 
**id** | **Integer** | Id of the _form_ | [optional] 
**document_id** | **Integer** | Id of the document | [optional] 
**type** | **String** | Type of the fill form | [optional] 
**position_x** | **Float** | Position onto the X axis of the form, expressed in percentage | [optional] 
**position_y** | **Float** | Position onto the Y axis of the form, expressed in percentage | [optional] 
**width** | **Float** | Width of the form expressed in percentage | [optional] 
**height** | **Float** | Height of the form expressed in percentage | [optional] 
**page** | **Integer** | Page of the document where the form is | [optional] 
**signer_id** | **Integer** | Id of the signer in the sign plan | [optional] 
**to_fill** | **Boolean** | **True** if the field need to be filled by the user. In case of a Signature it is **false**  | [optional] 
**filled** | **Boolean** | True ones the form has been filled | [optional] 
**invisible** | **Boolean** | True if the appearance has to be hidden | [optional] 
**extra_data** | **Hash&lt;String, Object&gt;** | Extra information about the form | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::FillableForm.new(_instance_id: 1,
                                 id: 2,
                                 document_id: 3,
                                 type: SignatureForm,
                                 position_x: 100.00,
                                 position_y: 58.14,
                                 width: 10.1,
                                 height: 5.66,
                                 page: 1,
                                 signer_id: 1,
                                 to_fill: true,
                                 filled: false,
                                 invisible: true,
                                 extra_data: {&quot;signatureRequestId&quot;:1})
```


