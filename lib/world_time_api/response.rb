# frozen_string_literal: true

require 'json'

# The WorldTimeApi module contains methods for making requests to the World Time API.
module WorldTimeApi

  # Converts the HTTParty response object into a hash.
  #
  # @param response [HTTParty::Response] The HTTParty response object to convert.
  # @return [Hash] A hash representation of the response body.
  Response = -> (response) { JSON.parse(response.body) }
end
