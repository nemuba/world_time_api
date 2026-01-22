# frozen_string_literal: true

require_relative "spec_helper"
require "world_time_api"

RSpec.describe WorldTimeApi do
  it "Timezones" do
    response = subject::Timezones.call
    expect(response).to be_a(Array)
  end

  it "Time" do
    response = subject::Time.call("America/Sao_Paulo")
    expect(response).to be_a(Hash)
  end

  it "Time with invalid timezone" do
    response = subject::Time.call("teste")
    expect(response).to be_a(Hash)
    expect(response[:error]).to eq("Invalid timezone")
  end

  it "ClientIp" do
    response = subject::ClientIp.call
    expect(response).to be_a(Hash)
  end

  it "AreaTimezones" do
    response = subject::AreaTimezones.call("Europe")
    expect(response).to be_a(Array)
  end

  it "LocationTimezones" do
    response = subject::LocationTimezones.call("America", "Sao_Paulo")
    expect(response).to be_a(Array).or be_a(Hash)
  end

  it "RegionTime" do
    response = subject::RegionTime.call("America", "Argentina", "Salta")
    expect(response).to be_a(Hash)
  end

  it "TimezonesTxt" do
    response = subject::TimezonesTxt.call
    expect(response).to be_a(Hash)
    expect(response.values.first).to be_a(String)
  end

  it "AreaTimezonesTxt" do
    response = subject::AreaTimezonesTxt.call("Europe")
    expect(response).to be_a(Hash)
    expect(response.values.first).to be_a(String)
  end

  it "LocationTimezonesTxt" do
    response = subject::LocationTimezonesTxt.call("America", "Sao_Paulo")
    expect(response).to be_a(Hash)
    expect(response.values.first).to be_a(String)
  end

  it "RegionTimeTxt" do
    response = subject::RegionTimeTxt.call("America", "Argentina", "Salta")
    expect(response).to be_a(Hash)
    expect(response.values.first).to be_a(String)
  end

  it "ClientIpTxt" do
    response = subject::ClientIpTxt.call
    expect(response).to be_a(Hash)
    expect(response.values.first).to be_a(String)
  end
end
