# OpenapiClient::BalanceApi

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**balance**](BalanceApi.md#balance) | **GET** /balance.php | 



## balance

> Balance balance



The Balance API provides a count of request credits left in the user's account for the day. Balance is reset at midnight UTC everyday (00:00 UTC).

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: key
  config.api_key['key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['key'] = 'Bearer'
end

api_instance = OpenapiClient::BalanceApi.new

begin
  result = api_instance.balance
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling BalanceApi->balance: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Balance**](Balance.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

