# SigningTodayAPIClient::SignatureTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **String** | Date of creation of the Digital Signature Transaction | [optional] 
**created_by** | **String** | The user created the Digital Signature Transaction | [optional] 
**documents** | [**Array&lt;Document1&gt;**](Document1.md) | The _documents_ field is an array containing document objects, where everyone of them is defined as follows  | [optional] 
**id** | **String** | The uuid code that identifies the Digital Signature Transaction | [optional] 
**not_after** | **String** | Deadline of the Digital Signature Transaction, expressed in ISO format | [optional] 
**reason** | **String** | The motivations for the cancellation may be:   - &#x60;CANNOT_DOWNLOAD_DOCUMENT&#x60;: Signing Today could not download the     document   - &#x60;INVALID_DOCUMENT&#x60;: The downloaded document is not valid   - &#x60;PROTECTED_DOCUMENT&#x60;: The document is protected by password   - &#x60;declined&#x60;: One of the documents has been refused   - &#x60;MOTIVAZIONE_ESPLICITA&#x60;: Rejected from the system with a custom     reason  | [optional] 
**status** | **String** | The Digital Signature Transaction may have the following statuses:   - &#x60;waiting&#x60;: Not all the documents has ben uploaded and validated yet   - &#x60;pending&#x60;: The DST is ready to be signed   - &#x60;performed&#x60;: The DST has been signed by all the signers   - &#x60;expired&#x60;: The DST expired before all the signers have signed it   - &#x60;cancelled&#x60;: The DST has been canceled; the motivation is in the reason  | [optional] 
**template_name** | **String** | A label to indicate the template used to create the Digital Signature Transaction | [optional] 
**title** | **String** | Title of the Digital Signature Transaction | [optional] 
**urlback** | **String** | The url for the redirection from signature tray when the Digital Signature Transaction is completed or annulled | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::SignatureTransaction.new(created: 2019-11-24T12:24:17.430Z,
                                 created_by: jdo@bit4id,
                                 documents: null,
                                 id: 737dc132-a3f0-11e9-a2a3-2a2ae2dbcce4,
                                 not_after: 2019-09-19T19:00:18.016304Z,
                                 reason: null,
                                 status: performed,
                                 template_name: Template-1,
                                 title: Signature Transaction Demo,
                                 urlback: https://signing.today/sample/home)
```


