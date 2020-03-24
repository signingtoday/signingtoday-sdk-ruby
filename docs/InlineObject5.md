# SigningTodayAPIClient::InlineObject5

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **String** | SAML domain | 
**id_token1** | **String** | The BASE64-encoded SAML Reply in JSON | 
**id_token2** | **String** | The Hex-encoded HMAC-SHA256 of the decoded IDToken1 | 

## Code Sample

```ruby
require 'SigningTodayAPIClient'

instance = SigningTodayAPIClient::InlineObject5.new(domain: bit4id,
                                 id_token1: PHNhbWxwOlJlc3BvbnNlIHhtbG5zOnNhbWw9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphc3NlcnRpb24iIHhtbG5zOnNhbWxwPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6cHJvdG9jb2wiIElEPSJSZDkwYTY5NDg1YTdiMmMxYjM0NWFjOGQ1Y2UyZmExMzFkZmRkMzRlOSIgVmVyc2lvbj0iMi4wIiBJc3N1ZUluc3RhbnQ9IjIwMTYtMDMtMTdUMjI6NTA6MzBaIiBEZXN0aW5hdGlvbj0iaHR0cHM6Ly97c3ViZG9tYWlufS5mYWNlYm9vay5jb20vd29yay9zYW1sLnBocCI+P...,
                                 id_token2: f7bc83f430538424b13298e6aa6fb143ef4d59a14946175997479dbc2d1a3cd8)
```


