# frozen_string_literal: true

require_relative "response"
require_relative "error"
require "httparty"

# A Ruby wrapper for the World Time API.
module WorldTimeApi
  # A module for making HTTP requests to the World Time API.
  module Request
    include HTTParty

    base_uri "http://worldtimeapi.org/api"

    # Makes an HTTP GET request to the specified URL and returns the response as a hash.
    # Retries up to 3 times in case of connection errors.
    #
    # @param url [String] The URL to make the request to.
    # @param max_retries [Integer] Maximum number of retry attempts (default: 3).
    # @return [Hash] A hash representing the response body, or an error hash if there was a problem with the request.
    # @example
    #   WorldTimeApi::Request::Call.call('/timezone/Europe/London')
    Call = lambda { |url, max_retries: 3|
      retries = 0

      begin
        response = get(url)

        return WorldTimeApi::Error["Invalid timezone"] if response.code != 200

        WorldTimeApi::Response[response]
      rescue StandardError
        retries += 1
        if retries < max_retries
          sleep(0.5 * retries) # Exponential backoff: 0.5s, 1s, 1.5s
          puts "Retrying request to #{url} (attempt #{retries + 1})..."
          retry
        end
        WorldTimeApi::Error["Connection error"]
      end
    }
  end
end
