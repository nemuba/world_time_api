# frozen_string_literal: true

require_relative "response"
require_relative "error"
require 'httparty'

# The WorldTimeApi module contains methods for making requests to the World Time API.
module WorldTimeApi

  # The Request module contains methods for making HTTP requests to the World Time API.
  module Request
    include HTTParty

    base_uri "http://worldtimeapi.org/api"

    # Makes an HTTP GET request to the specified URL and returns the response as a hash.
    #
    # @param url [String] The URL to make the request to.
    # @return [Hash] A hash representing the response body, or an error hash if there was a problem with the request.
    Call = ->(url) {
      begin
        response = get(url)

        return WorldTimeApi::Error["Invalid timezone"] if response.code != 200

        WorldTimeApi::Response[response]
      rescue StandardError
        WorldTimeApi::Error["Connection error"]
      end
    }
  end
end
