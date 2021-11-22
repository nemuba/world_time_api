# frozen_string_literal: true

require_relative "world_time_api/version"
require "httparty"

# module WorldTimeAPi
module WorldTimeApi
  include HTTParty

  base_uri "http://worldtimeapi.org/api/timezone"

  def self.timezones
    response = get("/")
    return "Consult Error" if response.code != 200

    response
  rescue Net::OpenTimeout
    "Error time out connection"
  end

  def self.time(zone_name)
    response = get("/#{zone_name}")
    return "Invalid Zone Name" if response.code != 200

    response
  rescue Net::OpenTimeout
    "Error time out connection"
  end
end
