# frozen_string_literal: true

require 'json'

# A Ruby wrapper for the World Time API.
module WorldTimeApi
  # Converts the HTTParty response object into a hash.
  #
  # @param response [HTTParty::Response] The HTTParty response object to convert.
  # @return [Hash] A hash representation of the response body.
  # @example
  #   WorldTimeApi::Response.call(HTTParty.get('http://worldtimeapi.org/api/timezone/Europe/London'))
  Response = ->(response) { JSON.parse(response.body) }
end
