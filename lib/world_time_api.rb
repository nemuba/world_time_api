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

  # Returns a list of all timezones for a given area.
  #
  # @param area [String] The area (e.g., 'Europe').
  # @return [Hash] Hash with the response body or error hash.
  # @example
  #   WorldTimeApi::AreaTimezones.call('Europe')
  AreaTimezones = ->(area) { Request::Call["/timezone/#{area}"] }

  # Returns a list of all timezones for a given area and location.
  #
  # @param area [String] The area (e.g., 'America').
  # @param location [String] The location (e.g., 'Sao_Paulo').
  # @return [Hash] Hash with the response body or error hash.
  # @example
  #   WorldTimeApi::LocationTimezones.call('America', 'Sao_Paulo')
  LocationTimezones = ->(area, location) { Request::Call["/timezone/#{area}/#{location}"] }

  # Returns the current time for a given area, location, and region.
  #
  # @param area [String] The area (e.g., 'America').
  # @param location [String] The location (e.g., 'Argentina').
  # @param region [String] The region (e.g., 'Salta').
  # @return [Hash] Hash with the response body or error hash.
  # @example
  #   WorldTimeApi::RegionTime.call('America', 'Argentina', 'Salta')
  RegionTime = ->(area, location, region) { Request::Call["/timezone/#{area}/#{location}/#{region}"] }

  # Returns a list of all timezones in plain text format.
  #
  # @return [Hash] Hash with the response body as plain text or error hash.
  # @example
  #   WorldTimeApi::TimezonesTxt.call
  TimezonesTxt = -> { Request::Call["/timezone.txt"] }

  # Returns a list of all timezones for a given area in plain text format.
  #
  # @param area [String] The area (e.g., 'Europe').
  # @return [Hash] Hash with the response body as plain text or error hash.
  # @example
  #   WorldTimeApi::AreaTimezonesTxt.call('Europe')
  AreaTimezonesTxt = ->(area) { Request::Call["/timezone/#{area}.txt"] }

  # Returns a list of all timezones for a given area and location in plain text format.
  #
  # @param area [String] The area (e.g., 'America').
  # @param location [String] The location (e.g., 'Sao_Paulo').
  # @return [Hash] Hash with the response body as plain text or error hash.
  # @example
  #   WorldTimeApi::LocationTimezonesTxt.call('America', 'Sao_Paulo')
  LocationTimezonesTxt = ->(area, location) { Request::Call["/timezone/#{area}/#{location}.txt"] }

  # Returns the current time for a given area, location, and region in plain text format.
  #
  # @param area [String] The area (e.g., 'America').
  # @param location [String] The location (e.g., 'Argentina').
  # @param region [String] The region (e.g., 'Salta').
  # @return [Hash] Hash with the response body as plain text or error hash.
  # @example
  #   WorldTimeApi::RegionTimeTxt.call('America', 'Argentina', 'Salta')
  RegionTimeTxt = ->(area, location, region) { Request::Call["/timezone/#{area}/#{location}/#{region}.txt"] }

  # Returns the current time for the client's IP address in plain text format, or for the specified IP address if provided.
  #
  # @param ip [String] (optional) The IP address to lookup.
  # @return [Hash] Hash with the response body as plain text or error hash.
  # @example
  #   WorldTimeApi::ClientIpTxt.call('127.0.0.1')
  ClientIpTxt = ->(ip = nil) { Request::Call["/ip#{ip ? "/#{ip}" : ""}.txt"] }
end
