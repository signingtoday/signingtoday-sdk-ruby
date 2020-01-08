# SigningTodayAPIClient::SMS

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**birth_country** | **String** | Country of birth of the identity | [optional] 
**birth_date** | **Date** | Birthdate of the identity | [optional] 
**email** | **String** | Email address associated to the identity | [optional] 
**first_name** | **String** | First name of the identity | [optional] 
**last_name** | **String** | Last name of the identity | [optional] 
**phone_mobile** | **String** | Phone number associated to the identity | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::SMS.new(birth_country: Italy,
                                 birth_date: null,
                                 email: jdo@example.com,
                                 first_name: John,
                                 last_name: Doe,
                                 phone_mobile: +391234567890)
```


