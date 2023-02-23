# frozen_string_literal: true

require "httparty"
require_relative "world_time_api/version"
require_relative "world_time_api/request"
require_relative "world_time_api/response"
require_relative "world_time_api/error"

# The WorldTimeApi module contains methods for making requests to the World Time API.
module WorldTimeApi

  # Returns a list of all timezones supported by the World Time API.
  #
  # @return [WorldTimeApi::Response] The API response.
  Timezones = -> { Request::Call["/timezone"] }

  # Returns the current time for the specified timezone.
  #
  # @param timezone [String] The timezone ID.
  # @return [WorldTimeApi::Response] The API response.
  Time = -> (timezone) { Request::Call["/timezone/#{timezone}"] }

  # Returns the current time for the client's IP address, or for the specified IP address if provided.
  #
  # @param ip [String] (optional) The IP address to lookup.
  # @return [WorldTimeApi::Response] The API response.
  ClientIp = -> (ip = nil) { Request::Call["/ip#{ip ? "/#{ip}" : ''}"] }
end
