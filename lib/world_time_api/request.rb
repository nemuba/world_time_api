# frozen_string_literal: true

require_relative "response"
require_relative "error"
require 'httparty'

module WorldTimeApi
  module Request
    include HTTParty

    base_uri "http://worldtimeapi.org/api"

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
