# frozen_string_literal: true

# The WorldTimeApi module contains methods for making requests to the World Time API.
module WorldTimeApi

  # Creates an error object with the specified message.
  #
  # @param message [String] The error message.
  # @return [Hash] A hash with a single key `"error"` containing the error message.
  Error = -> (message) { { error: message } }
end
