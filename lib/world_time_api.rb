# frozen_string_literal: true

require_relative "world_time_api/version"
require_relative "world_time_api/request"

require "httparty"

# module WorldTimeAPi
module WorldTimeApi

  Timezones = -> { Request::Call["/timezone"] }

  Time = -> (timezone) { Request::Call["/timezone/#{timezone}"] }

  ClientIp = -> (ip = nil) { Request::Call["/ip#{ip ? "/#{ip}" : ''}"] }
end
