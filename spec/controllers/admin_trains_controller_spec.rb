require "rails_helper"

RSpec.describe Admin::TrainsController, type: :controller do
    include Devise::Test::ControllerHelpers  
    let(:admin) { create(:user, :admin) }
    before do
      login_as(admin, scope: :user)
    end
  
    describe "POST #create" do
      it "crea un nuovo treno con successo" do
        post :create, params: {
          id: 1234,
          f0: "Roma Termini",
          f5: "Milano Centrale",
          hf0: "08:00",
          hf5: "10:00",
          pe: 30.0,
          pp: 50.0
        }
        
        expect(response).to redirect_to(admin_dashboard_path)
        expect(flash[:train_notice]).to eq("Treno creato con successo!")
        expect(Train.last.id).to eq(1234)
        expect(Travel.last.part).to eq("Roma Termini")
      end
    end

    describe "POST #create" do
        it "mostra errore quando il codice del treno esiste già" do
          create(:train, id: 1000)
          
          post :create, params: {
            id: 1000,
            f0: "Roma Termini",
            f5: "Milano Centrale",
            hf0: "08:00",
            hf5: "10:00",
            pe: 30.0,
            pp: 50.0
          }
          
          expect(response).to render_template(:new)
          expect(flash[:train_alert]).to eq("Errore: il codice treno già esiste.")
        end
      end

      describe "POST #create" do
        it "mostra errore quando la fermata di partenza e arrivo sono uguali" do
          post :create, params: {
            id: 1234,
            f0: "Roma Termini",
            f5: "Roma Termini",
            hf0: "08:00",
            hf5: "10:00",
            pe: 30.0,
            pp: 50.0
          }
    
          expect(response).to render_template(:new)
          expect(flash[:train_alert]).to eq("Errore: la fermata di partenza e di arrivo devono essere diverse.")
        end
      end

      describe "POST #create" do
        it "mostra errore quando l'orario di partenza è successivo a quello di arrivo" do
          post :create, params: {
            id: 1234,
            f0: "Roma Termini",
            f5: "Milano Centrale",
            hf0: "12:00",
            hf5: "10:00",
            pe: 30.0,
            pp: 50.0
          }
    
          expect(response).to render_template(:new)
          expect(flash[:train_alert]).to eq("Errore: l'orario di partenza deve essere precedente a quello di arrivo.")
        end
      end

      describe "POST #create" do
        it "mostra errore quando il prezzo Economy è maggiore o uguale a quello della Prima Classe" do
          post :create, params: {
            id: 1234,
            f0: "Roma Termini",
            f5: "Milano Centrale",
            hf0: "08:00",
            hf5: "10:00",
            pe: 50.0,
            pp: 45.0
          }
    
          expect(response).to render_template(:new)
          expect(flash[:train_alert]).to eq("Errore: il prezzo Economy deve essere inferiore al prezzo Prima Classe.")
        end
      end
  end
  