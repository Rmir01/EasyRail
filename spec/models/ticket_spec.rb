require 'rails_helper'

RSpec.describe Ticket, type: :model do
  describe "associations" do
    it { should belong_to(:user).with_foreign_key(:email).with_primary_key(:email) }
  end
end
