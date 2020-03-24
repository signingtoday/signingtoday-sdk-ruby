# SigningTodayAPIClient::SAMLToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_not_onorafter** | **DateTime** |  | [optional] 
**surname** | **String** |  | [optional] 
**given_name** | **String** |  | [optional] 
**common_name** | **String** |  | [optional] 
**rfc822_mailbox** | **String** |  | [optional] 
**_not_before** | **DateTime** |  | [optional] 
**userid** | **String** |  | [optional] 
**mail_alternate_address** | **String** |  | [optional] 
**edu_person_org_dn** | **String** |  | [optional] 
**edu_person_principal_name** | **String** |  | [optional] 
**is_member_of** | **Array&lt;String&gt;** |  | [optional] 
**groups** | **Array&lt;String&gt;** |  | [optional] 
**display_name** | **String** |  | [optional] 
**edu_person_targeted_id** | [**SAMLTokenEduPersonTargetedID**](SAMLTokenEduPersonTargetedID.md) |  | [optional] 
**_cookies** | **String** |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::SAMLToken.new(_not_onorafter: 2019-03-01T16:46:59Z,
                                 surname: Palazzo,
                                 given_name: Vincenzo,
                                 common_name: Vincenzo Palazzo,
                                 rfc822_mailbox: vpa@bit4id.com,
                                 _not_before: 2019-03-01T16:41:29Z,
                                 userid: VP-51635,
                                 mail_alternate_address: vpa@bit4id.com,
                                 edu_person_org_dn: cc3dbbdd1e7cb592cb2ba24d461ec24656f3daa4@infn.it,
                                 edu_person_principal_name: VP-51635@infn.it,
                                 is_member_of: null,
                                 groups: [],
                                 display_name: Vincenzo Palazzo,
                                 edu_person_targeted_id: null,
                                 _cookies: null)
```


