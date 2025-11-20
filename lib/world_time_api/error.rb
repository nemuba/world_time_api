# frozen_string_literal: true

# A Ruby wrapper for the World Time API.
module WorldTimeApi
  # Creates an error object with the specified message.
  #
  # @param message [String] The error message.
  # @return [Hash] A hash with a single key `"error"` containing the error message.
  # @example
  #   WorldTimeApi::Error.call('Invalid timezone')
  Error = ->(message) { { error: message } }
end
