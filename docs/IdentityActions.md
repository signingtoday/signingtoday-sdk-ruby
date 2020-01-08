# SigningTodayAPIClient::IdentityActions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**send_otp** | **String** | The url to get a one time password | [optional] 
**sign** | **String** | The url to sign a document | [optional] 
**update_certificate** | **String** | The url to update the certificate | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::IdentityActions.new(send_otp: https://signing.today/sample/provider/get-one-time-pass,
                                 sign: https://signing.today/sample/provider/sign-document,
                                 update_certificate: https://signing.today/sample/provider/update-certificate)
```


