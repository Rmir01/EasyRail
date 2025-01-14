require 'rails_helper'

RSpec.feature "AdminManagement", type: :feature do
    let(:admin) { create(:user, :admin) }
  before do
    login_as(admin, scope: :user)
  end

  scenario "Admin crea un nuovo treno con successo" do
    # Passo 1: Visita l'area profilo
    visit user_profile_path

    # Passo 2: Clicca su AREA FUNZIONALITÁ AMMINISTRATORE
    click_link "AREA FUNZIONALITÁ AMMINISTRATORE"
    expect(page).to have_content("Crea un nuovo itinerario")

    # Passo 3: Clicca su Crea Treno
    click_link "Crea Treno"
    expect(page).to have_content("Crea un nuovo Treno")

    # Passo 4: Compila il form per creare un treno
    fill_in "Codice Treno", with: "6452"
    fill_in "Fermata di Partenza", with: "Roma Termini"
    fill_in "Fermata di Arrivo", with: "Milano Centrale"
    fill_in "Orario di Partenza", with: "05:35"
    fill_in "Orario di Arrivo", with: "09:45"
    fill_in "Prezzo Economy", with: "45"
    fill_in "Prezzo Prima Classe", with: "60"

    # Passo 5: Premere su "Crea Treno"
    click_button "Crea Treno"

    # Verifica che il treno e il viaggio siano stati creati
    expect(page).to have_content("Treno creato con successo!")
    expect(Train.last.id).to eq(6452)
    expect(Travel.last.cod).to eq(6452)
    expect(Travel.last.part).to eq("Roma Termini")
    expect(Travel.last.dest).to eq("Milano Centrale")
  end
end
