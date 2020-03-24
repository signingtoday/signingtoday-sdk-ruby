# SigningTodayAPIClient::NotificationEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**time** | **DateTime** |  | [optional] [readonly] 
**dst_id** | **String** |  | [optional] [readonly] 
**user_id** | **String** |  | [optional] [readonly] 
**dst_title** | **String** |  | [optional] 
**username** | **String** | If present limits the notification to one user account, otherwise is to be intended for all (active) user accounts (e.g. PC/devices, etc). Indeed one principal (User) could have multiple account (credentials)  | [optional] 
**email** | **String** |  | [optional] 
**event** | **String** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::NotificationEvent.new(id: 1,
                                 time: 2007-04-02T19:30:10Z,
                                 dst_id: d6bb4c8f-37bf-4900-a1e4-dd9b0939cafb,
                                 user_id: 1ca229c8-2a99-4f3e-9421-36377fd8d9e5,
                                 dst_title: Contract,
                                 username: johndoe,
                                 email: jdo@bit4id.com,
                                 event: evt_dst_status_signed)
```


