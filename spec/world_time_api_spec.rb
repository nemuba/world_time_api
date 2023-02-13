require_relative "spec_helper"
require "world_time_api"

RSpec.describe WorldTimeApi do
  it "Timezones" do
    response = subject::Timezones.call
    expect(response).to be_a(Array)
  end

  it "Time" do
    response = subject::Time.call('America/Sao_Paulo')
    expect(response).to be_a(Hash)
  end

  it "Time with invalid timezone" do
    response = subject::Time.call('teste')
    expect(response).to be_a(Hash)
    expect(response[:error]).to eq('Invalid timezone')
  end

  it "ClientIp" do
    response = subject::ClientIp.call
    expect(response).to be_a(Hash)
  end
end
