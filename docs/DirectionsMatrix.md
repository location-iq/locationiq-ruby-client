# LocationIQClient::DirectionsMatrix

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** |  | [optional] 
**distances** | **Array&lt;Float&gt;** |  | [optional] 
**fallback_speed_cells** | **Array&lt;Float&gt;** |  | [optional] 
**sources** | [**Array&lt;DirectionsMatrixSources&gt;**](DirectionsMatrixSources.md) |  | [optional] 
**destinations** | [**Array&lt;DirectionsMatrixSources&gt;**](DirectionsMatrixSources.md) |  | [optional] 

## Code Sample

```ruby
require 'LocationIQClient'

instance = LocationIQClient::DirectionsMatrix.new(code: null,
                                 distances: null,
                                 fallback_speed_cells: null,
                                 sources: null,
                                 destinations: null)
```


