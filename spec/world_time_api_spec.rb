require_relative "spec_helper"
require "world_time_api"

RSpec.describe WorldTimeApi do
  it "#timezones" do
    response = subject.timezones
    expect(response.code).to eq(200)
    expect(response.parsed_response).to be_a(Array)
  end

  it "#time" do
    response = subject.time('America/Sao_Paulo')
    expect(response.code).to eq(200)
    expect(response.parsed_response).to be_a(Hash)
  end

  it "#time_zone invalid" do
    response = subject.time('teste')
    expect(response).to eq("Invalid Zone Name")
  end
end
