# frozen_string_literal: true

require "httparty"
require_relative "world_time_api/version"
require_relative "world_time_api/request"
require_relative "world_time_api/response"
require_relative "world_time_api/error"

# A Ruby wrapper for the World Time API.
module WorldTimeApi
  # Returns a list of all timezones supported by the World Time API.
  #
  # @return [Hash] A hash representing the response body, or an error hash if there was a problem with the request.
  # @example
  #   WorldTimeApi::Timezones.call
  Timezones = -> { Request::Call["/timezone"] }

  # Returns the current time for the specified timezone.
  #
  # @param timezone [String] The timezone ID.
  # @return [Hash] A hash representing the response body, or an error hash if there was a problem with the request.
  # @example
  #   WorldTimeApi::Time.call('Europe/London')
  Time = ->(timezone) { Request::Call["/timezone/#{timezone}"] }

  # Returns the current time for the client's IP address, or for the specified IP address if provided.
  #
  # @param ip [String] (optional) The IP address to lookup.
  # @return [Hash] A hash representing the response body, or an error hash if there was a problem with the request.
  # @example
  #   WorldTimeApi::ClientIp.call('127.0.0.1')
  ClientIp = ->(ip = nil) { Request::Call["/ip#{ip ? "/#{ip}" : ""}"] }
end
