require 'rails_helper'

RSpec.describe User, type: :model do
    describe "#admin?" do
      it "returns true if the user is an admin" do
        admin_user = create(:user, admin: true) # FactoryBot genera un utente con admin: true
        expect(admin_user.admin?).to be true
      end
  
      it "returns false if the user is not an admin" do
        normal_user = create(:user, admin: false) # FactoryBot genera un utente con admin: false
        expect(normal_user.admin?).to be false
      end
      it "is false by default" do
        user = create(:user) # Crea un utente senza specificare il valore di admin
        expect(user.admin).to be false
      end
    end
  end
  
  
  