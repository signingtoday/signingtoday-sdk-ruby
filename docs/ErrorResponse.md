# SigningTodayAPIClient::ErrorResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | One of a server-defined set of error codes. | [optional] 
**message** | **String** | A human-readable representation of the error. | [optional] 
**target** | **String** | The target of the error. | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::ErrorResponse.new(code: BadArgument,
                                 message: The parameter &quot;age&quot; cannot be negative!,
                                 target: age)
```


