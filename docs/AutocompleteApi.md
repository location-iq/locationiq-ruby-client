# OpenapiClient::AutocompleteApi

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocomplete**](AutocompleteApi.md#autocomplete) | **GET** /autocomplete.php | 



## autocomplete

> Array&lt;Object&gt; autocomplete(q, normalizecity, opts)



The Autocomplete API is a variant of the Search API that returns place predictions in response to an HTTP request.  The request specifies a textual search string and optional geographic bounds.  The service can be used to provide autocomplete functionality for text-based geographic searches, by returning places such as businesses, addresses and points of interest as a user types. The Autocomplete API can match on full words as well as substrings. Applications can therefore send queries as the user types, to provide on-the-fly place predictions.

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

api_instance = OpenapiClient::AutocompleteApi.new
q = '\"Empire state\"' # String | Address to geocode
normalizecity = 1 # Integer | For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs.
opts = {
  limit: 10, # Integer | Limit the number of returned results. Default is 10.
  viewbox: '\"-132.84908,47.69382,-70.44674,30.82531\"', # String | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - `max_lon,max_lat,min_lon,min_lat` or `min_lon,min_lat,max_lon,max_lat` - are accepted in any order as long as they span a real box. 
  bounded: 1, # Integer | Restrict the results to only items contained with the viewbox
  countrycodes: '\"us\"', # String | Limit search to a list of countries.
  accept_language: '\"en\"', # String | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
  tag: '\"place\"' # String | Restricts the autocomplete search results to elements of specific OSM class and type.  Example - To restrict results to only class place and type city: tag=place:city, To restrict the results to all of OSM class place: tag=place
}

begin
  result = api_instance.autocomplete(q, normalizecity, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AutocompleteApi->autocomplete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Address to geocode | 
 **normalizecity** | **Integer**| For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs. | 
 **limit** | **Integer**| Limit the number of returned results. Default is 10. | [optional] [default to 10]
 **viewbox** | **String**| The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - &#x60;max_lon,max_lat,min_lon,min_lat&#x60; or &#x60;min_lon,min_lat,max_lon,max_lat&#x60; - are accepted in any order as long as they span a real box.  | [optional] 
 **bounded** | **Integer**| Restrict the results to only items contained with the viewbox | [optional] 
 **countrycodes** | **String**| Limit search to a list of countries. | [optional] 
 **accept_language** | **String**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **tag** | **String**| Restricts the autocomplete search results to elements of specific OSM class and type.  Example - To restrict results to only class place and type city: tag&#x3D;place:city, To restrict the results to all of OSM class place: tag&#x3D;place | [optional] 

### Return type

**Array&lt;Object&gt;**

### Authorization

[key](../README.md#key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

