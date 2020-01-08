# SigningTodayAPIClient::AutomaticSignature

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**password** | **String** | This is the _password_ to enable the automatic signature. Every automatic signer has its own password, to provide as body during the performance of an automatic signature  | [optional] [default to &#39;bit4idtest&#39;]

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::AutomaticSignature.new(password: bit4idtest)
```


