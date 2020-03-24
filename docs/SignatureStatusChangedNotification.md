# SigningTodayAPIClient::SignatureStatusChangedNotification

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** |  | [optional] 
**group** | **Integer** |  | [optional] 
**action** | **String** |  | [optional] 
**dst** | [**SignatureStatusChangedNotificationDst**](SignatureStatusChangedNotificationDst.md) |  | [optional] 
**fillable_form** | [**FillableForm**](FillableForm.md) |  | [optional] 
**signature** | **Integer** |  | [optional] 
**signer** | **String** |  | [optional] 
**document** | [**SignatureStatusChangedNotificationDocument**](SignatureStatusChangedNotificationDocument.md) |  | [optional] 
**automatic** | **Boolean** |  | [optional] 
**page** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::SignatureStatusChangedNotification.new(status: null,
                                 group: null,
                                 action: null,
                                 dst: null,
                                 fillable_form: null,
                                 signature: null,
                                 signer: admin.test.com,
                                 document: null,
                                 automatic: false,
                                 page: null)
```


