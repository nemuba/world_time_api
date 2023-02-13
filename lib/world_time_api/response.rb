# frozen_string_literal: true

require 'json'

module WorldTimeApi
  Response = -> (response) { JSON.parse(response.body) }
end
