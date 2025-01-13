require 'rails_helper'

RSpec.describe "Routing for Travels", type: :routing do
  it "routes GET /travels/search to travels#search" do
    expect(get: "/travels/search").to route_to(controller: "travels", action: "search")
  end

  it "routes GET /travels/payment to travels#payment" do
    expect(get: "/travels/payment").to route_to(controller: "travels", action: "payment")
  end

  it "routes POST /travels/confirmed_purchase to travels#confirmed_purchase" do
    expect(post: "/travels/confirmed_purchase").to route_to(controller: "travels", action: "confirmed_purchase")
  end
end
