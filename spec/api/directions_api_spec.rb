=begin
#LocationIQ

#LocationIQ provides flexible enterprise-grade location based solutions. We work with developers, startups and enterprises worldwide serving billions of requests everyday. This page provides an overview of the technical aspects of our API and will help you get started.

The version of the OpenAPI document: 1.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::DirectionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DirectionsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::DirectionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DirectionsApi' do
    it 'should create an instance of DirectionsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::DirectionsApi)
    end
  end

  # unit tests for directions
  # Directions Service
  # Finds the fastest route between coordinates in the supplied order.
  # @param coordinates String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google&#39;s polyline format with precision 5
  # @param [Hash] opts the optional parameters
  # @option opts [String] :bearings Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180
  # @option opts [String] :radiuses Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double &gt;&#x3D; 0 or unlimited (default)
  # @option opts [String] :generate_hints Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String
  # @option opts [String] :approaches Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default)
  # @option opts [String] :exclude Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none.
  # @option opts [Float] :alternatives Search for alternative routes. Passing a number alternatives&#x3D;n searches for up to n alternative routes. [ true, false (default), or Number ]
  # @option opts [String] :steps Returned route steps for each route leg [ true, false (default) ]
  # @option opts [String] :annotations Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ]
  # @option opts [String] :geometries Returned route geometry format (influences overview and per step) [ polyline (default), polyline6, geojson ]
  # @option opts [String] :overview Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all. [ simplified (default), full, false ]
  # @option opts [String] :continue_straight Forces the route to keep going straight at waypoints constraining uturns there even if it would be faster. Default value depends on the profile [ default (default), true, false ]
  # @return [DirectionsDirections]
  describe 'directions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
