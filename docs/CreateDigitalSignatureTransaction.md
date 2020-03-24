# SigningTodayAPIClient::CreateDigitalSignatureTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | Title of the _Digital Signature Transaction_ | [optional] 
**documents** | [**Array&lt;CreateDocument&gt;**](CreateDocument.md) | The document or documents of the _DST_ | [optional] 
**status** | **String** | Status of the _DST_ | [optional] 
**expires_at** | **DateTime** | Date of expiration of the _DST_ | [optional] 
**tags** | **Array&lt;String&gt;** | An array of tags for the DST. In such way is possible to tag in the same way some DSTs in order to keep them organized and been easy to find them through the custom search | [optional] 
**template** | **Boolean** | True if the _DST_ has been created from a template | [optional] 
**public_template** | **Boolean** | Indicates if a public template has been used to create the DST or not | [optional] 
**cc_groups** | **Array&lt;String&gt;** | Name of groups that are informed about the DST. | [optional] 
**cc_users** | **Array&lt;String&gt;** | UUIDs of the users that are informed about the DST. | [optional] 
**urgent** | **Boolean** | True if the DST is flagged as urgent | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::CreateDigitalSignatureTransaction.new(title: Real estate sales contract transaction,
                                 documents: null,
                                 status: toSign,
                                 expires_at: 2007-04-25T12:00Z,
                                 tags: null,
                                 template: false,
                                 public_template: false,
                                 cc_groups: null,
                                 cc_users: null,
                                 urgent: false)
```


