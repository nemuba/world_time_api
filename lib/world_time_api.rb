# frozen_string_literal: true

require_relative "world_time_api/version"
require "httparty"

# module WorldTimeAPi
module WorldTimeApi
  include HTTParty

  base_uri "http://worldtimeapi.org/api"

  def self.timezones
    response = get("/timezone")
    return "Consult Error" if response.code != 200

    response.parsed_response
  rescue StandardError
    "Error of connection"
  end

  def self.time(zone_name)
    response = get("/timezone/#{zone_name}")
    return "Invalid Zone Name" if response.code != 200

    response.parsed_response
  rescue StandardError
    "Error of connection"
  end

  def self.client_ip(ip = nil)
    response = ip.nil? ? get("/ip") : get("/ip/#{ip}")
    return "Invalid IP" if response.code != 200

    response.parsed_response
  rescue StandardError
    "Error of connection"
  end
end
