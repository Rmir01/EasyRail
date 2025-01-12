require "rails_helper"

RSpec.feature "Ticket Purchase", type: :feature do
  let(:user) { create(:user) } # FactoryBot finto utente

  before do
    # Simula login
    login_as(user, scope: :user)
  end

  scenario "User successfully purchases a ticket", js: true do
    visit root_path

    fill_in "part", with: "Milano Centrale"
    fill_in "arr", with: "Torino Porta Nuova"

    check "onOff"
    sleep 1
    fill_in "dataAnd", with: "03-03"
    fill_in "dataRit", with: "04-04"

    within("#passSelector") do
      click_button "+"
     click_button "+"
    end

    fill_in "cs", with: "LABASSI25"
    sleep 1

    click_button "cerca"
    sleep 1

    expect(page).to have_content("Seleziona")
    economy_links = all('a', text: /Economy/)
    if economy_links.any?
      economy_links.sample.click
    else
      raise "Nessun link Economy trovato!"
    end
    sleep 1
    expect(page).to have_content("Seleziona")
    prima_links = all('a', text: /Prima/)
    if prima_links.any?
      prima_links.sample.click
    else
      raise "Nessun link Prima trovato!"
    end
    sleep 1

    expect(page).to have_content("Riepilogo")
    fill_in "cardholderName", with: "Mario Rossi"
    fill_in "cardNumber", with: "1234567890"
    fill_in "cardExpiry", with: "12/30"
    fill_in "cardCvc", with: "123"
    sleep 3
    click_button "Conferma acquisto"

    # Step 9: Verifica la conferma dell'acquisto
    sleep 1
    expect(page).to have_content("PNR:")
    sleep 2
    click_link "Vai all'Area Personale"
    sleep 3
  end
end
