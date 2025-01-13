require "rails_helper"

RSpec.describe TravelsController, type: :controller do
  include Devise::Test::ControllerHelpers

  let(:user) { create(:user) } # FactoryBot finto utente

  describe "GET #search" do
    it "returns a successful response" do
      get :search, params: { part: "Roma Termini", arr: "Milano Centrale", dataAnd: "2025-03-03", pass: 1, cs: "LABASSI25" }
      expect(response).to have_http_status(:success)
    end

    it "assigns @travels with the correct data" do
      sign_in user
      # factory
      train = create(:train)
      travel = create(:travel)
      get :search, params: { part: train.f0, arr: train.f5, dataAnd: "2025-03-03", pass: 1 }
      expect(assigns(:travels)).to include(travel)
    end
  end

  describe "GET #payment" do
    it "redirects to confirmation after successful payment" do
      sign_in user
      train = create(:train) # necessario per FOREIGN KEY
      travel = create(:travel)
      post :payment, params: {
            andata_cod: travel.cod,
            andata_part: travel.part,
            andata_dest: travel.dest,
            dataAnd: "2025-03-03",
            pass: 1,
            prezzoAnd: travel.pe,
            cs: "" }
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #confirmed_purchase" do
    it "creates a new ticket after successful payment" do
      sign_in user
      train = create(:train)
      travel = create(:travel)
      expect {
        get :confirmed_purchase, params: {
            andata_cod: travel.cod,
            andata_part: travel.part,
            andata_dest: travel.dest,
            dataAnd: "2025-03-03",
            prezzoAnd: travel.pe,
            pass: 1 }
      }.to change(Ticket, :count).by(1)
    end

    it "assigns @ticket with the correct data" do
      sign_in user
      train = create(:train)
      travel = create(:travel)
      get :confirmed_purchase, params: {
          andata_cod: travel.cod,
          andata_part: travel.part,
          andata_dest: travel.dest,
            dataAnd: "2025-03-03",
            prezzoAnd: travel.pe,
            pass: 1
       }
      ticket = create(:ticket)
      expect(ticket.cod).to eq(travel.cod)
      expect(ticket.part).to eq(travel.part)
      expect(ticket.dest).to eq(travel.dest)
      expect(ticket.price).to eq(travel.pe)
    end
  end
end
