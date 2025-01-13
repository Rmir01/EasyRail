require 'rails_helper'

RSpec.describe User, type: :model do
  describe "associations" do
    it "should have many tickets" do
      user = create(:user)
      # foreign key ticket.cod references travel.cod, travel.cod references train.id
      train = create(:train)
      travel = create(:travel)
      ticket = create(:ticket, email: user.email)

      expect(user.tickets).to include(ticket)
    end
  end
end
