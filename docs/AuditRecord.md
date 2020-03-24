# SigningTodayAPIClient::AuditRecord

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_instance_id** | **Integer** | It is a reference for internal use | [optional] [readonly] 
**at** | **DateTime** |  | [optional] 
**event** | **String** |  | [optional] 
**signer** | [**SignerRecord**](SignerRecord.md) |  | [optional] 
**value** | **String** |  | [optional] 
**dst_id** | **String** |  | [optional] 
**document_id** | **Integer** |  | [optional] 
**fillable_form_id** | **Integer** |  | [optional] 
**signature_request_id** | **Integer** |  | [optional] 
**note_id** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::AuditRecord.new(_instance_id: 1,
                                 at: 2020-01-17T07:26Z,
                                 event: stage_signed,
                                 signer: null,
                                 value: utente registrato John Doe (jdo@bit4id.com) ha pubblicato la DST &quot;Contratto&quot; (aeaa6c62-8b59-4fac-9419-8e9a95aea410)
La DST contiene i documenti:
- &quot;Contratto Preliminare&quot; con compilatori [John Doe (jdo@bit4id.com)] e firmatari [Adam Smith (adam.smith@email.com)],
                                 dst_id: 00f462e8-333c-45d6-bdef-95797cc1a2a9,
                                 document_id: 2,
                                 fillable_form_id: 3,
                                 signature_request_id: 1,
                                 note_id: 2)
```


