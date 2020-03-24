# SigningTodayAPIClient::DigitalSignatureTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The uuid code that identifies the Digital Signature Transaction | [optional] [readonly] 
**domain** | **String** | The _domain_ is the Organization which a user or a DST belongs | [optional] 
**title** | **String** | Title of the Digital Signature Transaction | [optional] 
**replaces** | **String** | The _DST_ which this one replaces | [optional] [readonly] 
**replaced_by** | **String** | The _DST_ which has replaces the current one | [optional] [readonly] 
**created_by_user** | **String** | The user created the Digital Signature Transaction | [optional] [readonly] 
**created_at** | **DateTime** | Date of creation of the Digital Signature Transaction | [optional] [readonly] 
**documents** | [**Array&lt;Document&gt;**](Document.md) | The _documents_ field is an array containing document objects, where everyone of them is defined as follows  | [optional] 
**published_at** | **DateTime** | The _date-time_ the DST has been published | [optional] [readonly] 
**expires_at** | **DateTime** | Indicates when the DST will expire | [optional] [readonly] 
**resources** | [**Array&lt;LFResource&gt;**](LFResource.md) | An array of resources attached to the _DST_, each one defined as follows | [optional] 
**signatures** | [**Array&lt;Signature&gt;**](Signature.md) | An array of signatures, each one defined as follows | [optional] 
**status** | **String** | Status of the _Digital Signature Transaction_ | [optional] [readonly] 
**error_message** | **String** | The explication of the occurred error | [optional] 
**deleted_at** | **DateTime** | Indicates when the _DST_ has been deleted | [optional] [readonly] 
**tags** | **Array&lt;String&gt;** | An array of tags for the _DST_. In such way is possible to tag in the same way some _DSTs_ in order to keep them organized and been easy to find them through the custom search | [optional] 
**template** | **Boolean** | Indicates if a template has been used to create the DST or not | [optional] 
**public_template** | **Boolean** | Indicates if a public template has been used to create the DST or not | [optional] 
**extra_data** | **Hash&lt;String, Object&gt;** | Extra information about the _DST_ | [optional] 
**visible_to** | **Array&lt;String&gt;** | UUIDs of the users to which the DST is visible | [optional] 
**cc_groups** | **Array&lt;String&gt;** | Name of groups that are informed about the DST | [optional] 
**cc_users** | **Array&lt;String&gt;** | UUIDs of the users that are informed about the DST | [optional] 
**urgent** | **Boolean** | True if the DST is flagged as urgent | [optional] 
**updated_at** | **DateTime** | Indicates the last update of the DST, such as the performing of a signature | [optional] [readonly] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::DigitalSignatureTransaction.new(id: d9b4df92-cf85-48dc-a2de-955f518a2992,
                                 domain: bit4id,
                                 title: Real estate sales contract transaction,
                                 replaces: 0d563aea-e39b-42a5-ad9b-b4d06b379696,
                                 replaced_by: a4f0cd5b-e49a-4692-a846-4455110eda74,
                                 created_by_user: e6419924-fd1d-4c42-9fa2-88023461f5df,
                                 created_at: 2007-04-02T19:30:10Z,
                                 documents: null,
                                 published_at: 2007-04-05T11:10:42Z,
                                 expires_at: 2007-04-25T12:00Z,
                                 resources: null,
                                 signatures: null,
                                 status: published,
                                 error_message: null,
                                 deleted_at: 2007-04-02T19:30:10Z,
                                 tags: null,
                                 template: false,
                                 public_template: false,
                                 extra_data: {&quot;st_uuid&quot;:&quot;d6ebb1ed-73a4-45ba-b33a-7db8a6cdd882&quot;},
                                 visible_to: null,
                                 cc_groups: null,
                                 cc_users: null,
                                 urgent: false,
                                 updated_at: 2007-04-02T19:30:10Z)
```


