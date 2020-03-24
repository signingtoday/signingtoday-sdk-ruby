# SigningTodayAPIClient::SMS

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_name** | **String** | Last name of the identity | [optional] 
**first_name** | **String** | First name of the identity | [optional] 
**birth_date** | **Date** | Birthdate of the identity | [optional] 
**birth_country** | **String** | Country of birth of the identity | [optional] 
**email** | **String** | Email address associated to the identity | [optional] 
**phone_mobile** | **String** | Phone number associated to the identity | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::SMS.new(last_name: Doe,
                                 first_name: John,
                                 birth_date: Sun Jun 13 00:00:00 GMT 6,
                                 birth_country: Italy,
                                 email: jdo@example.com,
                                 phone_mobile: +391234567890)
```


