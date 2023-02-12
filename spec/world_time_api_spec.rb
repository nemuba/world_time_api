require_relative "spec_helper"
require "world_time_api"

RSpec.describe WorldTimeApi do
  it "#timezones" do
    response = subject.timezones
    expect(response).to be_a(Array)
  end

  it "#time" do
    response = subject.time('America/Sao_Paulo')
    expect(response).to be_a(Hash)
  end

  it "#time_zone invalid" do
    response = subject.time('teste')
    expect(response).to eq("Invalid Zone Name")
  end

  it "#client_ip" do
    response = subject.client_ip
    expect(response).to be_a(Hash)
  end
end
