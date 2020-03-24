# SigningTodayAPIClient::ServiceFailureResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | One of a server-defined set of error codes. | [optional] 
**message** | **String** | A human-readable representation of the error. | [optional] 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::ServiceFailureResponse.new(code: IOException,
                                 message: Cannot connect to the datasource!)
```


